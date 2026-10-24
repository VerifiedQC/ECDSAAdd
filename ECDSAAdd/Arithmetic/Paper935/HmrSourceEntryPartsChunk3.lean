import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryFAfter : Arena := s6Step15EntryFBefore
def s6Step15EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step15EntryFFresh : List Wire := []
theorem s6Step15EntryF_distinct : (s6Step15EntryFRow.sign::s6Step15EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryF_owned : (s6Step15EntryFRow.sign::s6Step15EntryFRow.payload).toFinset⊆s6Step15EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryF_reserved : s6Step15EntryFBefore.reserve s6Step15EntryFFresh.toFinset=some s6Step15EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryFFresh,arenaWires]
  · norm_num [s6Step15EntryFBefore,s6Step15EntryFFresh,arenaWires]
  · simp only [s6Step15EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step15EntryF_checked : planRowResizeLog s6Step15EntryFBefore s6Step15EntryFRow 256 s6Step15EntryFFresh=
    some (s6Step15EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step15EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryFBefore s6Step15EntryFAfter s6Step15EntryFRow 256 s6Step15EntryFFresh
    s6Step15EntryF_distinct s6Step15EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryF_reserved
  have rowEq : WindowRow.mk (s6Step15EntryFRow.payload++s6Step15EntryFFresh) s6Step15EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryGBefore : Arena := s6Step15EntryFBefore
def s6Step15EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step15EntryGFresh : List Wire := [862]
theorem s6Step15EntryG_distinct : (s6Step15EntryGRow.sign::s6Step15EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryG_owned : (s6Step15EntryGRow.sign::s6Step15EntryGRow.payload).toFinset⊆s6Step15EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryG_reserved : s6Step15EntryGBefore.reserve s6Step15EntryGFresh.toFinset=some s6Step15EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryGFresh,arenaWires]
  · norm_num [s6Step15EntryGBefore,s6Step15EntryFBefore,s6Step15EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step15EntryGAfter,s6Step15EntryGBefore,s6Step15EntryFBefore,s6Step15EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15EntryG_checked : planRowResizeLog s6Step15EntryGBefore s6Step15EntryGRow 256 s6Step15EntryGFresh=
    some (s6Step15EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step15EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryGBefore s6Step15EntryGAfter s6Step15EntryGRow 256 s6Step15EntryGFresh
    s6Step15EntryG_distinct s6Step15EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryG_reserved
  have rowEq : WindowRow.mk (s6Step15EntryGRow.payload++s6Step15EntryGFresh) s6Step15EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryFvBefore : Arena := s6Step15EntryGAfter
def s6Step15EntryFvAfter : Arena := s6Step15EntryGAfter
def s6Step15EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩
def s6Step15EntryFvFresh : List Wire := []
theorem s6Step15EntryFv_distinct : (s6Step15EntryFvRow.sign::s6Step15EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryFv_owned : (s6Step15EntryFvRow.sign::s6Step15EntryFvRow.payload).toFinset⊆s6Step15EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryFv_reserved : s6Step15EntryFvBefore.reserve s6Step15EntryFvFresh.toFinset=some s6Step15EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryFvFresh,arenaWires]
  · norm_num [s6Step15EntryFvBefore,s6Step15EntryGAfter,s6Step15EntryFvFresh,arenaWires]
  · simp only [s6Step15EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step15EntryFv_checked : planRowResizeLog s6Step15EntryFvBefore s6Step15EntryFvRow 16 s6Step15EntryFvFresh=
    some (s6Step15EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩,growRow 776 s6Step15EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryFvBefore s6Step15EntryFvAfter s6Step15EntryFvRow 16 s6Step15EntryFvFresh
    s6Step15EntryFv_distinct s6Step15EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step15EntryFvRow.payload++s6Step15EntryFvFresh) s6Step15EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryGvBefore : Arena := s6Step15EntryGAfter
def s6Step15EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864],775⟩
def s6Step15EntryGvFresh : List Wire := [828, 887]
theorem s6Step15EntryGv_distinct : (s6Step15EntryGvRow.sign::s6Step15EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryGv_owned : (s6Step15EntryGvRow.sign::s6Step15EntryGvRow.payload).toFinset⊆s6Step15EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryGv_reserved : s6Step15EntryGvBefore.reserve s6Step15EntryGvFresh.toFinset=some s6Step15EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step15EntryGvBefore,s6Step15EntryGAfter,s6Step15EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step15EntryGvAfter,s6Step15EntryGvBefore,s6Step15EntryGAfter,s6Step15EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15EntryGv_checked : planRowResizeLog s6Step15EntryGvBefore s6Step15EntryGvRow 16 s6Step15EntryGvFresh=
    some (s6Step15EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887],775⟩,growRow 775 s6Step15EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryGvBefore s6Step15EntryGvAfter s6Step15EntryGvRow 16 s6Step15EntryGvFresh
    s6Step15EntryGv_distinct s6Step15EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step15EntryGvRow.payload++s6Step15EntryGvFresh) s6Step15EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step16EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step16EntryFAfter : Arena := s6Step16EntryFBefore
def s6Step16EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step16EntryFFresh : List Wire := []
theorem s6Step16EntryF_distinct : (s6Step16EntryFRow.sign::s6Step16EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16EntryF_owned : (s6Step16EntryFRow.sign::s6Step16EntryFRow.payload).toFinset⊆s6Step16EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step16EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EntryF_reserved : s6Step16EntryFBefore.reserve s6Step16EntryFFresh.toFinset=some s6Step16EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step16EntryFFresh,arenaWires]
  · norm_num [s6Step16EntryFBefore,s6Step16EntryFFresh,arenaWires]
  · simp only [s6Step16EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step16EntryF_checked : planRowResizeLog s6Step16EntryFBefore s6Step16EntryFRow 256 s6Step16EntryFFresh=
    some (s6Step16EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step16EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step16EntryFBefore s6Step16EntryFAfter s6Step16EntryFRow 256 s6Step16EntryFFresh
    s6Step16EntryF_distinct s6Step16EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step16EntryF_reserved
  have rowEq : WindowRow.mk (s6Step16EntryFRow.payload++s6Step16EntryFFresh) s6Step16EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step16EntryGBefore : Arena := s6Step16EntryFBefore
def s6Step16EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step16EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step16EntryGFresh : List Wire := [807]
theorem s6Step16EntryG_distinct : (s6Step16EntryGRow.sign::s6Step16EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16EntryG_owned : (s6Step16EntryGRow.sign::s6Step16EntryGRow.payload).toFinset⊆s6Step16EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step16EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EntryG_reserved : s6Step16EntryGBefore.reserve s6Step16EntryGFresh.toFinset=some s6Step16EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step16EntryGFresh,arenaWires]
  · norm_num [s6Step16EntryGBefore,s6Step16EntryFBefore,s6Step16EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step16EntryGAfter,s6Step16EntryGBefore,s6Step16EntryFBefore,s6Step16EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step16EntryG_checked : planRowResizeLog s6Step16EntryGBefore s6Step16EntryGRow 256 s6Step16EntryGFresh=
    some (s6Step16EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩,growRow 777 s6Step16EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step16EntryGBefore s6Step16EntryGAfter s6Step16EntryGRow 256 s6Step16EntryGFresh
    s6Step16EntryG_distinct s6Step16EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step16EntryG_reserved
  have rowEq : WindowRow.mk (s6Step16EntryGRow.payload++s6Step16EntryGFresh) s6Step16EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step16EntryFvBefore : Arena := s6Step16EntryGAfter
def s6Step16EntryFvAfter : Arena := s6Step16EntryGAfter
def s6Step16EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833],776⟩
def s6Step16EntryFvFresh : List Wire := []
theorem s6Step16EntryFv_distinct : (s6Step16EntryFvRow.sign::s6Step16EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16EntryFv_owned : (s6Step16EntryFvRow.sign::s6Step16EntryFvRow.payload).toFinset⊆s6Step16EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step16EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EntryFv_reserved : s6Step16EntryFvBefore.reserve s6Step16EntryFvFresh.toFinset=some s6Step16EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step16EntryFvFresh,arenaWires]
  · norm_num [s6Step16EntryFvBefore,s6Step16EntryGAfter,s6Step16EntryFvFresh,arenaWires]
  · simp only [s6Step16EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step16EntryFv_checked : planRowResizeLog s6Step16EntryFvBefore s6Step16EntryFvRow 17 s6Step16EntryFvFresh=
    some (s6Step16EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833],776⟩,growRow 776 s6Step16EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step16EntryFvBefore s6Step16EntryFvAfter s6Step16EntryFvRow 17 s6Step16EntryFvFresh
    s6Step16EntryFv_distinct s6Step16EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step16EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step16EntryFvRow.payload++s6Step16EntryFvFresh) s6Step16EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step16EntryGvBefore : Arena := s6Step16EntryGAfter
def s6Step16EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step16EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828],775⟩
def s6Step16EntryGvFresh : List Wire := [822, 887]
theorem s6Step16EntryGv_distinct : (s6Step16EntryGvRow.sign::s6Step16EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16EntryGv_owned : (s6Step16EntryGvRow.sign::s6Step16EntryGvRow.payload).toFinset⊆s6Step16EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step16EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EntryGv_reserved : s6Step16EntryGvBefore.reserve s6Step16EntryGvFresh.toFinset=some s6Step16EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step16EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step16EntryGvBefore,s6Step16EntryGAfter,s6Step16EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step16EntryGvAfter,s6Step16EntryGvBefore,s6Step16EntryGAfter,s6Step16EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step16EntryGv_checked : planRowResizeLog s6Step16EntryGvBefore s6Step16EntryGvRow 17 s6Step16EntryGvFresh=
    some (s6Step16EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 887],775⟩,growRow 775 s6Step16EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step16EntryGvBefore s6Step16EntryGvAfter s6Step16EntryGvRow 17 s6Step16EntryGvFresh
    s6Step16EntryGv_distinct s6Step16EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step16EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step16EntryGvRow.payload++s6Step16EntryGvFresh) s6Step16EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step17EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step17EntryFAfter : Arena := s6Step17EntryFBefore
def s6Step17EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step17EntryFFresh : List Wire := []
theorem s6Step17EntryF_distinct : (s6Step17EntryFRow.sign::s6Step17EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17EntryF_owned : (s6Step17EntryFRow.sign::s6Step17EntryFRow.payload).toFinset⊆s6Step17EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step17EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EntryF_reserved : s6Step17EntryFBefore.reserve s6Step17EntryFFresh.toFinset=some s6Step17EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step17EntryFFresh,arenaWires]
  · norm_num [s6Step17EntryFBefore,s6Step17EntryFFresh,arenaWires]
  · simp only [s6Step17EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step17EntryF_checked : planRowResizeLog s6Step17EntryFBefore s6Step17EntryFRow 256 s6Step17EntryFFresh=
    some (s6Step17EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step17EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step17EntryFBefore s6Step17EntryFAfter s6Step17EntryFRow 256 s6Step17EntryFFresh
    s6Step17EntryF_distinct s6Step17EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step17EntryF_reserved
  have rowEq : WindowRow.mk (s6Step17EntryFRow.payload++s6Step17EntryFFresh) s6Step17EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step17EntryGBefore : Arena := s6Step17EntryFBefore
def s6Step17EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step17EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step17EntryGFresh : List Wire := [813]
theorem s6Step17EntryG_distinct : (s6Step17EntryGRow.sign::s6Step17EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17EntryG_owned : (s6Step17EntryGRow.sign::s6Step17EntryGRow.payload).toFinset⊆s6Step17EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step17EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EntryG_reserved : s6Step17EntryGBefore.reserve s6Step17EntryGFresh.toFinset=some s6Step17EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step17EntryGFresh,arenaWires]
  · norm_num [s6Step17EntryGBefore,s6Step17EntryFBefore,s6Step17EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step17EntryGAfter,s6Step17EntryGBefore,s6Step17EntryFBefore,s6Step17EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step17EntryG_checked : planRowResizeLog s6Step17EntryGBefore s6Step17EntryGRow 256 s6Step17EntryGFresh=
    some (s6Step17EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩,growRow 777 s6Step17EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step17EntryGBefore s6Step17EntryGAfter s6Step17EntryGRow 256 s6Step17EntryGFresh
    s6Step17EntryG_distinct s6Step17EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step17EntryG_reserved
  have rowEq : WindowRow.mk (s6Step17EntryGRow.payload++s6Step17EntryGFresh) s6Step17EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step17EntryFvBefore : Arena := s6Step17EntryGAfter
def s6Step17EntryFvAfter : Arena := s6Step17EntryGAfter
def s6Step17EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886],776⟩
def s6Step17EntryFvFresh : List Wire := []
theorem s6Step17EntryFv_distinct : (s6Step17EntryFvRow.sign::s6Step17EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17EntryFv_owned : (s6Step17EntryFvRow.sign::s6Step17EntryFvRow.payload).toFinset⊆s6Step17EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step17EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EntryFv_reserved : s6Step17EntryFvBefore.reserve s6Step17EntryFvFresh.toFinset=some s6Step17EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step17EntryFvFresh,arenaWires]
  · norm_num [s6Step17EntryFvBefore,s6Step17EntryGAfter,s6Step17EntryFvFresh,arenaWires]
  · simp only [s6Step17EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step17EntryFv_checked : planRowResizeLog s6Step17EntryFvBefore s6Step17EntryFvRow 18 s6Step17EntryFvFresh=
    some (s6Step17EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886],776⟩,growRow 776 s6Step17EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step17EntryFvBefore s6Step17EntryFvAfter s6Step17EntryFvRow 18 s6Step17EntryFvFresh
    s6Step17EntryFv_distinct s6Step17EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step17EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step17EntryFvRow.payload++s6Step17EntryFvFresh) s6Step17EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step17EntryGvBefore : Arena := s6Step17EntryGAfter
def s6Step17EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step17EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822],775⟩
def s6Step17EntryGvFresh : List Wire := [780, 887]
theorem s6Step17EntryGv_distinct : (s6Step17EntryGvRow.sign::s6Step17EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17EntryGv_owned : (s6Step17EntryGvRow.sign::s6Step17EntryGvRow.payload).toFinset⊆s6Step17EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step17EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EntryGv_reserved : s6Step17EntryGvBefore.reserve s6Step17EntryGvFresh.toFinset=some s6Step17EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step17EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step17EntryGvBefore,s6Step17EntryGAfter,s6Step17EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step17EntryGvAfter,s6Step17EntryGvBefore,s6Step17EntryGAfter,s6Step17EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step17EntryGv_checked : planRowResizeLog s6Step17EntryGvBefore s6Step17EntryGvRow 18 s6Step17EntryGvFresh=
    some (s6Step17EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 887],775⟩,growRow 775 s6Step17EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step17EntryGvBefore s6Step17EntryGvAfter s6Step17EntryGvRow 18 s6Step17EntryGvFresh
    s6Step17EntryGv_distinct s6Step17EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step17EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step17EntryGvRow.payload++s6Step17EntryGvFresh) s6Step17EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step18EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step18EntryFAfter : Arena := s6Step18EntryFBefore
def s6Step18EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step18EntryFFresh : List Wire := []
theorem s6Step18EntryF_distinct : (s6Step18EntryFRow.sign::s6Step18EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18EntryF_owned : (s6Step18EntryFRow.sign::s6Step18EntryFRow.payload).toFinset⊆s6Step18EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step18EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EntryF_reserved : s6Step18EntryFBefore.reserve s6Step18EntryFFresh.toFinset=some s6Step18EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step18EntryFFresh,arenaWires]
  · norm_num [s6Step18EntryFBefore,s6Step18EntryFFresh,arenaWires]
  · simp only [s6Step18EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step18EntryF_checked : planRowResizeLog s6Step18EntryFBefore s6Step18EntryFRow 256 s6Step18EntryFFresh=
    some (s6Step18EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step18EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step18EntryFBefore s6Step18EntryFAfter s6Step18EntryFRow 256 s6Step18EntryFFresh
    s6Step18EntryF_distinct s6Step18EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step18EntryF_reserved
  have rowEq : WindowRow.mk (s6Step18EntryFRow.payload++s6Step18EntryFFresh) s6Step18EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step18EntryGBefore : Arena := s6Step18EntryFBefore
def s6Step18EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step18EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step18EntryGFresh : List Wire := [860]
theorem s6Step18EntryG_distinct : (s6Step18EntryGRow.sign::s6Step18EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18EntryG_owned : (s6Step18EntryGRow.sign::s6Step18EntryGRow.payload).toFinset⊆s6Step18EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step18EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EntryG_reserved : s6Step18EntryGBefore.reserve s6Step18EntryGFresh.toFinset=some s6Step18EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step18EntryGFresh,arenaWires]
  · norm_num [s6Step18EntryGBefore,s6Step18EntryFBefore,s6Step18EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step18EntryGAfter,s6Step18EntryGBefore,s6Step18EntryFBefore,s6Step18EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step18EntryG_checked : planRowResizeLog s6Step18EntryGBefore s6Step18EntryGRow 256 s6Step18EntryGFresh=
    some (s6Step18EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩,growRow 777 s6Step18EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step18EntryGBefore s6Step18EntryGAfter s6Step18EntryGRow 256 s6Step18EntryGFresh
    s6Step18EntryG_distinct s6Step18EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step18EntryG_reserved
  have rowEq : WindowRow.mk (s6Step18EntryGRow.payload++s6Step18EntryGFresh) s6Step18EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step18EntryFvBefore : Arena := s6Step18EntryGAfter
def s6Step18EntryFvAfter : Arena := s6Step18EntryGAfter
def s6Step18EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838],776⟩
def s6Step18EntryFvFresh : List Wire := []
theorem s6Step18EntryFv_distinct : (s6Step18EntryFvRow.sign::s6Step18EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18EntryFv_owned : (s6Step18EntryFvRow.sign::s6Step18EntryFvRow.payload).toFinset⊆s6Step18EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step18EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EntryFv_reserved : s6Step18EntryFvBefore.reserve s6Step18EntryFvFresh.toFinset=some s6Step18EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step18EntryFvFresh,arenaWires]
  · norm_num [s6Step18EntryFvBefore,s6Step18EntryGAfter,s6Step18EntryFvFresh,arenaWires]
  · simp only [s6Step18EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step18EntryFv_checked : planRowResizeLog s6Step18EntryFvBefore s6Step18EntryFvRow 19 s6Step18EntryFvFresh=
    some (s6Step18EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838],776⟩,growRow 776 s6Step18EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step18EntryFvBefore s6Step18EntryFvAfter s6Step18EntryFvRow 19 s6Step18EntryFvFresh
    s6Step18EntryFv_distinct s6Step18EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step18EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step18EntryFvRow.payload++s6Step18EntryFvFresh) s6Step18EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step18EntryGvBefore : Arena := s6Step18EntryGAfter
def s6Step18EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step18EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780],775⟩
def s6Step18EntryGvFresh : List Wire := [888, 887]
theorem s6Step18EntryGv_distinct : (s6Step18EntryGvRow.sign::s6Step18EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18EntryGv_owned : (s6Step18EntryGvRow.sign::s6Step18EntryGvRow.payload).toFinset⊆s6Step18EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step18EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EntryGv_reserved : s6Step18EntryGvBefore.reserve s6Step18EntryGvFresh.toFinset=some s6Step18EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step18EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step18EntryGvBefore,s6Step18EntryGAfter,s6Step18EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step18EntryGvAfter,s6Step18EntryGvBefore,s6Step18EntryGAfter,s6Step18EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step18EntryGv_checked : planRowResizeLog s6Step18EntryGvBefore s6Step18EntryGvRow 19 s6Step18EntryGvFresh=
    some (s6Step18EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 887],775⟩,growRow 775 s6Step18EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step18EntryGvBefore s6Step18EntryGvAfter s6Step18EntryGvRow 19 s6Step18EntryGvFresh
    s6Step18EntryGv_distinct s6Step18EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step18EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step18EntryGvRow.payload++s6Step18EntryGvFresh) s6Step18EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step19EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step19EntryFAfter : Arena := s6Step19EntryFBefore
def s6Step19EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step19EntryFFresh : List Wire := []
theorem s6Step19EntryF_distinct : (s6Step19EntryFRow.sign::s6Step19EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19EntryF_owned : (s6Step19EntryFRow.sign::s6Step19EntryFRow.payload).toFinset⊆s6Step19EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step19EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19EntryF_reserved : s6Step19EntryFBefore.reserve s6Step19EntryFFresh.toFinset=some s6Step19EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step19EntryFFresh,arenaWires]
  · norm_num [s6Step19EntryFBefore,s6Step19EntryFFresh,arenaWires]
  · simp only [s6Step19EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step19EntryF_checked : planRowResizeLog s6Step19EntryFBefore s6Step19EntryFRow 256 s6Step19EntryFFresh=
    some (s6Step19EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step19EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step19EntryFBefore s6Step19EntryFAfter s6Step19EntryFRow 256 s6Step19EntryFFresh
    s6Step19EntryF_distinct s6Step19EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step19EntryF_reserved
  have rowEq : WindowRow.mk (s6Step19EntryFRow.payload++s6Step19EntryFFresh) s6Step19EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step19EntryGBefore : Arena := s6Step19EntryFBefore
def s6Step19EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step19EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step19EntryGFresh : List Wire := [862]
theorem s6Step19EntryG_distinct : (s6Step19EntryGRow.sign::s6Step19EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19EntryG_owned : (s6Step19EntryGRow.sign::s6Step19EntryGRow.payload).toFinset⊆s6Step19EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step19EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19EntryG_reserved : s6Step19EntryGBefore.reserve s6Step19EntryGFresh.toFinset=some s6Step19EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step19EntryGFresh,arenaWires]
  · norm_num [s6Step19EntryGBefore,s6Step19EntryFBefore,s6Step19EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step19EntryGAfter,s6Step19EntryGBefore,s6Step19EntryFBefore,s6Step19EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step19EntryG_checked : planRowResizeLog s6Step19EntryGBefore s6Step19EntryGRow 256 s6Step19EntryGFresh=
    some (s6Step19EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step19EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step19EntryGBefore s6Step19EntryGAfter s6Step19EntryGRow 256 s6Step19EntryGFresh
    s6Step19EntryG_distinct s6Step19EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step19EntryG_reserved
  have rowEq : WindowRow.mk (s6Step19EntryGRow.payload++s6Step19EntryGFresh) s6Step19EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step19EntryFvBefore : Arena := s6Step19EntryGAfter
def s6Step19EntryFvAfter : Arena := s6Step19EntryGAfter
def s6Step19EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821],776⟩
def s6Step19EntryFvFresh : List Wire := []
theorem s6Step19EntryFv_distinct : (s6Step19EntryFvRow.sign::s6Step19EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19EntryFv_owned : (s6Step19EntryFvRow.sign::s6Step19EntryFvRow.payload).toFinset⊆s6Step19EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step19EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19EntryFv_reserved : s6Step19EntryFvBefore.reserve s6Step19EntryFvFresh.toFinset=some s6Step19EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step19EntryFvFresh,arenaWires]
  · norm_num [s6Step19EntryFvBefore,s6Step19EntryGAfter,s6Step19EntryFvFresh,arenaWires]
  · simp only [s6Step19EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step19EntryFv_checked : planRowResizeLog s6Step19EntryFvBefore s6Step19EntryFvRow 20 s6Step19EntryFvFresh=
    some (s6Step19EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821],776⟩,growRow 776 s6Step19EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step19EntryFvBefore s6Step19EntryFvAfter s6Step19EntryFvRow 20 s6Step19EntryFvFresh
    s6Step19EntryFv_distinct s6Step19EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step19EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step19EntryFvRow.payload++s6Step19EntryFvFresh) s6Step19EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step19EntryGvBefore : Arena := s6Step19EntryGAfter
def s6Step19EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step19EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888],775⟩
def s6Step19EntryGvFresh : List Wire := [778, 887]
theorem s6Step19EntryGv_distinct : (s6Step19EntryGvRow.sign::s6Step19EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19EntryGv_owned : (s6Step19EntryGvRow.sign::s6Step19EntryGvRow.payload).toFinset⊆s6Step19EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step19EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19EntryGv_reserved : s6Step19EntryGvBefore.reserve s6Step19EntryGvFresh.toFinset=some s6Step19EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step19EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step19EntryGvBefore,s6Step19EntryGAfter,s6Step19EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step19EntryGvAfter,s6Step19EntryGvBefore,s6Step19EntryGAfter,s6Step19EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step19EntryGv_checked : planRowResizeLog s6Step19EntryGvBefore s6Step19EntryGvRow 20 s6Step19EntryGvFresh=
    some (s6Step19EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 887],775⟩,growRow 775 s6Step19EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step19EntryGvBefore s6Step19EntryGvAfter s6Step19EntryGvRow 20 s6Step19EntryGvFresh
    s6Step19EntryGv_distinct s6Step19EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step19EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step19EntryGvRow.payload++s6Step19EntryGvFresh) s6Step19EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step20EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step20EntryFAfter : Arena := s6Step20EntryFBefore
def s6Step20EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step20EntryFFresh : List Wire := []
theorem s6Step20EntryF_distinct : (s6Step20EntryFRow.sign::s6Step20EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20EntryF_owned : (s6Step20EntryFRow.sign::s6Step20EntryFRow.payload).toFinset⊆s6Step20EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step20EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step20EntryF_reserved : s6Step20EntryFBefore.reserve s6Step20EntryFFresh.toFinset=some s6Step20EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step20EntryFFresh,arenaWires]
  · norm_num [s6Step20EntryFBefore,s6Step20EntryFFresh,arenaWires]
  · simp only [s6Step20EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step20EntryF_checked : planRowResizeLog s6Step20EntryFBefore s6Step20EntryFRow 256 s6Step20EntryFFresh=
    some (s6Step20EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step20EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step20EntryFBefore s6Step20EntryFAfter s6Step20EntryFRow 256 s6Step20EntryFFresh
    s6Step20EntryF_distinct s6Step20EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step20EntryF_reserved
  have rowEq : WindowRow.mk (s6Step20EntryFRow.payload++s6Step20EntryFFresh) s6Step20EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step20EntryGBefore : Arena := s6Step20EntryFBefore
def s6Step20EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step20EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step20EntryGFresh : List Wire := [807]
theorem s6Step20EntryG_distinct : (s6Step20EntryGRow.sign::s6Step20EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20EntryG_owned : (s6Step20EntryGRow.sign::s6Step20EntryGRow.payload).toFinset⊆s6Step20EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step20EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step20EntryG_reserved : s6Step20EntryGBefore.reserve s6Step20EntryGFresh.toFinset=some s6Step20EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step20EntryGFresh,arenaWires]
  · norm_num [s6Step20EntryGBefore,s6Step20EntryFBefore,s6Step20EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step20EntryGBefore s6Step20EntryGAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EntryGFresh rfl rfl
    · norm_num [s6Step20EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step20EntryG_checked : planRowResizeLog s6Step20EntryGBefore s6Step20EntryGRow 256 s6Step20EntryGFresh=
    some (s6Step20EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩,growRow 777 s6Step20EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step20EntryGBefore s6Step20EntryGAfter s6Step20EntryGRow 256 s6Step20EntryGFresh
    s6Step20EntryG_distinct s6Step20EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step20EntryG_reserved
  have rowEq : WindowRow.mk (s6Step20EntryGRow.payload++s6Step20EntryGFresh) s6Step20EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step20EntryFvBefore : Arena := s6Step20EntryGAfter
def s6Step20EntryFvAfter : Arena := s6Step20EntryGAfter
def s6Step20EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843],776⟩
def s6Step20EntryFvFresh : List Wire := []
theorem s6Step20EntryFv_distinct : (s6Step20EntryFvRow.sign::s6Step20EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20EntryFv_owned : (s6Step20EntryFvRow.sign::s6Step20EntryFvRow.payload).toFinset⊆s6Step20EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step20EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20EntryFv_reserved : s6Step20EntryFvBefore.reserve s6Step20EntryFvFresh.toFinset=some s6Step20EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step20EntryFvFresh,arenaWires]
  · norm_num [s6Step20EntryFvBefore,s6Step20EntryGAfter,s6Step20EntryFvFresh,arenaWires]
  · simp only [s6Step20EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step20EntryFv_checked : planRowResizeLog s6Step20EntryFvBefore s6Step20EntryFvRow 21 s6Step20EntryFvFresh=
    some (s6Step20EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843],776⟩,growRow 776 s6Step20EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step20EntryFvBefore s6Step20EntryFvAfter s6Step20EntryFvRow 21 s6Step20EntryFvFresh
    s6Step20EntryFv_distinct s6Step20EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step20EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step20EntryFvRow.payload++s6Step20EntryFvFresh) s6Step20EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step20EntryGvBefore : Arena := s6Step20EntryGAfter
def s6Step20EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step20EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778],775⟩
def s6Step20EntryGvFresh : List Wire := [814, 887]
theorem s6Step20EntryGv_distinct : (s6Step20EntryGvRow.sign::s6Step20EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20EntryGv_owned : (s6Step20EntryGvRow.sign::s6Step20EntryGvRow.payload).toFinset⊆s6Step20EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step20EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20EntryGv_reserved : s6Step20EntryGvBefore.reserve s6Step20EntryGvFresh.toFinset=some s6Step20EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step20EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step20EntryGvBefore,s6Step20EntryGAfter,s6Step20EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step20EntryGvBefore s6Step20EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EntryGvFresh rfl rfl
    · norm_num [s6Step20EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step20EntryGv_checked : planRowResizeLog s6Step20EntryGvBefore s6Step20EntryGvRow 21 s6Step20EntryGvFresh=
    some (s6Step20EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 887],775⟩,growRow 775 s6Step20EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step20EntryGvBefore s6Step20EntryGvAfter s6Step20EntryGvRow 21 s6Step20EntryGvFresh
    s6Step20EntryGv_distinct s6Step20EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step20EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step20EntryGvRow.payload++s6Step20EntryGvFresh) s6Step20EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step21EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step21EntryFAfter : Arena := s6Step21EntryFBefore
def s6Step21EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step21EntryFFresh : List Wire := []
theorem s6Step21EntryF_distinct : (s6Step21EntryFRow.sign::s6Step21EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21EntryF_owned : (s6Step21EntryFRow.sign::s6Step21EntryFRow.payload).toFinset⊆s6Step21EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step21EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EntryF_reserved : s6Step21EntryFBefore.reserve s6Step21EntryFFresh.toFinset=some s6Step21EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step21EntryFFresh,arenaWires]
  · norm_num [s6Step21EntryFBefore,s6Step21EntryFFresh,arenaWires]
  · simp only [s6Step21EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step21EntryF_checked : planRowResizeLog s6Step21EntryFBefore s6Step21EntryFRow 256 s6Step21EntryFFresh=
    some (s6Step21EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step21EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step21EntryFBefore s6Step21EntryFAfter s6Step21EntryFRow 256 s6Step21EntryFFresh
    s6Step21EntryF_distinct s6Step21EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step21EntryF_reserved
  have rowEq : WindowRow.mk (s6Step21EntryFRow.payload++s6Step21EntryFFresh) s6Step21EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step21EntryGBefore : Arena := s6Step21EntryFBefore
def s6Step21EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step21EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step21EntryGFresh : List Wire := [813]
theorem s6Step21EntryG_distinct : (s6Step21EntryGRow.sign::s6Step21EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21EntryG_owned : (s6Step21EntryGRow.sign::s6Step21EntryGRow.payload).toFinset⊆s6Step21EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step21EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EntryG_reserved : s6Step21EntryGBefore.reserve s6Step21EntryGFresh.toFinset=some s6Step21EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step21EntryGFresh,arenaWires]
  · norm_num [s6Step21EntryGBefore,s6Step21EntryFBefore,s6Step21EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step21EntryGBefore s6Step21EntryGAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EntryGFresh rfl rfl
    · norm_num [s6Step21EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step21EntryG_checked : planRowResizeLog s6Step21EntryGBefore s6Step21EntryGRow 256 s6Step21EntryGFresh=
    some (s6Step21EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩,growRow 777 s6Step21EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step21EntryGBefore s6Step21EntryGAfter s6Step21EntryGRow 256 s6Step21EntryGFresh
    s6Step21EntryG_distinct s6Step21EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step21EntryG_reserved
  have rowEq : WindowRow.mk (s6Step21EntryGRow.payload++s6Step21EntryGFresh) s6Step21EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step21EntryFvBefore : Arena := s6Step21EntryGAfter
def s6Step21EntryFvAfter : Arena := s6Step21EntryGAfter
def s6Step21EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830],776⟩
def s6Step21EntryFvFresh : List Wire := []
theorem s6Step21EntryFv_distinct : (s6Step21EntryFvRow.sign::s6Step21EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21EntryFv_owned : (s6Step21EntryFvRow.sign::s6Step21EntryFvRow.payload).toFinset⊆s6Step21EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step21EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EntryFv_reserved : s6Step21EntryFvBefore.reserve s6Step21EntryFvFresh.toFinset=some s6Step21EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step21EntryFvFresh,arenaWires]
  · norm_num [s6Step21EntryFvBefore,s6Step21EntryGAfter,s6Step21EntryFvFresh,arenaWires]
  · simp only [s6Step21EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step21EntryFv_checked : planRowResizeLog s6Step21EntryFvBefore s6Step21EntryFvRow 22 s6Step21EntryFvFresh=
    some (s6Step21EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830],776⟩,growRow 776 s6Step21EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step21EntryFvBefore s6Step21EntryFvAfter s6Step21EntryFvRow 22 s6Step21EntryFvFresh
    s6Step21EntryFv_distinct s6Step21EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step21EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step21EntryFvRow.payload++s6Step21EntryFvFresh) s6Step21EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step21EntryGvBefore : Arena := s6Step21EntryGAfter
def s6Step21EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step21EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814],775⟩
def s6Step21EntryGvFresh : List Wire := [869, 887]
theorem s6Step21EntryGv_distinct : (s6Step21EntryGvRow.sign::s6Step21EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21EntryGv_owned : (s6Step21EntryGvRow.sign::s6Step21EntryGvRow.payload).toFinset⊆s6Step21EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step21EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EntryGv_reserved : s6Step21EntryGvBefore.reserve s6Step21EntryGvFresh.toFinset=some s6Step21EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step21EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step21EntryGvBefore,s6Step21EntryGAfter,s6Step21EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step21EntryGvBefore s6Step21EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) s6Step21EntryGvFresh rfl rfl
    · norm_num [s6Step21EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step21EntryGv_checked : planRowResizeLog s6Step21EntryGvBefore s6Step21EntryGvRow 22 s6Step21EntryGvFresh=
    some (s6Step21EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 887],775⟩,growRow 775 s6Step21EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step21EntryGvBefore s6Step21EntryGvAfter s6Step21EntryGvRow 22 s6Step21EntryGvFresh
    s6Step21EntryGv_distinct s6Step21EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step21EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step21EntryGvRow.payload++s6Step21EntryGvFresh) s6Step21EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step22EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step22EntryFAfter : Arena := s6Step22EntryFBefore
def s6Step22EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step22EntryFFresh : List Wire := []
theorem s6Step22EntryF_distinct : (s6Step22EntryFRow.sign::s6Step22EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22EntryF_owned : (s6Step22EntryFRow.sign::s6Step22EntryFRow.payload).toFinset⊆s6Step22EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step22EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EntryF_reserved : s6Step22EntryFBefore.reserve s6Step22EntryFFresh.toFinset=some s6Step22EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step22EntryFFresh,arenaWires]
  · norm_num [s6Step22EntryFBefore,s6Step22EntryFFresh,arenaWires]
  · simp only [s6Step22EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step22EntryF_checked : planRowResizeLog s6Step22EntryFBefore s6Step22EntryFRow 256 s6Step22EntryFFresh=
    some (s6Step22EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step22EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step22EntryFBefore s6Step22EntryFAfter s6Step22EntryFRow 256 s6Step22EntryFFresh
    s6Step22EntryF_distinct s6Step22EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step22EntryF_reserved
  have rowEq : WindowRow.mk (s6Step22EntryFRow.payload++s6Step22EntryFFresh) s6Step22EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step22EntryGBefore : Arena := s6Step22EntryFBefore
def s6Step22EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step22EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step22EntryGFresh : List Wire := [860]
theorem s6Step22EntryG_distinct : (s6Step22EntryGRow.sign::s6Step22EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22EntryG_owned : (s6Step22EntryGRow.sign::s6Step22EntryGRow.payload).toFinset⊆s6Step22EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step22EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EntryG_reserved : s6Step22EntryGBefore.reserve s6Step22EntryGFresh.toFinset=some s6Step22EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step22EntryGFresh,arenaWires]
  · norm_num [s6Step22EntryGBefore,s6Step22EntryFBefore,s6Step22EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step22EntryGBefore s6Step22EntryGAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EntryGFresh rfl rfl
    · norm_num [s6Step22EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step22EntryG_checked : planRowResizeLog s6Step22EntryGBefore s6Step22EntryGRow 256 s6Step22EntryGFresh=
    some (s6Step22EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩,growRow 777 s6Step22EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step22EntryGBefore s6Step22EntryGAfter s6Step22EntryGRow 256 s6Step22EntryGFresh
    s6Step22EntryG_distinct s6Step22EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step22EntryG_reserved
  have rowEq : WindowRow.mk (s6Step22EntryGRow.payload++s6Step22EntryGFresh) s6Step22EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step22EntryFvBefore : Arena := s6Step22EntryGAfter
def s6Step22EntryFvAfter : Arena := s6Step22EntryGAfter
def s6Step22EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848],776⟩
def s6Step22EntryFvFresh : List Wire := []
theorem s6Step22EntryFv_distinct : (s6Step22EntryFvRow.sign::s6Step22EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22EntryFv_owned : (s6Step22EntryFvRow.sign::s6Step22EntryFvRow.payload).toFinset⊆s6Step22EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step22EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EntryFv_reserved : s6Step22EntryFvBefore.reserve s6Step22EntryFvFresh.toFinset=some s6Step22EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step22EntryFvFresh,arenaWires]
  · norm_num [s6Step22EntryFvBefore,s6Step22EntryGAfter,s6Step22EntryFvFresh,arenaWires]
  · simp only [s6Step22EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step22EntryFv_checked : planRowResizeLog s6Step22EntryFvBefore s6Step22EntryFvRow 23 s6Step22EntryFvFresh=
    some (s6Step22EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848],776⟩,growRow 776 s6Step22EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step22EntryFvBefore s6Step22EntryFvAfter s6Step22EntryFvRow 23 s6Step22EntryFvFresh
    s6Step22EntryFv_distinct s6Step22EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step22EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step22EntryFvRow.payload++s6Step22EntryFvFresh) s6Step22EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step22EntryGvBefore : Arena := s6Step22EntryGAfter
def s6Step22EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step22EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869],775⟩
def s6Step22EntryGvFresh : List Wire := [854, 887]
theorem s6Step22EntryGv_distinct : (s6Step22EntryGvRow.sign::s6Step22EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22EntryGv_owned : (s6Step22EntryGvRow.sign::s6Step22EntryGvRow.payload).toFinset⊆s6Step22EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step22EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EntryGv_reserved : s6Step22EntryGvBefore.reserve s6Step22EntryGvFresh.toFinset=some s6Step22EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step22EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step22EntryGvBefore,s6Step22EntryGAfter,s6Step22EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step22EntryGvBefore s6Step22EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EntryGvFresh rfl rfl
    · norm_num [s6Step22EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step22EntryGv_checked : planRowResizeLog s6Step22EntryGvBefore s6Step22EntryGvRow 23 s6Step22EntryGvFresh=
    some (s6Step22EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 887],775⟩,growRow 775 s6Step22EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step22EntryGvBefore s6Step22EntryGvAfter s6Step22EntryGvRow 23 s6Step22EntryGvFresh
    s6Step22EntryGv_distinct s6Step22EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step22EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step22EntryGvRow.payload++s6Step22EntryGvFresh) s6Step22EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step23EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step23EntryFAfter : Arena := s6Step23EntryFBefore
def s6Step23EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step23EntryFFresh : List Wire := []
theorem s6Step23EntryF_distinct : (s6Step23EntryFRow.sign::s6Step23EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23EntryF_owned : (s6Step23EntryFRow.sign::s6Step23EntryFRow.payload).toFinset⊆s6Step23EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step23EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EntryF_reserved : s6Step23EntryFBefore.reserve s6Step23EntryFFresh.toFinset=some s6Step23EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step23EntryFFresh,arenaWires]
  · norm_num [s6Step23EntryFBefore,s6Step23EntryFFresh,arenaWires]
  · simp only [s6Step23EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step23EntryF_checked : planRowResizeLog s6Step23EntryFBefore s6Step23EntryFRow 256 s6Step23EntryFFresh=
    some (s6Step23EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step23EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step23EntryFBefore s6Step23EntryFAfter s6Step23EntryFRow 256 s6Step23EntryFFresh
    s6Step23EntryF_distinct s6Step23EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step23EntryF_reserved
  have rowEq : WindowRow.mk (s6Step23EntryFRow.payload++s6Step23EntryFFresh) s6Step23EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step23EntryGBefore : Arena := s6Step23EntryFBefore
def s6Step23EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step23EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step23EntryGFresh : List Wire := [862]
theorem s6Step23EntryG_distinct : (s6Step23EntryGRow.sign::s6Step23EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23EntryG_owned : (s6Step23EntryGRow.sign::s6Step23EntryGRow.payload).toFinset⊆s6Step23EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step23EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EntryG_reserved : s6Step23EntryGBefore.reserve s6Step23EntryGFresh.toFinset=some s6Step23EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step23EntryGFresh,arenaWires]
  · norm_num [s6Step23EntryGBefore,s6Step23EntryFBefore,s6Step23EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step23EntryGBefore s6Step23EntryGAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EntryGFresh rfl rfl
    · norm_num [s6Step23EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step23EntryG_checked : planRowResizeLog s6Step23EntryGBefore s6Step23EntryGRow 256 s6Step23EntryGFresh=
    some (s6Step23EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step23EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step23EntryGBefore s6Step23EntryGAfter s6Step23EntryGRow 256 s6Step23EntryGFresh
    s6Step23EntryG_distinct s6Step23EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step23EntryG_reserved
  have rowEq : WindowRow.mk (s6Step23EntryGRow.payload++s6Step23EntryGFresh) s6Step23EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step23EntryFvBefore : Arena := s6Step23EntryGAfter
def s6Step23EntryFvAfter : Arena := s6Step23EntryGAfter
def s6Step23EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839],776⟩
def s6Step23EntryFvFresh : List Wire := []
theorem s6Step23EntryFv_distinct : (s6Step23EntryFvRow.sign::s6Step23EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23EntryFv_owned : (s6Step23EntryFvRow.sign::s6Step23EntryFvRow.payload).toFinset⊆s6Step23EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step23EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EntryFv_reserved : s6Step23EntryFvBefore.reserve s6Step23EntryFvFresh.toFinset=some s6Step23EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step23EntryFvFresh,arenaWires]
  · norm_num [s6Step23EntryFvBefore,s6Step23EntryGAfter,s6Step23EntryFvFresh,arenaWires]
  · simp only [s6Step23EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step23EntryFv_checked : planRowResizeLog s6Step23EntryFvBefore s6Step23EntryFvRow 24 s6Step23EntryFvFresh=
    some (s6Step23EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839],776⟩,growRow 776 s6Step23EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step23EntryFvBefore s6Step23EntryFvAfter s6Step23EntryFvRow 24 s6Step23EntryFvFresh
    s6Step23EntryFv_distinct s6Step23EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step23EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step23EntryFvRow.payload++s6Step23EntryFvFresh) s6Step23EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step23EntryGvBefore : Arena := s6Step23EntryGAfter
def s6Step23EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step23EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854],775⟩
def s6Step23EntryGvFresh : List Wire := [898, 887]
theorem s6Step23EntryGv_distinct : (s6Step23EntryGvRow.sign::s6Step23EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23EntryGv_owned : (s6Step23EntryGvRow.sign::s6Step23EntryGvRow.payload).toFinset⊆s6Step23EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step23EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EntryGv_reserved : s6Step23EntryGvBefore.reserve s6Step23EntryGvFresh.toFinset=some s6Step23EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step23EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step23EntryGvBefore,s6Step23EntryGAfter,s6Step23EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step23EntryGvBefore s6Step23EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EntryGvFresh rfl rfl
    · norm_num [s6Step23EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step23EntryGv_checked : planRowResizeLog s6Step23EntryGvBefore s6Step23EntryGvRow 24 s6Step23EntryGvFresh=
    some (s6Step23EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 887],775⟩,growRow 775 s6Step23EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step23EntryGvBefore s6Step23EntryGvAfter s6Step23EntryGvRow 24 s6Step23EntryGvFresh
    s6Step23EntryGv_distinct s6Step23EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step23EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step23EntryGvRow.payload++s6Step23EntryGvFresh) s6Step23EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step24EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24EntryFAfter : Arena := s6Step24EntryFBefore
def s6Step24EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step24EntryFFresh : List Wire := []
theorem s6Step24EntryF_distinct : (s6Step24EntryFRow.sign::s6Step24EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24EntryF_owned : (s6Step24EntryFRow.sign::s6Step24EntryFRow.payload).toFinset⊆s6Step24EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step24EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EntryF_reserved : s6Step24EntryFBefore.reserve s6Step24EntryFFresh.toFinset=some s6Step24EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step24EntryFFresh,arenaWires]
  · norm_num [s6Step24EntryFBefore,s6Step24EntryFFresh,arenaWires]
  · simp only [s6Step24EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step24EntryF_checked : planRowResizeLog s6Step24EntryFBefore s6Step24EntryFRow 256 s6Step24EntryFFresh=
    some (s6Step24EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step24EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step24EntryFBefore s6Step24EntryFAfter s6Step24EntryFRow 256 s6Step24EntryFFresh
    s6Step24EntryF_distinct s6Step24EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step24EntryF_reserved
  have rowEq : WindowRow.mk (s6Step24EntryFRow.payload++s6Step24EntryFFresh) s6Step24EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step24EntryGBefore : Arena := s6Step24EntryFBefore
def s6Step24EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step24EntryGFresh : List Wire := [807]
theorem s6Step24EntryG_distinct : (s6Step24EntryGRow.sign::s6Step24EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24EntryG_owned : (s6Step24EntryGRow.sign::s6Step24EntryGRow.payload).toFinset⊆s6Step24EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step24EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EntryG_reserved : s6Step24EntryGBefore.reserve s6Step24EntryGFresh.toFinset=some s6Step24EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step24EntryGFresh,arenaWires]
  · norm_num [s6Step24EntryGBefore,s6Step24EntryFBefore,s6Step24EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step24EntryGBefore s6Step24EntryGAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EntryGFresh rfl rfl
    · norm_num [s6Step24EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step24EntryG_checked : planRowResizeLog s6Step24EntryGBefore s6Step24EntryGRow 256 s6Step24EntryGFresh=
    some (s6Step24EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩,growRow 777 s6Step24EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step24EntryGBefore s6Step24EntryGAfter s6Step24EntryGRow 256 s6Step24EntryGFresh
    s6Step24EntryG_distinct s6Step24EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step24EntryG_reserved
  have rowEq : WindowRow.mk (s6Step24EntryGRow.payload++s6Step24EntryGFresh) s6Step24EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step24EntryFvBefore : Arena := s6Step24EntryGAfter
def s6Step24EntryFvAfter : Arena := s6Step24EntryGAfter
def s6Step24EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩
def s6Step24EntryFvFresh : List Wire := []
theorem s6Step24EntryFv_distinct : (s6Step24EntryFvRow.sign::s6Step24EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24EntryFv_owned : (s6Step24EntryFvRow.sign::s6Step24EntryFvRow.payload).toFinset⊆s6Step24EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step24EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EntryFv_reserved : s6Step24EntryFvBefore.reserve s6Step24EntryFvFresh.toFinset=some s6Step24EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step24EntryFvFresh,arenaWires]
  · norm_num [s6Step24EntryFvBefore,s6Step24EntryGAfter,s6Step24EntryFvFresh,arenaWires]
  · simp only [s6Step24EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step24EntryFv_checked : planRowResizeLog s6Step24EntryFvBefore s6Step24EntryFvRow 25 s6Step24EntryFvFresh=
    some (s6Step24EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩,growRow 776 s6Step24EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step24EntryFvBefore s6Step24EntryFvAfter s6Step24EntryFvRow 25 s6Step24EntryFvFresh
    s6Step24EntryFv_distinct s6Step24EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step24EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step24EntryFvRow.payload++s6Step24EntryFvFresh) s6Step24EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step24EntryGvBefore : Arena := s6Step24EntryGAfter
def s6Step24EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898],775⟩
def s6Step24EntryGvFresh : List Wire := [841, 887]
theorem s6Step24EntryGv_distinct : (s6Step24EntryGvRow.sign::s6Step24EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24EntryGv_owned : (s6Step24EntryGvRow.sign::s6Step24EntryGvRow.payload).toFinset⊆s6Step24EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step24EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EntryGv_reserved : s6Step24EntryGvBefore.reserve s6Step24EntryGvFresh.toFinset=some s6Step24EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step24EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step24EntryGvBefore,s6Step24EntryGAfter,s6Step24EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step24EntryGvBefore s6Step24EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EntryGvFresh rfl rfl
    · norm_num [s6Step24EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step24EntryGv_checked : planRowResizeLog s6Step24EntryGvBefore s6Step24EntryGvRow 25 s6Step24EntryGvFresh=
    some (s6Step24EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 887],775⟩,growRow 775 s6Step24EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step24EntryGvBefore s6Step24EntryGvAfter s6Step24EntryGvRow 25 s6Step24EntryGvFresh
    s6Step24EntryGv_distinct s6Step24EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step24EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step24EntryGvRow.payload++s6Step24EntryGvFresh) s6Step24EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step25EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step25EntryFAfter : Arena := s6Step25EntryFBefore
def s6Step25EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩
def s6Step25EntryFFresh : List Wire := []
theorem s6Step25EntryF_distinct : (s6Step25EntryFRow.sign::s6Step25EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25EntryF_owned : (s6Step25EntryFRow.sign::s6Step25EntryFRow.payload).toFinset⊆s6Step25EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step25EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EntryF_reserved : s6Step25EntryFBefore.reserve s6Step25EntryFFresh.toFinset=some s6Step25EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step25EntryFFresh,arenaWires]
  · norm_num [s6Step25EntryFBefore,s6Step25EntryFFresh,arenaWires]
  · simp only [s6Step25EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step25EntryF_checked : planRowResizeLog s6Step25EntryFBefore s6Step25EntryFRow 255 s6Step25EntryFFresh=
    some (s6Step25EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩,growRow 795 s6Step25EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step25EntryFBefore s6Step25EntryFAfter s6Step25EntryFRow 255 s6Step25EntryFFresh
    s6Step25EntryF_distinct s6Step25EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step25EntryF_reserved
  have rowEq : WindowRow.mk (s6Step25EntryFRow.payload++s6Step25EntryFFresh) s6Step25EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step25EntryGBefore : Arena := s6Step25EntryFBefore
def s6Step25EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step25EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],777⟩
def s6Step25EntryGFresh : List Wire := [813]
theorem s6Step25EntryG_distinct : (s6Step25EntryGRow.sign::s6Step25EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25EntryG_owned : (s6Step25EntryGRow.sign::s6Step25EntryGRow.payload).toFinset⊆s6Step25EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step25EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EntryG_reserved : s6Step25EntryGBefore.reserve s6Step25EntryGFresh.toFinset=some s6Step25EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step25EntryGFresh,arenaWires]
  · norm_num [s6Step25EntryGBefore,s6Step25EntryFBefore,s6Step25EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step25EntryGBefore s6Step25EntryGAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EntryGFresh rfl rfl
    · norm_num [s6Step25EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step25EntryG_checked : planRowResizeLog s6Step25EntryGBefore s6Step25EntryGRow 255 s6Step25EntryGFresh=
    some (s6Step25EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 813],777⟩,growRow 777 s6Step25EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step25EntryGBefore s6Step25EntryGAfter s6Step25EntryGRow 255 s6Step25EntryGFresh
    s6Step25EntryG_distinct s6Step25EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step25EntryG_reserved
  have rowEq : WindowRow.mk (s6Step25EntryGRow.payload++s6Step25EntryGFresh) s6Step25EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step25EntryFvBefore : Arena := s6Step25EntryGAfter
def s6Step25EntryFvAfter : Arena := s6Step25EntryGAfter
def s6Step25EntryFvRow : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩
def s6Step25EntryFvFresh : List Wire := []
theorem s6Step25EntryFv_distinct : (s6Step25EntryFvRow.sign::s6Step25EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25EntryFv_owned : (s6Step25EntryFvRow.sign::s6Step25EntryFvRow.payload).toFinset⊆s6Step25EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step25EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EntryFv_reserved : s6Step25EntryFvBefore.reserve s6Step25EntryFvFresh.toFinset=some s6Step25EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step25EntryFvFresh,arenaWires]
  · norm_num [s6Step25EntryFvBefore,s6Step25EntryGAfter,s6Step25EntryFvFresh,arenaWires]
  · simp only [s6Step25EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step25EntryFv_checked : planRowResizeLog s6Step25EntryFvBefore s6Step25EntryFvRow 25 s6Step25EntryFvFresh=
    some (s6Step25EntryFvAfter,⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩,growRow 776 s6Step25EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step25EntryFvBefore s6Step25EntryFvAfter s6Step25EntryFvRow 25 s6Step25EntryFvFresh
    s6Step25EntryFv_distinct s6Step25EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step25EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step25EntryFvRow.payload++s6Step25EntryFvFresh) s6Step25EntryFvRow.sign=⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step25EntryGvBefore : Arena := s6Step25EntryGAfter
def s6Step25EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step25EntryGvRow : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841],775⟩
def s6Step25EntryGvFresh : List Wire := [794]
theorem s6Step25EntryGv_distinct : (s6Step25EntryGvRow.sign::s6Step25EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25EntryGv_owned : (s6Step25EntryGvRow.sign::s6Step25EntryGvRow.payload).toFinset⊆s6Step25EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step25EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EntryGv_reserved : s6Step25EntryGvBefore.reserve s6Step25EntryGvFresh.toFinset=some s6Step25EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step25EntryGvFresh,arenaWires]
  · norm_num [s6Step25EntryGvBefore,s6Step25EntryGAfter,s6Step25EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step25EntryGvBefore s6Step25EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EntryGvFresh rfl rfl
    · norm_num [s6Step25EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step25EntryGv_checked : planRowResizeLog s6Step25EntryGvBefore s6Step25EntryGvRow 25 s6Step25EntryGvFresh=
    some (s6Step25EntryGvAfter,⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794],775⟩,growRow 775 s6Step25EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step25EntryGvBefore s6Step25EntryGvAfter s6Step25EntryGvRow 25 s6Step25EntryGvFresh
    s6Step25EntryGv_distinct s6Step25EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step25EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step25EntryGvRow.payload++s6Step25EntryGvFresh) s6Step25EntryGvRow.sign=⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step26EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step26EntryFAfter : Arena := s6Step26EntryFBefore
def s6Step26EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩
def s6Step26EntryFFresh : List Wire := []
theorem s6Step26EntryF_distinct : (s6Step26EntryFRow.sign::s6Step26EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26EntryF_owned : (s6Step26EntryFRow.sign::s6Step26EntryFRow.payload).toFinset⊆s6Step26EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step26EntryFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EntryF_reserved : s6Step26EntryFBefore.reserve s6Step26EntryFFresh.toFinset=some s6Step26EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step26EntryFFresh,arenaWires]
  · norm_num [s6Step26EntryFBefore,s6Step26EntryFFresh,arenaWires]
  · simp only [s6Step26EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step26EntryF_checked : planRowResizeLog s6Step26EntryFBefore s6Step26EntryFRow 255 s6Step26EntryFFresh=
    some (s6Step26EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩,growRow 795 s6Step26EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step26EntryFBefore s6Step26EntryFAfter s6Step26EntryFRow 255 s6Step26EntryFFresh
    s6Step26EntryF_distinct s6Step26EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step26EntryF_reserved
  have rowEq : WindowRow.mk (s6Step26EntryFRow.payload++s6Step26EntryFFresh) s6Step26EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step26EntryGBefore : Arena := s6Step26EntryFBefore
def s6Step26EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step26EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],777⟩
def s6Step26EntryGFresh : List Wire := [876]
theorem s6Step26EntryG_distinct : (s6Step26EntryGRow.sign::s6Step26EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26EntryG_owned : (s6Step26EntryGRow.sign::s6Step26EntryGRow.payload).toFinset⊆s6Step26EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step26EntryGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EntryG_reserved : s6Step26EntryGBefore.reserve s6Step26EntryGFresh.toFinset=some s6Step26EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step26EntryGFresh,arenaWires]
  · norm_num [s6Step26EntryGBefore,s6Step26EntryFBefore,s6Step26EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step26EntryGBefore s6Step26EntryGAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EntryGFresh rfl rfl
    · norm_num [s6Step26EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step26EntryG_checked : planRowResizeLog s6Step26EntryGBefore s6Step26EntryGRow 255 s6Step26EntryGFresh=
    some (s6Step26EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 876],777⟩,growRow 777 s6Step26EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step26EntryGBefore s6Step26EntryGAfter s6Step26EntryGRow 255 s6Step26EntryGFresh
    s6Step26EntryG_distinct s6Step26EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step26EntryG_reserved
  have rowEq : WindowRow.mk (s6Step26EntryGRow.payload++s6Step26EntryGFresh) s6Step26EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step26EntryFvBefore : Arena := s6Step26EntryGAfter
def s6Step26EntryFvAfter : Arena := s6Step26EntryGAfter
def s6Step26EntryFvRow : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860],776⟩
def s6Step26EntryFvFresh : List Wire := []
theorem s6Step26EntryFv_distinct : (s6Step26EntryFvRow.sign::s6Step26EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26EntryFv_owned : (s6Step26EntryFvRow.sign::s6Step26EntryFvRow.payload).toFinset⊆s6Step26EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step26EntryFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EntryFv_reserved : s6Step26EntryFvBefore.reserve s6Step26EntryFvFresh.toFinset=some s6Step26EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step26EntryFvFresh,arenaWires]
  · norm_num [s6Step26EntryFvBefore,s6Step26EntryGAfter,s6Step26EntryFvFresh,arenaWires]
  · simp only [s6Step26EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step26EntryFv_checked : planRowResizeLog s6Step26EntryFvBefore s6Step26EntryFvRow 26 s6Step26EntryFvFresh=
    some (s6Step26EntryFvAfter,⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860],776⟩,growRow 776 s6Step26EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step26EntryFvBefore s6Step26EntryFvAfter s6Step26EntryFvRow 26 s6Step26EntryFvFresh
    s6Step26EntryFv_distinct s6Step26EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step26EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step26EntryFvRow.payload++s6Step26EntryFvFresh) s6Step26EntryFvRow.sign=⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step26EntryGvBefore : Arena := s6Step26EntryGAfter
def s6Step26EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step26EntryGvRow : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794],775⟩
def s6Step26EntryGvFresh : List Wire := [859]
theorem s6Step26EntryGv_distinct : (s6Step26EntryGvRow.sign::s6Step26EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26EntryGv_owned : (s6Step26EntryGvRow.sign::s6Step26EntryGvRow.payload).toFinset⊆s6Step26EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step26EntryGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EntryGv_reserved : s6Step26EntryGvBefore.reserve s6Step26EntryGvFresh.toFinset=some s6Step26EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step26EntryGvFresh,arenaWires]
  · norm_num [s6Step26EntryGvBefore,s6Step26EntryGAfter,s6Step26EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step26EntryGvBefore s6Step26EntryGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EntryGvFresh rfl rfl
    · norm_num [s6Step26EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step26EntryGv_checked : planRowResizeLog s6Step26EntryGvBefore s6Step26EntryGvRow 26 s6Step26EntryGvFresh=
    some (s6Step26EntryGvAfter,⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 859],775⟩,growRow 775 s6Step26EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step26EntryGvBefore s6Step26EntryGvAfter s6Step26EntryGvRow 26 s6Step26EntryGvFresh
    s6Step26EntryGv_distinct s6Step26EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step26EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step26EntryGvRow.payload++s6Step26EntryGvFresh) s6Step26EntryGvRow.sign=⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step27EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step27EntryFAfter : Arena := s6Step27EntryFBefore
def s6Step27EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩
def s6Step27EntryFFresh : List Wire := []
theorem s6Step27EntryF_distinct : (s6Step27EntryFRow.sign::s6Step27EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27EntryF_owned : (s6Step27EntryFRow.sign::s6Step27EntryFRow.payload).toFinset⊆s6Step27EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step27EntryFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EntryF_reserved : s6Step27EntryFBefore.reserve s6Step27EntryFFresh.toFinset=some s6Step27EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step27EntryFFresh,arenaWires]
  · norm_num [s6Step27EntryFBefore,s6Step27EntryFFresh,arenaWires]
  · simp only [s6Step27EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step27EntryF_checked : planRowResizeLog s6Step27EntryFBefore s6Step27EntryFRow 255 s6Step27EntryFFresh=
    some (s6Step27EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩,growRow 795 s6Step27EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step27EntryFBefore s6Step27EntryFAfter s6Step27EntryFRow 255 s6Step27EntryFFresh
    s6Step27EntryF_distinct s6Step27EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step27EntryF_reserved
  have rowEq : WindowRow.mk (s6Step27EntryFRow.payload++s6Step27EntryFFresh) s6Step27EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step27EntryGBefore : Arena := s6Step27EntryFBefore
def s6Step27EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step27EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],777⟩
def s6Step27EntryGFresh : List Wire := [881]
theorem s6Step27EntryG_distinct : (s6Step27EntryGRow.sign::s6Step27EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27EntryG_owned : (s6Step27EntryGRow.sign::s6Step27EntryGRow.payload).toFinset⊆s6Step27EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step27EntryGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EntryG_reserved : s6Step27EntryGBefore.reserve s6Step27EntryGFresh.toFinset=some s6Step27EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step27EntryGFresh,arenaWires]
  · norm_num [s6Step27EntryGBefore,s6Step27EntryFBefore,s6Step27EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step27EntryGBefore s6Step27EntryGAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EntryGFresh rfl rfl
    · norm_num [s6Step27EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step27EntryG_checked : planRowResizeLog s6Step27EntryGBefore s6Step27EntryGRow 255 s6Step27EntryGFresh=
    some (s6Step27EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 881],777⟩,growRow 777 s6Step27EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step27EntryGBefore s6Step27EntryGAfter s6Step27EntryGRow 255 s6Step27EntryGFresh
    s6Step27EntryG_distinct s6Step27EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step27EntryG_reserved
  have rowEq : WindowRow.mk (s6Step27EntryGRow.payload++s6Step27EntryGFresh) s6Step27EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step27EntryFvBefore : Arena := s6Step27EntryGAfter
def s6Step27EntryFvAfter : Arena := s6Step27EntryGAfter
def s6Step27EntryFvRow : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862],776⟩
def s6Step27EntryFvFresh : List Wire := []
theorem s6Step27EntryFv_distinct : (s6Step27EntryFvRow.sign::s6Step27EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27EntryFv_owned : (s6Step27EntryFvRow.sign::s6Step27EntryFvRow.payload).toFinset⊆s6Step27EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step27EntryFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EntryFv_reserved : s6Step27EntryFvBefore.reserve s6Step27EntryFvFresh.toFinset=some s6Step27EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step27EntryFvFresh,arenaWires]
  · norm_num [s6Step27EntryFvBefore,s6Step27EntryGAfter,s6Step27EntryFvFresh,arenaWires]
  · simp only [s6Step27EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step27EntryFv_checked : planRowResizeLog s6Step27EntryFvBefore s6Step27EntryFvRow 27 s6Step27EntryFvFresh=
    some (s6Step27EntryFvAfter,⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862],776⟩,growRow 776 s6Step27EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step27EntryFvBefore s6Step27EntryFvAfter s6Step27EntryFvRow 27 s6Step27EntryFvFresh
    s6Step27EntryFv_distinct s6Step27EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step27EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step27EntryFvRow.payload++s6Step27EntryFvFresh) s6Step27EntryFvRow.sign=⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step27EntryGvBefore : Arena := s6Step27EntryGAfter
def s6Step27EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step27EntryGvRow : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794],775⟩
def s6Step27EntryGvFresh : List Wire := [853, 859]
theorem s6Step27EntryGv_distinct : (s6Step27EntryGvRow.sign::s6Step27EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27EntryGv_owned : (s6Step27EntryGvRow.sign::s6Step27EntryGvRow.payload).toFinset⊆s6Step27EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step27EntryGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EntryGv_reserved : s6Step27EntryGvBefore.reserve s6Step27EntryGvFresh.toFinset=some s6Step27EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step27EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step27EntryGvBefore,s6Step27EntryGAfter,s6Step27EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step27EntryGvBefore s6Step27EntryGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EntryGvFresh rfl rfl
    · norm_num [s6Step27EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step27EntryGv_checked : planRowResizeLog s6Step27EntryGvBefore s6Step27EntryGvRow 27 s6Step27EntryGvFresh=
    some (s6Step27EntryGvAfter,⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 859],775⟩,growRow 775 s6Step27EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step27EntryGvBefore s6Step27EntryGvAfter s6Step27EntryGvRow 27 s6Step27EntryGvFresh
    s6Step27EntryGv_distinct s6Step27EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step27EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step27EntryGvRow.payload++s6Step27EntryGvFresh) s6Step27EntryGvRow.sign=⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step28EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step28EntryFAfter : Arena := s6Step28EntryFBefore
def s6Step28EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩
def s6Step28EntryFFresh : List Wire := []
theorem s6Step28EntryF_distinct : (s6Step28EntryFRow.sign::s6Step28EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28EntryF_owned : (s6Step28EntryFRow.sign::s6Step28EntryFRow.payload).toFinset⊆s6Step28EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step28EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EntryF_reserved : s6Step28EntryFBefore.reserve s6Step28EntryFFresh.toFinset=some s6Step28EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step28EntryFFresh,arenaWires]
  · norm_num [s6Step28EntryFBefore,s6Step28EntryFFresh,arenaWires]
  · simp only [s6Step28EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step28EntryF_checked : planRowResizeLog s6Step28EntryFBefore s6Step28EntryFRow 254 s6Step28EntryFFresh=
    some (s6Step28EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩,growRow 795 s6Step28EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step28EntryFBefore s6Step28EntryFAfter s6Step28EntryFRow 254 s6Step28EntryFFresh
    s6Step28EntryF_distinct s6Step28EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step28EntryF_reserved
  have rowEq : WindowRow.mk (s6Step28EntryFRow.payload++s6Step28EntryFFresh) s6Step28EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step28EntryGBefore : Arena := s6Step28EntryFBefore
def s6Step28EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step28EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252],777⟩
def s6Step28EntryGFresh : List Wire := [887]
theorem s6Step28EntryG_distinct : (s6Step28EntryGRow.sign::s6Step28EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28EntryG_owned : (s6Step28EntryGRow.sign::s6Step28EntryGRow.payload).toFinset⊆s6Step28EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step28EntryGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EntryG_reserved : s6Step28EntryGBefore.reserve s6Step28EntryGFresh.toFinset=some s6Step28EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step28EntryGFresh,arenaWires]
  · norm_num [s6Step28EntryGBefore,s6Step28EntryFBefore,s6Step28EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step28EntryGBefore s6Step28EntryGAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EntryGFresh rfl rfl
    · norm_num [s6Step28EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step28EntryG_checked : planRowResizeLog s6Step28EntryGBefore s6Step28EntryGRow 254 s6Step28EntryGFresh=
    some (s6Step28EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 887],777⟩,growRow 777 s6Step28EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step28EntryGBefore s6Step28EntryGAfter s6Step28EntryGRow 254 s6Step28EntryGFresh
    s6Step28EntryG_distinct s6Step28EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step28EntryG_reserved
  have rowEq : WindowRow.mk (s6Step28EntryGRow.payload++s6Step28EntryGFresh) s6Step28EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 887],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step28EntryFvBefore : Arena := s6Step28EntryGAfter
def s6Step28EntryFvAfter : Arena := s6Step28EntryGAfter
def s6Step28EntryFvRow : WindowRow := ⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩
def s6Step28EntryFvFresh : List Wire := []
theorem s6Step28EntryFv_distinct : (s6Step28EntryFvRow.sign::s6Step28EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28EntryFv_owned : (s6Step28EntryFvRow.sign::s6Step28EntryFvRow.payload).toFinset⊆s6Step28EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step28EntryFvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EntryFv_reserved : s6Step28EntryFvBefore.reserve s6Step28EntryFvFresh.toFinset=some s6Step28EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step28EntryFvFresh,arenaWires]
  · norm_num [s6Step28EntryFvBefore,s6Step28EntryGAfter,s6Step28EntryFvFresh,arenaWires]
  · simp only [s6Step28EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step28EntryFv_checked : planRowResizeLog s6Step28EntryFvBefore s6Step28EntryFvRow 28 s6Step28EntryFvFresh=
    some (s6Step28EntryFvAfter,⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩,growRow 776 s6Step28EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step28EntryFvBefore s6Step28EntryFvAfter s6Step28EntryFvRow 28 s6Step28EntryFvFresh
    s6Step28EntryFv_distinct s6Step28EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step28EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step28EntryFvRow.payload++s6Step28EntryFvFresh) s6Step28EntryFvRow.sign=⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step28EntryGvBefore : Arena := s6Step28EntryGAfter
def s6Step28EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step28EntryGvRow : WindowRow := ⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853],775⟩
def s6Step28EntryGvFresh : List Wire := [807, 768]
theorem s6Step28EntryGv_distinct : (s6Step28EntryGvRow.sign::s6Step28EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28EntryGv_owned : (s6Step28EntryGvRow.sign::s6Step28EntryGvRow.payload).toFinset⊆s6Step28EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step28EntryGvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EntryGv_reserved : s6Step28EntryGvBefore.reserve s6Step28EntryGvFresh.toFinset=some s6Step28EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step28EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step28EntryGvBefore,s6Step28EntryGAfter,s6Step28EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step28EntryGvBefore s6Step28EntryGvAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EntryGvFresh rfl rfl
    · norm_num [s6Step28EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step28EntryGv_checked : planRowResizeLog s6Step28EntryGvBefore s6Step28EntryGvRow 28 s6Step28EntryGvFresh=
    some (s6Step28EntryGvAfter,⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768],775⟩,growRow 775 s6Step28EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step28EntryGvBefore s6Step28EntryGvAfter s6Step28EntryGvRow 28 s6Step28EntryGvFresh
    s6Step28EntryGv_distinct s6Step28EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step28EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step28EntryGvRow.payload++s6Step28EntryGvFresh) s6Step28EntryGvRow.sign=⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step29EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step29EntryFAfter : Arena := s6Step29EntryFBefore
def s6Step29EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩
def s6Step29EntryFFresh : List Wire := []
theorem s6Step29EntryF_distinct : (s6Step29EntryFRow.sign::s6Step29EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29EntryF_owned : (s6Step29EntryFRow.sign::s6Step29EntryFRow.payload).toFinset⊆s6Step29EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step29EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EntryF_reserved : s6Step29EntryFBefore.reserve s6Step29EntryFFresh.toFinset=some s6Step29EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step29EntryFFresh,arenaWires]
  · norm_num [s6Step29EntryFBefore,s6Step29EntryFFresh,arenaWires]
  · simp only [s6Step29EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step29EntryF_checked : planRowResizeLog s6Step29EntryFBefore s6Step29EntryFRow 254 s6Step29EntryFFresh=
    some (s6Step29EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩,growRow 795 s6Step29EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step29EntryFBefore s6Step29EntryFAfter s6Step29EntryFRow 254 s6Step29EntryFFresh
    s6Step29EntryF_distinct s6Step29EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step29EntryF_reserved
  have rowEq : WindowRow.mk (s6Step29EntryFRow.payload++s6Step29EntryFFresh) s6Step29EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step29EntryGBefore : Arena := s6Step29EntryFBefore
def s6Step29EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step29EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252],777⟩
def s6Step29EntryGFresh : List Wire := [859]
theorem s6Step29EntryG_distinct : (s6Step29EntryGRow.sign::s6Step29EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29EntryG_owned : (s6Step29EntryGRow.sign::s6Step29EntryGRow.payload).toFinset⊆s6Step29EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step29EntryGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EntryG_reserved : s6Step29EntryGBefore.reserve s6Step29EntryGFresh.toFinset=some s6Step29EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step29EntryGFresh,arenaWires]
  · norm_num [s6Step29EntryGBefore,s6Step29EntryFBefore,s6Step29EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step29EntryGBefore s6Step29EntryGAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EntryGFresh rfl rfl
    · norm_num [s6Step29EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step29EntryG_checked : planRowResizeLog s6Step29EntryGBefore s6Step29EntryGRow 254 s6Step29EntryGFresh=
    some (s6Step29EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 859],777⟩,growRow 777 s6Step29EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step29EntryGBefore s6Step29EntryGAfter s6Step29EntryGRow 254 s6Step29EntryGFresh
    s6Step29EntryG_distinct s6Step29EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step29EntryG_reserved
  have rowEq : WindowRow.mk (s6Step29EntryGRow.payload++s6Step29EntryGFresh) s6Step29EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step29EntryFvBefore : Arena := s6Step29EntryGAfter
def s6Step29EntryFvAfter : Arena := s6Step29EntryGAfter
def s6Step29EntryFvRow : WindowRow := ⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩
def s6Step29EntryFvFresh : List Wire := []
theorem s6Step29EntryFv_distinct : (s6Step29EntryFvRow.sign::s6Step29EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29EntryFv_owned : (s6Step29EntryFvRow.sign::s6Step29EntryFvRow.payload).toFinset⊆s6Step29EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step29EntryFvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EntryFv_reserved : s6Step29EntryFvBefore.reserve s6Step29EntryFvFresh.toFinset=some s6Step29EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step29EntryFvFresh,arenaWires]
  · norm_num [s6Step29EntryFvBefore,s6Step29EntryGAfter,s6Step29EntryFvFresh,arenaWires]
  · simp only [s6Step29EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step29EntryFv_checked : planRowResizeLog s6Step29EntryFvBefore s6Step29EntryFvRow 28 s6Step29EntryFvFresh=
    some (s6Step29EntryFvAfter,⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩,growRow 776 s6Step29EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step29EntryFvBefore s6Step29EntryFvAfter s6Step29EntryFvRow 28 s6Step29EntryFvFresh
    s6Step29EntryFv_distinct s6Step29EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step29EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step29EntryFvRow.payload++s6Step29EntryFvFresh) s6Step29EntryFvRow.sign=⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step29EntryGvBefore : Arena := s6Step29EntryGAfter
def s6Step29EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step29EntryGvRow : WindowRow := ⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807],775⟩
def s6Step29EntryGvFresh : List Wire := [793]
theorem s6Step29EntryGv_distinct : (s6Step29EntryGvRow.sign::s6Step29EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29EntryGv_owned : (s6Step29EntryGvRow.sign::s6Step29EntryGvRow.payload).toFinset⊆s6Step29EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step29EntryGvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EntryGv_reserved : s6Step29EntryGvBefore.reserve s6Step29EntryGvFresh.toFinset=some s6Step29EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step29EntryGvFresh,arenaWires]
  · norm_num [s6Step29EntryGvBefore,s6Step29EntryGAfter,s6Step29EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step29EntryGvBefore s6Step29EntryGvAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EntryGvFresh rfl rfl
    · norm_num [s6Step29EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step29EntryGv_checked : planRowResizeLog s6Step29EntryGvBefore s6Step29EntryGvRow 28 s6Step29EntryGvFresh=
    some (s6Step29EntryGvAfter,⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 793],775⟩,growRow 775 s6Step29EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step29EntryGvBefore s6Step29EntryGvAfter s6Step29EntryGvRow 28 s6Step29EntryGvFresh
    s6Step29EntryGv_distinct s6Step29EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step29EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step29EntryGvRow.payload++s6Step29EntryGvFresh) s6Step29EntryGvRow.sign=⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step30EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step30EntryFAfter : Arena := s6Step30EntryFBefore
def s6Step30EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩
def s6Step30EntryFFresh : List Wire := []
theorem s6Step30EntryF_distinct : (s6Step30EntryFRow.sign::s6Step30EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30EntryF_owned : (s6Step30EntryFRow.sign::s6Step30EntryFRow.payload).toFinset⊆s6Step30EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step30EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EntryF_reserved : s6Step30EntryFBefore.reserve s6Step30EntryFFresh.toFinset=some s6Step30EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step30EntryFFresh,arenaWires]
  · norm_num [s6Step30EntryFBefore,s6Step30EntryFFresh,arenaWires]
  · simp only [s6Step30EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step30EntryF_checked : planRowResizeLog s6Step30EntryFBefore s6Step30EntryFRow 253 s6Step30EntryFFresh=
    some (s6Step30EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩,growRow 795 s6Step30EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step30EntryFBefore s6Step30EntryFAfter s6Step30EntryFRow 253 s6Step30EntryFFresh
    s6Step30EntryF_distinct s6Step30EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step30EntryF_reserved
  have rowEq : WindowRow.mk (s6Step30EntryFRow.payload++s6Step30EntryFFresh) s6Step30EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step30EntryGBefore : Arena := s6Step30EntryFBefore
def s6Step30EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step30EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251],777⟩
def s6Step30EntryGFresh : List Wire := [881]
theorem s6Step30EntryG_distinct : (s6Step30EntryGRow.sign::s6Step30EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30EntryG_owned : (s6Step30EntryGRow.sign::s6Step30EntryGRow.payload).toFinset⊆s6Step30EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step30EntryGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EntryG_reserved : s6Step30EntryGBefore.reserve s6Step30EntryGFresh.toFinset=some s6Step30EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step30EntryGFresh,arenaWires]
  · norm_num [s6Step30EntryGBefore,s6Step30EntryFBefore,s6Step30EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step30EntryGBefore s6Step30EntryGAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EntryGFresh rfl rfl
    · norm_num [s6Step30EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step30EntryG_checked : planRowResizeLog s6Step30EntryGBefore s6Step30EntryGRow 253 s6Step30EntryGFresh=
    some (s6Step30EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 881],777⟩,growRow 777 s6Step30EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step30EntryGBefore s6Step30EntryGAfter s6Step30EntryGRow 253 s6Step30EntryGFresh
    s6Step30EntryG_distinct s6Step30EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step30EntryG_reserved
  have rowEq : WindowRow.mk (s6Step30EntryGRow.payload++s6Step30EntryGFresh) s6Step30EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step30EntryFvBefore : Arena := s6Step30EntryGAfter
def s6Step30EntryFvAfter : Arena := s6Step30EntryGAfter
def s6Step30EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step30EntryFvFresh : List Wire := []
theorem s6Step30EntryFv_distinct : (s6Step30EntryFvRow.sign::s6Step30EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30EntryFv_owned : (s6Step30EntryFvRow.sign::s6Step30EntryFvRow.payload).toFinset⊆s6Step30EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step30EntryFvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EntryFv_reserved : s6Step30EntryFvBefore.reserve s6Step30EntryFvFresh.toFinset=some s6Step30EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step30EntryFvFresh,arenaWires]
  · norm_num [s6Step30EntryFvBefore,s6Step30EntryGAfter,s6Step30EntryFvFresh,arenaWires]
  · simp only [s6Step30EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step30EntryFv_checked : planRowResizeLog s6Step30EntryFvBefore s6Step30EntryFvRow 29 s6Step30EntryFvFresh=
    some (s6Step30EntryFvAfter,⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩,growRow 776 s6Step30EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step30EntryFvBefore s6Step30EntryFvAfter s6Step30EntryFvRow 29 s6Step30EntryFvFresh
    s6Step30EntryFv_distinct s6Step30EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step30EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step30EntryFvRow.payload++s6Step30EntryFvFresh) s6Step30EntryFvRow.sign=⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step30EntryGvBefore : Arena := s6Step30EntryGAfter
def s6Step30EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step30EntryGvRow : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807],775⟩
def s6Step30EntryGvFresh : List Wire := [768, 874]
theorem s6Step30EntryGv_distinct : (s6Step30EntryGvRow.sign::s6Step30EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30EntryGv_owned : (s6Step30EntryGvRow.sign::s6Step30EntryGvRow.payload).toFinset⊆s6Step30EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step30EntryGvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EntryGv_reserved : s6Step30EntryGvBefore.reserve s6Step30EntryGvFresh.toFinset=some s6Step30EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step30EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step30EntryGvBefore,s6Step30EntryGAfter,s6Step30EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step30EntryGvBefore s6Step30EntryGvAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EntryGvFresh rfl rfl
    · norm_num [s6Step30EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step30EntryGv_checked : planRowResizeLog s6Step30EntryGvBefore s6Step30EntryGvRow 29 s6Step30EntryGvFresh=
    some (s6Step30EntryGvAfter,⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 874],775⟩,growRow 775 s6Step30EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step30EntryGvBefore s6Step30EntryGvAfter s6Step30EntryGvRow 29 s6Step30EntryGvFresh
    s6Step30EntryGv_distinct s6Step30EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step30EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step30EntryGvRow.payload++s6Step30EntryGvFresh) s6Step30EntryGvRow.sign=⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 874],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
