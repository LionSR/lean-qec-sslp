# run_search_multi.py
import os
from typing import List, Optional, Dict
from sslp_search_multi import (
    search_grid_multi, save_hits_json, save_hits_csv_summary, _load_jsonl,
    save_logical_expressions_markdown, save_logical_expressions_latex
)
from sslp_weight import save_weight_enumerators_latex

# ===== CONFIG =====
N_LIST: List[int] = [4, 5, 6]
M_LIST: List[int] = list(range(2, 21))
K_LIST: List[int] = [2, 3, 4]

MAX_HITS_PER_PAIR: Optional[int] = None
REQUIRE_COPRIME_SM: bool = False

OUT_DIR = "outputs_multi"
RESUME: bool = False
# ===================

def per_k_paths(K: int) -> Dict[str, str]:
    base = os.path.join(OUT_DIR, f"K{K}")
    paths = {
        "dir": base,
        "json": os.path.join(base, "codes_all_details_multi.json"),
        "csv": os.path.join(base, "codes_summary_multi.csv"),
        "jsonl": os.path.join(base, "codes_all_details_multi.jsonl"),
        "ckpt": os.path.join(base, "search_checkpoint.json"),
        "logical_md": os.path.join(base, "codes_logical_expressions.md"),
        "logical_tex": os.path.join(base, "codes_logical_expressions.tex"),
        "enum_tex": os.path.join(base, "weight_enumerators.tex"),
    }
    os.makedirs(base, exist_ok=True)
    return paths

if __name__ == "__main__":
    os.makedirs(OUT_DIR, exist_ok=True)

    print(f"[Grid Search Multi] n_list={N_LIST}, m_list={M_LIST}, K_list={K_LIST}, "
          f"max_hits_per_pair={MAX_HITS_PER_PAIR}, require_coprime_sm={REQUIRE_COPRIME_SM}, resume={RESUME}")

    all_hits_across_K: List[dict] = []

    for K in K_LIST:
        P = per_k_paths(K)

        print(f"\n===== Running for K={K} =====")
        _ = search_grid_multi(
            N_LIST, M_LIST, K,
            max_hits_per_pair=MAX_HITS_PER_PAIR,
            require_coprime_sm=REQUIRE_COPRIME_SM,
            resume=RESUME,
            ckpt_path=(P["ckpt"] if RESUME else None),
            jsonl_path=P["jsonl"],
        )

        hits_k = _load_jsonl(P["jsonl"])
        all_hits_across_K.extend(hits_k)

        save_hits_json(hits_k, P["json"])
        save_hits_csv_summary(hits_k, P["csv"])
        save_logical_expressions_markdown(hits_k, P["logical_md"])
        save_logical_expressions_latex(hits_k, P["logical_tex"])
        save_weight_enumerators_latex(hits_k, P["enum_tex"],
                                      title=rf"Shor--Laflamme Weight Enumerators (K={K})")

    if len(K_LIST) > 1:
        OUT_ALLK_JSON = os.path.join(OUT_DIR, "codes_all_details_multi_allK.json")
        OUT_ALLK_CSV  = os.path.join(OUT_DIR, "codes_summary_multi_allK.csv")
        OUT_ALLK_ENUM_TEX = os.path.join(OUT_DIR, "weight_enumerators_allK.tex")

        save_hits_json(all_hits_across_K, OUT_ALLK_JSON)
        save_hits_csv_summary(all_hits_across_K, OUT_ALLK_CSV)
        save_weight_enumerators_latex(all_hits_across_K, OUT_ALLK_ENUM_TEX,
                                      title=r"Shor--Laflamme Weight Enumerators (All K)")

    print("[Done]")
