import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step498HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 845, 917],769⟩
def s2Step498HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 901, 918],768⟩
def s2Step498HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 591, 590, 589, 588, 587, 586, 585, 584, 582, 583, 581, 579, 580, 578, 577, 576, 575, 573, 574, 572, 571, 570, 569, 568, 567, 566, 565, 564, 563, 562, 561, 560, 559, 558, 556, 557, 555, 554, 553, 552, 551, 550, 549, 548, 547, 546, 545, 544, 543, 542, 541, 540, 539, 538, 536, 537, 820, 780, 847, 783, 796, 789, 842, 802, 907, 846, 800, 837, 811, 782, 824, 792, 799, 836, 834, 841, 807, 830, 793, 779, 829, 815, 885, 806, 894, 784, 913, 808, 801, 790, 919],771⟩
def s2Step498HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 821, 832, 896, 882, 903, 819, 826, 831, 805, 835, 803, 785, 877, 915, 810, 809, 840, 867, 825, 851, 787, 817, 788, 804, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791, 920],770⟩
theorem s2Step498HeadBank_incomingDistinct : ([s2Step498HeadGRow,s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498HeadBank_outgoingOwned : rowsOwned s2Step498HeadFvAfter [s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498HeadFvAfter (fun q => (0≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498HeadG_Incoming : rowsOwned s2Step498HeadGBefore [s2Step498HeadGRow,s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498HeadGRow,s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow] 0 s2Step498HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498HeadGBefore (fun q => (0≤q ∧ q<917)) rfl
    decide +kernel
theorem s2Step498HeadG_Outgoing : rowsOwned s2Step498HeadFvAfter [s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] :=
  hmrRows_owned_drop s2Step498HeadFvAfter [s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] 0 s2Step498HeadBank_outgoingOwned
theorem s2Step498HeadF_Incoming : rowsOwned s2Step498HeadFBefore [s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498HeadGRow,s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow] 1 s2Step498HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498HeadFBefore (fun q => (0≤q ∧ q<918)) rfl
    decide +kernel
theorem s2Step498HeadF_Outgoing : rowsOwned s2Step498HeadFvAfter [s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] :=
  hmrRows_owned_drop s2Step498HeadFvAfter [s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] 1 s2Step498HeadBank_outgoingOwned
theorem s2Step498HeadGv_Incoming : rowsOwned s2Step498HeadGvBefore [s2Step498HeadGvRow,s2Step498HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498HeadGRow,s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow] 2 s2Step498HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498HeadGvBefore (fun q => (0≤q ∧ q<919)) rfl
    decide +kernel
theorem s2Step498HeadGv_Outgoing : rowsOwned s2Step498HeadFvAfter [s2Step498HeadGvOut,s2Step498HeadFvOut] :=
  hmrRows_owned_drop s2Step498HeadFvAfter [s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] 2 s2Step498HeadBank_outgoingOwned
theorem s2Step498HeadFv_Incoming : rowsOwned s2Step498HeadFvBefore [s2Step498HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498HeadGRow,s2Step498HeadFRow,s2Step498HeadGvRow,s2Step498HeadFvRow] 3 s2Step498HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498HeadFvBefore (fun q => (0≤q ∧ q<920)) rfl
    decide +kernel
theorem s2Step498HeadFv_Outgoing : rowsOwned s2Step498HeadFvAfter [s2Step498HeadFvOut] :=
  hmrRows_owned_drop s2Step498HeadFvAfter [s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut] 3 s2Step498HeadBank_outgoingOwned
theorem s2Step498HeadBank_rows : planWindowRowsLog s2Step498HeadGBefore [(s2Step498HeadGRow,26),(s2Step498HeadFRow,26),(s2Step498HeadGvRow,267),(s2Step498HeadFvRow,267)] [s2Step498HeadGFresh,s2Step498HeadFFresh,s2Step498HeadGvFresh,s2Step498HeadFvFresh]=
    some (s2Step498HeadFvAfter,[s2Step498HeadGOut,s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut],(growRow 769 s2Step498HeadGFresh ++ (growRow 768 s2Step498HeadFFresh ++ (growRow 771 s2Step498HeadGvFresh ++ (growRow 770 s2Step498HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step498HeadFvAfter [] []=some (s2Step498HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step498HeadFvBefore s2Step498HeadFvAfter s2Step498HeadFvAfter
    s2Step498HeadFvRow s2Step498HeadFvOut 267 s2Step498HeadFvFresh [] [] []
    (growRow 770 s2Step498HeadFvFresh) ([]) s2Step498HeadFv_Incoming s2Step498HeadFv_checked h4 s2Step498HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step498HeadGvBefore s2Step498HeadGvAfter s2Step498HeadFvAfter
    s2Step498HeadGvRow s2Step498HeadGvOut 267 s2Step498HeadGvFresh [(s2Step498HeadFvRow,267)] [s2Step498HeadFvFresh] [s2Step498HeadFvOut]
    (growRow 771 s2Step498HeadGvFresh) ((growRow 770 s2Step498HeadFvFresh ++ [])) s2Step498HeadGv_Incoming s2Step498HeadGv_checked h3 s2Step498HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step498HeadFBefore s2Step498HeadFAfter s2Step498HeadFvAfter
    s2Step498HeadFRow s2Step498HeadFOut 26 s2Step498HeadFFresh [(s2Step498HeadGvRow,267),(s2Step498HeadFvRow,267)] [s2Step498HeadGvFresh,s2Step498HeadFvFresh] [s2Step498HeadGvOut,s2Step498HeadFvOut]
    (growRow 768 s2Step498HeadFFresh) ((growRow 771 s2Step498HeadGvFresh ++ (growRow 770 s2Step498HeadFvFresh ++ []))) s2Step498HeadF_Incoming s2Step498HeadF_checked h2 s2Step498HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step498HeadGBefore s2Step498HeadGAfter s2Step498HeadFvAfter
    s2Step498HeadGRow s2Step498HeadGOut 26 s2Step498HeadGFresh [(s2Step498HeadFRow,26),(s2Step498HeadGvRow,267),(s2Step498HeadFvRow,267)] [s2Step498HeadFFresh,s2Step498HeadGvFresh,s2Step498HeadFvFresh] [s2Step498HeadFOut,s2Step498HeadGvOut,s2Step498HeadFvOut]
    (growRow 769 s2Step498HeadGFresh) ((growRow 768 s2Step498HeadFFresh ++ (growRow 771 s2Step498HeadGvFresh ++ (growRow 770 s2Step498HeadFvFresh ++ [])))) s2Step498HeadG_Incoming s2Step498HeadG_checked h1 s2Step498HeadG_Outgoing
  exact h0
theorem s2Step498HeadBank_checked : compileHmrBankResizeLog .headroom s2Step498HeadGBefore ⟨s2Step498HeadFRow,s2Step498HeadGRow,s2Step498HeadFvRow,s2Step498HeadGvRow⟩ ⟨26,26,267,267⟩ [s2Step498HeadGFresh,s2Step498HeadFFresh,s2Step498HeadGvFresh,s2Step498HeadFvFresh]=
    some (s2Step498HeadFvAfter,⟨s2Step498HeadFOut,s2Step498HeadGOut,s2Step498HeadFvOut,s2Step498HeadGvOut⟩,(growRow 769 s2Step498HeadGFresh ++ (growRow 768 s2Step498HeadFFresh ++ (growRow 771 s2Step498HeadGvFresh ++ (growRow 770 s2Step498HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step498HeadBank_rows]
  rfl
def s6Step0HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 862],777⟩
def s6Step0HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step0HeadGvOut : WindowRow := ⟨[859, 860],775⟩
def s6Step0HeadFvOut : WindowRow := ⟨[768, 876],776⟩
theorem s6Step0HeadBank_incomingDistinct : ([s6Step0HeadGRow,s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0HeadBank_outgoingOwned : rowsOwned s6Step0HeadFvAfter [s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0HeadG_Incoming : rowsOwned s6Step0HeadGBefore [s6Step0HeadGRow,s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0HeadGRow,s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow] 0 s6Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0HeadG_Outgoing : rowsOwned s6Step0HeadFvAfter [s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] :=
  hmrRows_owned_drop s6Step0HeadFvAfter [s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] 0 s6Step0HeadBank_outgoingOwned
theorem s6Step0HeadF_Incoming : rowsOwned s6Step0HeadFBefore [s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0HeadGRow,s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow] 1 s6Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0HeadF_Outgoing : rowsOwned s6Step0HeadFvAfter [s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] :=
  hmrRows_owned_drop s6Step0HeadFvAfter [s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] 1 s6Step0HeadBank_outgoingOwned
theorem s6Step0HeadGv_Incoming : rowsOwned s6Step0HeadGvBefore [s6Step0HeadGvRow,s6Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0HeadGRow,s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow] 2 s6Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0HeadGv_Outgoing : rowsOwned s6Step0HeadFvAfter [s6Step0HeadGvOut,s6Step0HeadFvOut] :=
  hmrRows_owned_drop s6Step0HeadFvAfter [s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] 2 s6Step0HeadBank_outgoingOwned
theorem s6Step0HeadFv_Incoming : rowsOwned s6Step0HeadFvBefore [s6Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0HeadGRow,s6Step0HeadFRow,s6Step0HeadGvRow,s6Step0HeadFvRow] 3 s6Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0HeadFv_Outgoing : rowsOwned s6Step0HeadFvAfter [s6Step0HeadFvOut] :=
  hmrRows_owned_drop s6Step0HeadFvAfter [s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut] 3 s6Step0HeadBank_outgoingOwned
theorem s6Step0HeadBank_rows : planWindowRowsLog s6Step0HeadGBefore [(s6Step0HeadGRow,257),(s6Step0HeadFRow,257),(s6Step0HeadGvRow,2),(s6Step0HeadFvRow,2)] [s6Step0HeadGFresh,s6Step0HeadFFresh,s6Step0HeadGvFresh,s6Step0HeadFvFresh]=
    some (s6Step0HeadFvAfter,[s6Step0HeadGOut,s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut],(growRow 777 s6Step0HeadGFresh ++ (growRow 795 s6Step0HeadFFresh ++ (growRow 775 s6Step0HeadGvFresh ++ (growRow 776 s6Step0HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step0HeadFvAfter [] []=some (s6Step0HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step0HeadFvBefore s6Step0HeadFvAfter s6Step0HeadFvAfter
    s6Step0HeadFvRow s6Step0HeadFvOut 2 s6Step0HeadFvFresh [] [] []
    (growRow 776 s6Step0HeadFvFresh) ([]) s6Step0HeadFv_Incoming s6Step0HeadFv_checked h4 s6Step0HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step0HeadGvBefore s6Step0HeadGvAfter s6Step0HeadFvAfter
    s6Step0HeadGvRow s6Step0HeadGvOut 2 s6Step0HeadGvFresh [(s6Step0HeadFvRow,2)] [s6Step0HeadFvFresh] [s6Step0HeadFvOut]
    (growRow 775 s6Step0HeadGvFresh) ((growRow 776 s6Step0HeadFvFresh ++ [])) s6Step0HeadGv_Incoming s6Step0HeadGv_checked h3 s6Step0HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step0HeadFBefore s6Step0HeadFAfter s6Step0HeadFvAfter
    s6Step0HeadFRow s6Step0HeadFOut 257 s6Step0HeadFFresh [(s6Step0HeadGvRow,2),(s6Step0HeadFvRow,2)] [s6Step0HeadGvFresh,s6Step0HeadFvFresh] [s6Step0HeadGvOut,s6Step0HeadFvOut]
    (growRow 795 s6Step0HeadFFresh) ((growRow 775 s6Step0HeadGvFresh ++ (growRow 776 s6Step0HeadFvFresh ++ []))) s6Step0HeadF_Incoming s6Step0HeadF_checked h2 s6Step0HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step0HeadGBefore s6Step0HeadGAfter s6Step0HeadFvAfter
    s6Step0HeadGRow s6Step0HeadGOut 257 s6Step0HeadGFresh [(s6Step0HeadFRow,257),(s6Step0HeadGvRow,2),(s6Step0HeadFvRow,2)] [s6Step0HeadFFresh,s6Step0HeadGvFresh,s6Step0HeadFvFresh] [s6Step0HeadFOut,s6Step0HeadGvOut,s6Step0HeadFvOut]
    (growRow 777 s6Step0HeadGFresh) ((growRow 795 s6Step0HeadFFresh ++ (growRow 775 s6Step0HeadGvFresh ++ (growRow 776 s6Step0HeadFvFresh ++ [])))) s6Step0HeadG_Incoming s6Step0HeadG_checked h1 s6Step0HeadG_Outgoing
  exact h0
theorem s6Step0HeadBank_checked : compileHmrBankResizeLog .headroom s6Step0HeadGBefore ⟨s6Step0HeadFRow,s6Step0HeadGRow,s6Step0HeadFvRow,s6Step0HeadGvRow⟩ ⟨257,257,2,2⟩ [s6Step0HeadGFresh,s6Step0HeadFFresh,s6Step0HeadGvFresh,s6Step0HeadFvFresh]=
    some (s6Step0HeadFvAfter,⟨s6Step0HeadFOut,s6Step0HeadGOut,s6Step0HeadFvOut,s6Step0HeadGvOut⟩,(growRow 777 s6Step0HeadGFresh ++ (growRow 795 s6Step0HeadFFresh ++ (growRow 775 s6Step0HeadGvFresh ++ (growRow 776 s6Step0HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step0HeadBank_rows]
  rfl
def s6Step1HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807],777⟩
def s6Step1HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862],795⟩
def s6Step1HeadGvOut : WindowRow := ⟨[859, 887, 874],775⟩
def s6Step1HeadFvOut : WindowRow := ⟨[255, 876, 793],776⟩
theorem s6Step1HeadBank_incomingDistinct : ([s6Step1HeadGRow,s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1HeadBank_outgoingOwned : rowsOwned s6Step1HeadFvAfter [s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step1HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1HeadG_Incoming : rowsOwned s6Step1HeadGBefore [s6Step1HeadGRow,s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1HeadGRow,s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow] 0 s6Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1HeadG_Outgoing : rowsOwned s6Step1HeadFvAfter [s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] :=
  hmrRows_owned_drop s6Step1HeadFvAfter [s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] 0 s6Step1HeadBank_outgoingOwned
theorem s6Step1HeadF_Incoming : rowsOwned s6Step1HeadFBefore [s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1HeadGRow,s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow] 1 s6Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1HeadF_Outgoing : rowsOwned s6Step1HeadFvAfter [s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] :=
  hmrRows_owned_drop s6Step1HeadFvAfter [s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] 1 s6Step1HeadBank_outgoingOwned
theorem s6Step1HeadGv_Incoming : rowsOwned s6Step1HeadGvBefore [s6Step1HeadGvRow,s6Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1HeadGRow,s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow] 2 s6Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1HeadGv_Outgoing : rowsOwned s6Step1HeadFvAfter [s6Step1HeadGvOut,s6Step1HeadFvOut] :=
  hmrRows_owned_drop s6Step1HeadFvAfter [s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] 2 s6Step1HeadBank_outgoingOwned
theorem s6Step1HeadFv_Incoming : rowsOwned s6Step1HeadFvBefore [s6Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1HeadGRow,s6Step1HeadFRow,s6Step1HeadGvRow,s6Step1HeadFvRow] 3 s6Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1HeadFv_Outgoing : rowsOwned s6Step1HeadFvAfter [s6Step1HeadFvOut] :=
  hmrRows_owned_drop s6Step1HeadFvAfter [s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut] 3 s6Step1HeadBank_outgoingOwned
theorem s6Step1HeadBank_rows : planWindowRowsLog s6Step1HeadGBefore [(s6Step1HeadGRow,257),(s6Step1HeadFRow,257),(s6Step1HeadGvRow,3),(s6Step1HeadFvRow,3)] [s6Step1HeadGFresh,s6Step1HeadFFresh,s6Step1HeadGvFresh,s6Step1HeadFvFresh]=
    some (s6Step1HeadFvAfter,[s6Step1HeadGOut,s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut],(growRow 777 s6Step1HeadGFresh ++ (growRow 795 s6Step1HeadFFresh ++ (growRow 775 s6Step1HeadGvFresh ++ (growRow 776 s6Step1HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step1HeadFvAfter [] []=some (s6Step1HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step1HeadFvBefore s6Step1HeadFvAfter s6Step1HeadFvAfter
    s6Step1HeadFvRow s6Step1HeadFvOut 3 s6Step1HeadFvFresh [] [] []
    (growRow 776 s6Step1HeadFvFresh) ([]) s6Step1HeadFv_Incoming s6Step1HeadFv_checked h4 s6Step1HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step1HeadGvBefore s6Step1HeadGvAfter s6Step1HeadFvAfter
    s6Step1HeadGvRow s6Step1HeadGvOut 3 s6Step1HeadGvFresh [(s6Step1HeadFvRow,3)] [s6Step1HeadFvFresh] [s6Step1HeadFvOut]
    (growRow 775 s6Step1HeadGvFresh) ((growRow 776 s6Step1HeadFvFresh ++ [])) s6Step1HeadGv_Incoming s6Step1HeadGv_checked h3 s6Step1HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step1HeadFBefore s6Step1HeadFAfter s6Step1HeadFvAfter
    s6Step1HeadFRow s6Step1HeadFOut 257 s6Step1HeadFFresh [(s6Step1HeadGvRow,3),(s6Step1HeadFvRow,3)] [s6Step1HeadGvFresh,s6Step1HeadFvFresh] [s6Step1HeadGvOut,s6Step1HeadFvOut]
    (growRow 795 s6Step1HeadFFresh) ((growRow 775 s6Step1HeadGvFresh ++ (growRow 776 s6Step1HeadFvFresh ++ []))) s6Step1HeadF_Incoming s6Step1HeadF_checked h2 s6Step1HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step1HeadGBefore s6Step1HeadGAfter s6Step1HeadFvAfter
    s6Step1HeadGRow s6Step1HeadGOut 257 s6Step1HeadGFresh [(s6Step1HeadFRow,257),(s6Step1HeadGvRow,3),(s6Step1HeadFvRow,3)] [s6Step1HeadFFresh,s6Step1HeadGvFresh,s6Step1HeadFvFresh] [s6Step1HeadFOut,s6Step1HeadGvOut,s6Step1HeadFvOut]
    (growRow 777 s6Step1HeadGFresh) ((growRow 795 s6Step1HeadFFresh ++ (growRow 775 s6Step1HeadGvFresh ++ (growRow 776 s6Step1HeadFvFresh ++ [])))) s6Step1HeadG_Incoming s6Step1HeadG_checked h1 s6Step1HeadG_Outgoing
  exact h0
theorem s6Step1HeadBank_checked : compileHmrBankResizeLog .headroom s6Step1HeadGBefore ⟨s6Step1HeadFRow,s6Step1HeadGRow,s6Step1HeadFvRow,s6Step1HeadGvRow⟩ ⟨257,257,3,3⟩ [s6Step1HeadGFresh,s6Step1HeadFFresh,s6Step1HeadGvFresh,s6Step1HeadFvFresh]=
    some (s6Step1HeadFvAfter,⟨s6Step1HeadFOut,s6Step1HeadGOut,s6Step1HeadFvOut,s6Step1HeadGvOut⟩,(growRow 777 s6Step1HeadGFresh ++ (growRow 795 s6Step1HeadFFresh ++ (growRow 775 s6Step1HeadGvFresh ++ (growRow 776 s6Step1HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step1HeadBank_rows]
  rfl
def s6Step2HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813],777⟩
def s6Step2HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step2HeadGvOut : WindowRow := ⟨[859, 768, 887, 927],775⟩
def s6Step2HeadFvOut : WindowRow := ⟨[255, 876, 793, 802],776⟩
theorem s6Step2HeadBank_incomingDistinct : ([s6Step2HeadGRow,s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2HeadBank_outgoingOwned : rowsOwned s6Step2HeadFvAfter [s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step2HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step2HeadG_Incoming : rowsOwned s6Step2HeadGBefore [s6Step2HeadGRow,s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2HeadGRow,s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow] 0 s6Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2HeadG_Outgoing : rowsOwned s6Step2HeadFvAfter [s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] :=
  hmrRows_owned_drop s6Step2HeadFvAfter [s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] 0 s6Step2HeadBank_outgoingOwned
theorem s6Step2HeadF_Incoming : rowsOwned s6Step2HeadFBefore [s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2HeadGRow,s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow] 1 s6Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2HeadF_Outgoing : rowsOwned s6Step2HeadFvAfter [s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] :=
  hmrRows_owned_drop s6Step2HeadFvAfter [s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] 1 s6Step2HeadBank_outgoingOwned
theorem s6Step2HeadGv_Incoming : rowsOwned s6Step2HeadGvBefore [s6Step2HeadGvRow,s6Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2HeadGRow,s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow] 2 s6Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2HeadGv_Outgoing : rowsOwned s6Step2HeadFvAfter [s6Step2HeadGvOut,s6Step2HeadFvOut] :=
  hmrRows_owned_drop s6Step2HeadFvAfter [s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] 2 s6Step2HeadBank_outgoingOwned
theorem s6Step2HeadFv_Incoming : rowsOwned s6Step2HeadFvBefore [s6Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2HeadGRow,s6Step2HeadFRow,s6Step2HeadGvRow,s6Step2HeadFvRow] 3 s6Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step2HeadFv_Outgoing : rowsOwned s6Step2HeadFvAfter [s6Step2HeadFvOut] :=
  hmrRows_owned_drop s6Step2HeadFvAfter [s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut] 3 s6Step2HeadBank_outgoingOwned
theorem s6Step2HeadBank_rows : planWindowRowsLog s6Step2HeadGBefore [(s6Step2HeadGRow,257),(s6Step2HeadFRow,257),(s6Step2HeadGvRow,4),(s6Step2HeadFvRow,4)] [s6Step2HeadGFresh,s6Step2HeadFFresh,s6Step2HeadGvFresh,s6Step2HeadFvFresh]=
    some (s6Step2HeadFvAfter,[s6Step2HeadGOut,s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut],(growRow 777 s6Step2HeadGFresh ++ (growRow 795 s6Step2HeadFFresh ++ (growRow 775 s6Step2HeadGvFresh ++ (growRow 776 s6Step2HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step2HeadFvAfter [] []=some (s6Step2HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step2HeadFvBefore s6Step2HeadFvAfter s6Step2HeadFvAfter
    s6Step2HeadFvRow s6Step2HeadFvOut 4 s6Step2HeadFvFresh [] [] []
    (growRow 776 s6Step2HeadFvFresh) ([]) s6Step2HeadFv_Incoming s6Step2HeadFv_checked h4 s6Step2HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step2HeadGvBefore s6Step2HeadGvAfter s6Step2HeadFvAfter
    s6Step2HeadGvRow s6Step2HeadGvOut 4 s6Step2HeadGvFresh [(s6Step2HeadFvRow,4)] [s6Step2HeadFvFresh] [s6Step2HeadFvOut]
    (growRow 775 s6Step2HeadGvFresh) ((growRow 776 s6Step2HeadFvFresh ++ [])) s6Step2HeadGv_Incoming s6Step2HeadGv_checked h3 s6Step2HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step2HeadFBefore s6Step2HeadFAfter s6Step2HeadFvAfter
    s6Step2HeadFRow s6Step2HeadFOut 257 s6Step2HeadFFresh [(s6Step2HeadGvRow,4),(s6Step2HeadFvRow,4)] [s6Step2HeadGvFresh,s6Step2HeadFvFresh] [s6Step2HeadGvOut,s6Step2HeadFvOut]
    (growRow 795 s6Step2HeadFFresh) ((growRow 775 s6Step2HeadGvFresh ++ (growRow 776 s6Step2HeadFvFresh ++ []))) s6Step2HeadF_Incoming s6Step2HeadF_checked h2 s6Step2HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step2HeadGBefore s6Step2HeadGAfter s6Step2HeadFvAfter
    s6Step2HeadGRow s6Step2HeadGOut 257 s6Step2HeadGFresh [(s6Step2HeadFRow,257),(s6Step2HeadGvRow,4),(s6Step2HeadFvRow,4)] [s6Step2HeadFFresh,s6Step2HeadGvFresh,s6Step2HeadFvFresh] [s6Step2HeadFOut,s6Step2HeadGvOut,s6Step2HeadFvOut]
    (growRow 777 s6Step2HeadGFresh) ((growRow 795 s6Step2HeadFFresh ++ (growRow 775 s6Step2HeadGvFresh ++ (growRow 776 s6Step2HeadFvFresh ++ [])))) s6Step2HeadG_Incoming s6Step2HeadG_checked h1 s6Step2HeadG_Outgoing
  exact h0
theorem s6Step2HeadBank_checked : compileHmrBankResizeLog .headroom s6Step2HeadGBefore ⟨s6Step2HeadFRow,s6Step2HeadGRow,s6Step2HeadFvRow,s6Step2HeadGvRow⟩ ⟨257,257,4,4⟩ [s6Step2HeadGFresh,s6Step2HeadFFresh,s6Step2HeadGvFresh,s6Step2HeadFvFresh]=
    some (s6Step2HeadFvAfter,⟨s6Step2HeadFOut,s6Step2HeadGOut,s6Step2HeadFvOut,s6Step2HeadGvOut⟩,(growRow 777 s6Step2HeadGFresh ++ (growRow 795 s6Step2HeadFFresh ++ (growRow 775 s6Step2HeadGvFresh ++ (growRow 776 s6Step2HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step2HeadBank_rows]
  rfl
def s6Step3HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860],777⟩
def s6Step3HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813],795⟩
def s6Step3HeadGvOut : WindowRow := ⟨[859, 768, 874, 887, 875],775⟩
def s6Step3HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779],776⟩
theorem s6Step3HeadBank_incomingDistinct : ([s6Step3HeadGRow,s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3HeadBank_outgoingOwned : rowsOwned s6Step3HeadFvAfter [s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step3HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3HeadG_Incoming : rowsOwned s6Step3HeadGBefore [s6Step3HeadGRow,s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3HeadGRow,s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow] 0 s6Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3HeadG_Outgoing : rowsOwned s6Step3HeadFvAfter [s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] :=
  hmrRows_owned_drop s6Step3HeadFvAfter [s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] 0 s6Step3HeadBank_outgoingOwned
theorem s6Step3HeadF_Incoming : rowsOwned s6Step3HeadFBefore [s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3HeadGRow,s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow] 1 s6Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3HeadF_Outgoing : rowsOwned s6Step3HeadFvAfter [s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] :=
  hmrRows_owned_drop s6Step3HeadFvAfter [s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] 1 s6Step3HeadBank_outgoingOwned
theorem s6Step3HeadGv_Incoming : rowsOwned s6Step3HeadGvBefore [s6Step3HeadGvRow,s6Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3HeadGRow,s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow] 2 s6Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3HeadGv_Outgoing : rowsOwned s6Step3HeadFvAfter [s6Step3HeadGvOut,s6Step3HeadFvOut] :=
  hmrRows_owned_drop s6Step3HeadFvAfter [s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] 2 s6Step3HeadBank_outgoingOwned
theorem s6Step3HeadFv_Incoming : rowsOwned s6Step3HeadFvBefore [s6Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3HeadGRow,s6Step3HeadFRow,s6Step3HeadGvRow,s6Step3HeadFvRow] 3 s6Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3HeadFv_Outgoing : rowsOwned s6Step3HeadFvAfter [s6Step3HeadFvOut] :=
  hmrRows_owned_drop s6Step3HeadFvAfter [s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut] 3 s6Step3HeadBank_outgoingOwned
theorem s6Step3HeadBank_rows : planWindowRowsLog s6Step3HeadGBefore [(s6Step3HeadGRow,257),(s6Step3HeadFRow,257),(s6Step3HeadGvRow,5),(s6Step3HeadFvRow,5)] [s6Step3HeadGFresh,s6Step3HeadFFresh,s6Step3HeadGvFresh,s6Step3HeadFvFresh]=
    some (s6Step3HeadFvAfter,[s6Step3HeadGOut,s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut],(growRow 777 s6Step3HeadGFresh ++ (growRow 795 s6Step3HeadFFresh ++ (growRow 775 s6Step3HeadGvFresh ++ (growRow 776 s6Step3HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step3HeadFvAfter [] []=some (s6Step3HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step3HeadFvBefore s6Step3HeadFvAfter s6Step3HeadFvAfter
    s6Step3HeadFvRow s6Step3HeadFvOut 5 s6Step3HeadFvFresh [] [] []
    (growRow 776 s6Step3HeadFvFresh) ([]) s6Step3HeadFv_Incoming s6Step3HeadFv_checked h4 s6Step3HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step3HeadGvBefore s6Step3HeadGvAfter s6Step3HeadFvAfter
    s6Step3HeadGvRow s6Step3HeadGvOut 5 s6Step3HeadGvFresh [(s6Step3HeadFvRow,5)] [s6Step3HeadFvFresh] [s6Step3HeadFvOut]
    (growRow 775 s6Step3HeadGvFresh) ((growRow 776 s6Step3HeadFvFresh ++ [])) s6Step3HeadGv_Incoming s6Step3HeadGv_checked h3 s6Step3HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step3HeadFBefore s6Step3HeadFAfter s6Step3HeadFvAfter
    s6Step3HeadFRow s6Step3HeadFOut 257 s6Step3HeadFFresh [(s6Step3HeadGvRow,5),(s6Step3HeadFvRow,5)] [s6Step3HeadGvFresh,s6Step3HeadFvFresh] [s6Step3HeadGvOut,s6Step3HeadFvOut]
    (growRow 795 s6Step3HeadFFresh) ((growRow 775 s6Step3HeadGvFresh ++ (growRow 776 s6Step3HeadFvFresh ++ []))) s6Step3HeadF_Incoming s6Step3HeadF_checked h2 s6Step3HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step3HeadGBefore s6Step3HeadGAfter s6Step3HeadFvAfter
    s6Step3HeadGRow s6Step3HeadGOut 257 s6Step3HeadGFresh [(s6Step3HeadFRow,257),(s6Step3HeadGvRow,5),(s6Step3HeadFvRow,5)] [s6Step3HeadFFresh,s6Step3HeadGvFresh,s6Step3HeadFvFresh] [s6Step3HeadFOut,s6Step3HeadGvOut,s6Step3HeadFvOut]
    (growRow 777 s6Step3HeadGFresh) ((growRow 795 s6Step3HeadFFresh ++ (growRow 775 s6Step3HeadGvFresh ++ (growRow 776 s6Step3HeadFvFresh ++ [])))) s6Step3HeadG_Incoming s6Step3HeadG_checked h1 s6Step3HeadG_Outgoing
  exact h0
theorem s6Step3HeadBank_checked : compileHmrBankResizeLog .headroom s6Step3HeadGBefore ⟨s6Step3HeadFRow,s6Step3HeadGRow,s6Step3HeadFvRow,s6Step3HeadGvRow⟩ ⟨257,257,5,5⟩ [s6Step3HeadGFresh,s6Step3HeadFFresh,s6Step3HeadGvFresh,s6Step3HeadFvFresh]=
    some (s6Step3HeadFvAfter,⟨s6Step3HeadFOut,s6Step3HeadGOut,s6Step3HeadFvOut,s6Step3HeadGvOut⟩,(growRow 777 s6Step3HeadGFresh ++ (growRow 795 s6Step3HeadFFresh ++ (growRow 775 s6Step3HeadGvFresh ++ (growRow 776 s6Step3HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step3HeadBank_rows]
  rfl
def s6Step4HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862],777⟩
def s6Step4HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860],795⟩
def s6Step4HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 887, 868],775⟩
def s6Step4HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857],776⟩
theorem s6Step4HeadBank_incomingDistinct : ([s6Step4HeadGRow,s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4HeadBank_outgoingOwned : rowsOwned s6Step4HeadFvAfter [s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step4HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4HeadG_Incoming : rowsOwned s6Step4HeadGBefore [s6Step4HeadGRow,s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4HeadGRow,s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow] 0 s6Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4HeadG_Outgoing : rowsOwned s6Step4HeadFvAfter [s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] :=
  hmrRows_owned_drop s6Step4HeadFvAfter [s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] 0 s6Step4HeadBank_outgoingOwned
theorem s6Step4HeadF_Incoming : rowsOwned s6Step4HeadFBefore [s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4HeadGRow,s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow] 1 s6Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4HeadF_Outgoing : rowsOwned s6Step4HeadFvAfter [s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] :=
  hmrRows_owned_drop s6Step4HeadFvAfter [s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] 1 s6Step4HeadBank_outgoingOwned
theorem s6Step4HeadGv_Incoming : rowsOwned s6Step4HeadGvBefore [s6Step4HeadGvRow,s6Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4HeadGRow,s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow] 2 s6Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4HeadGv_Outgoing : rowsOwned s6Step4HeadFvAfter [s6Step4HeadGvOut,s6Step4HeadFvOut] :=
  hmrRows_owned_drop s6Step4HeadFvAfter [s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] 2 s6Step4HeadBank_outgoingOwned
theorem s6Step4HeadFv_Incoming : rowsOwned s6Step4HeadFvBefore [s6Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4HeadGRow,s6Step4HeadFRow,s6Step4HeadGvRow,s6Step4HeadFvRow] 3 s6Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4HeadFv_Outgoing : rowsOwned s6Step4HeadFvAfter [s6Step4HeadFvOut] :=
  hmrRows_owned_drop s6Step4HeadFvAfter [s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut] 3 s6Step4HeadBank_outgoingOwned
theorem s6Step4HeadBank_rows : planWindowRowsLog s6Step4HeadGBefore [(s6Step4HeadGRow,257),(s6Step4HeadFRow,257),(s6Step4HeadGvRow,6),(s6Step4HeadFvRow,6)] [s6Step4HeadGFresh,s6Step4HeadFFresh,s6Step4HeadGvFresh,s6Step4HeadFvFresh]=
    some (s6Step4HeadFvAfter,[s6Step4HeadGOut,s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut],(growRow 777 s6Step4HeadGFresh ++ (growRow 795 s6Step4HeadFFresh ++ (growRow 775 s6Step4HeadGvFresh ++ (growRow 776 s6Step4HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step4HeadFvAfter [] []=some (s6Step4HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step4HeadFvBefore s6Step4HeadFvAfter s6Step4HeadFvAfter
    s6Step4HeadFvRow s6Step4HeadFvOut 6 s6Step4HeadFvFresh [] [] []
    (growRow 776 s6Step4HeadFvFresh) ([]) s6Step4HeadFv_Incoming s6Step4HeadFv_checked h4 s6Step4HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step4HeadGvBefore s6Step4HeadGvAfter s6Step4HeadFvAfter
    s6Step4HeadGvRow s6Step4HeadGvOut 6 s6Step4HeadGvFresh [(s6Step4HeadFvRow,6)] [s6Step4HeadFvFresh] [s6Step4HeadFvOut]
    (growRow 775 s6Step4HeadGvFresh) ((growRow 776 s6Step4HeadFvFresh ++ [])) s6Step4HeadGv_Incoming s6Step4HeadGv_checked h3 s6Step4HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step4HeadFBefore s6Step4HeadFAfter s6Step4HeadFvAfter
    s6Step4HeadFRow s6Step4HeadFOut 257 s6Step4HeadFFresh [(s6Step4HeadGvRow,6),(s6Step4HeadFvRow,6)] [s6Step4HeadGvFresh,s6Step4HeadFvFresh] [s6Step4HeadGvOut,s6Step4HeadFvOut]
    (growRow 795 s6Step4HeadFFresh) ((growRow 775 s6Step4HeadGvFresh ++ (growRow 776 s6Step4HeadFvFresh ++ []))) s6Step4HeadF_Incoming s6Step4HeadF_checked h2 s6Step4HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step4HeadGBefore s6Step4HeadGAfter s6Step4HeadFvAfter
    s6Step4HeadGRow s6Step4HeadGOut 257 s6Step4HeadGFresh [(s6Step4HeadFRow,257),(s6Step4HeadGvRow,6),(s6Step4HeadFvRow,6)] [s6Step4HeadFFresh,s6Step4HeadGvFresh,s6Step4HeadFvFresh] [s6Step4HeadFOut,s6Step4HeadGvOut,s6Step4HeadFvOut]
    (growRow 777 s6Step4HeadGFresh) ((growRow 795 s6Step4HeadFFresh ++ (growRow 775 s6Step4HeadGvFresh ++ (growRow 776 s6Step4HeadFvFresh ++ [])))) s6Step4HeadG_Incoming s6Step4HeadG_checked h1 s6Step4HeadG_Outgoing
  exact h0
theorem s6Step4HeadBank_checked : compileHmrBankResizeLog .headroom s6Step4HeadGBefore ⟨s6Step4HeadFRow,s6Step4HeadGRow,s6Step4HeadFvRow,s6Step4HeadGvRow⟩ ⟨257,257,6,6⟩ [s6Step4HeadGFresh,s6Step4HeadFFresh,s6Step4HeadGvFresh,s6Step4HeadFvFresh]=
    some (s6Step4HeadFvAfter,⟨s6Step4HeadFOut,s6Step4HeadGOut,s6Step4HeadFvOut,s6Step4HeadGvOut⟩,(growRow 777 s6Step4HeadGFresh ++ (growRow 795 s6Step4HeadFFresh ++ (growRow 775 s6Step4HeadGvFresh ++ (growRow 776 s6Step4HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step4HeadBank_rows]
  rfl
def s6Step5HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807],777⟩
def s6Step5HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862],795⟩
def s6Step5HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 887, 907],775⟩
def s6Step5HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858],776⟩
theorem s6Step5HeadBank_incomingDistinct : ([s6Step5HeadGRow,s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5HeadBank_outgoingOwned : rowsOwned s6Step5HeadFvAfter [s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step5HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5HeadG_Incoming : rowsOwned s6Step5HeadGBefore [s6Step5HeadGRow,s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5HeadGRow,s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow] 0 s6Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5HeadG_Outgoing : rowsOwned s6Step5HeadFvAfter [s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] :=
  hmrRows_owned_drop s6Step5HeadFvAfter [s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] 0 s6Step5HeadBank_outgoingOwned
theorem s6Step5HeadF_Incoming : rowsOwned s6Step5HeadFBefore [s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5HeadGRow,s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow] 1 s6Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5HeadF_Outgoing : rowsOwned s6Step5HeadFvAfter [s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] :=
  hmrRows_owned_drop s6Step5HeadFvAfter [s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] 1 s6Step5HeadBank_outgoingOwned
theorem s6Step5HeadGv_Incoming : rowsOwned s6Step5HeadGvBefore [s6Step5HeadGvRow,s6Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5HeadGRow,s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow] 2 s6Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5HeadGv_Outgoing : rowsOwned s6Step5HeadFvAfter [s6Step5HeadGvOut,s6Step5HeadFvOut] :=
  hmrRows_owned_drop s6Step5HeadFvAfter [s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] 2 s6Step5HeadBank_outgoingOwned
theorem s6Step5HeadFv_Incoming : rowsOwned s6Step5HeadFvBefore [s6Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5HeadGRow,s6Step5HeadFRow,s6Step5HeadGvRow,s6Step5HeadFvRow] 3 s6Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5HeadFv_Outgoing : rowsOwned s6Step5HeadFvAfter [s6Step5HeadFvOut] :=
  hmrRows_owned_drop s6Step5HeadFvAfter [s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut] 3 s6Step5HeadBank_outgoingOwned
theorem s6Step5HeadBank_rows : planWindowRowsLog s6Step5HeadGBefore [(s6Step5HeadGRow,257),(s6Step5HeadFRow,257),(s6Step5HeadGvRow,7),(s6Step5HeadFvRow,7)] [s6Step5HeadGFresh,s6Step5HeadFFresh,s6Step5HeadGvFresh,s6Step5HeadFvFresh]=
    some (s6Step5HeadFvAfter,[s6Step5HeadGOut,s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut],(growRow 777 s6Step5HeadGFresh ++ (growRow 795 s6Step5HeadFFresh ++ (growRow 775 s6Step5HeadGvFresh ++ (growRow 776 s6Step5HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step5HeadFvAfter [] []=some (s6Step5HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step5HeadFvBefore s6Step5HeadFvAfter s6Step5HeadFvAfter
    s6Step5HeadFvRow s6Step5HeadFvOut 7 s6Step5HeadFvFresh [] [] []
    (growRow 776 s6Step5HeadFvFresh) ([]) s6Step5HeadFv_Incoming s6Step5HeadFv_checked h4 s6Step5HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step5HeadGvBefore s6Step5HeadGvAfter s6Step5HeadFvAfter
    s6Step5HeadGvRow s6Step5HeadGvOut 7 s6Step5HeadGvFresh [(s6Step5HeadFvRow,7)] [s6Step5HeadFvFresh] [s6Step5HeadFvOut]
    (growRow 775 s6Step5HeadGvFresh) ((growRow 776 s6Step5HeadFvFresh ++ [])) s6Step5HeadGv_Incoming s6Step5HeadGv_checked h3 s6Step5HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step5HeadFBefore s6Step5HeadFAfter s6Step5HeadFvAfter
    s6Step5HeadFRow s6Step5HeadFOut 257 s6Step5HeadFFresh [(s6Step5HeadGvRow,7),(s6Step5HeadFvRow,7)] [s6Step5HeadGvFresh,s6Step5HeadFvFresh] [s6Step5HeadGvOut,s6Step5HeadFvOut]
    (growRow 795 s6Step5HeadFFresh) ((growRow 775 s6Step5HeadGvFresh ++ (growRow 776 s6Step5HeadFvFresh ++ []))) s6Step5HeadF_Incoming s6Step5HeadF_checked h2 s6Step5HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step5HeadGBefore s6Step5HeadGAfter s6Step5HeadFvAfter
    s6Step5HeadGRow s6Step5HeadGOut 257 s6Step5HeadGFresh [(s6Step5HeadFRow,257),(s6Step5HeadGvRow,7),(s6Step5HeadFvRow,7)] [s6Step5HeadFFresh,s6Step5HeadGvFresh,s6Step5HeadFvFresh] [s6Step5HeadFOut,s6Step5HeadGvOut,s6Step5HeadFvOut]
    (growRow 777 s6Step5HeadGFresh) ((growRow 795 s6Step5HeadFFresh ++ (growRow 775 s6Step5HeadGvFresh ++ (growRow 776 s6Step5HeadFvFresh ++ [])))) s6Step5HeadG_Incoming s6Step5HeadG_checked h1 s6Step5HeadG_Outgoing
  exact h0
theorem s6Step5HeadBank_checked : compileHmrBankResizeLog .headroom s6Step5HeadGBefore ⟨s6Step5HeadFRow,s6Step5HeadGRow,s6Step5HeadFvRow,s6Step5HeadGvRow⟩ ⟨257,257,7,7⟩ [s6Step5HeadGFresh,s6Step5HeadFFresh,s6Step5HeadGvFresh,s6Step5HeadFvFresh]=
    some (s6Step5HeadFvAfter,⟨s6Step5HeadFOut,s6Step5HeadGOut,s6Step5HeadFvOut,s6Step5HeadGvOut⟩,(growRow 777 s6Step5HeadGFresh ++ (growRow 795 s6Step5HeadFFresh ++ (growRow 775 s6Step5HeadGvFresh ++ (growRow 776 s6Step5HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step5HeadBank_rows]
  rfl
def s6Step6HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813],777⟩
def s6Step6HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step6HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 887, 908],775⟩
def s6Step6HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845],776⟩
theorem s6Step6HeadBank_incomingDistinct : ([s6Step6HeadGRow,s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6HeadBank_outgoingOwned : rowsOwned s6Step6HeadFvAfter [s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step6HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6HeadG_Incoming : rowsOwned s6Step6HeadGBefore [s6Step6HeadGRow,s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6HeadGRow,s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow] 0 s6Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6HeadG_Outgoing : rowsOwned s6Step6HeadFvAfter [s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] :=
  hmrRows_owned_drop s6Step6HeadFvAfter [s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] 0 s6Step6HeadBank_outgoingOwned
theorem s6Step6HeadF_Incoming : rowsOwned s6Step6HeadFBefore [s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6HeadGRow,s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow] 1 s6Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6HeadF_Outgoing : rowsOwned s6Step6HeadFvAfter [s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] :=
  hmrRows_owned_drop s6Step6HeadFvAfter [s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] 1 s6Step6HeadBank_outgoingOwned
theorem s6Step6HeadGv_Incoming : rowsOwned s6Step6HeadGvBefore [s6Step6HeadGvRow,s6Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6HeadGRow,s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow] 2 s6Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6HeadGv_Outgoing : rowsOwned s6Step6HeadFvAfter [s6Step6HeadGvOut,s6Step6HeadFvOut] :=
  hmrRows_owned_drop s6Step6HeadFvAfter [s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] 2 s6Step6HeadBank_outgoingOwned
theorem s6Step6HeadFv_Incoming : rowsOwned s6Step6HeadFvBefore [s6Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6HeadGRow,s6Step6HeadFRow,s6Step6HeadGvRow,s6Step6HeadFvRow] 3 s6Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6HeadFv_Outgoing : rowsOwned s6Step6HeadFvAfter [s6Step6HeadFvOut] :=
  hmrRows_owned_drop s6Step6HeadFvAfter [s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut] 3 s6Step6HeadBank_outgoingOwned
theorem s6Step6HeadBank_rows : planWindowRowsLog s6Step6HeadGBefore [(s6Step6HeadGRow,257),(s6Step6HeadFRow,257),(s6Step6HeadGvRow,8),(s6Step6HeadFvRow,8)] [s6Step6HeadGFresh,s6Step6HeadFFresh,s6Step6HeadGvFresh,s6Step6HeadFvFresh]=
    some (s6Step6HeadFvAfter,[s6Step6HeadGOut,s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut],(growRow 777 s6Step6HeadGFresh ++ (growRow 795 s6Step6HeadFFresh ++ (growRow 775 s6Step6HeadGvFresh ++ (growRow 776 s6Step6HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step6HeadFvAfter [] []=some (s6Step6HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step6HeadFvBefore s6Step6HeadFvAfter s6Step6HeadFvAfter
    s6Step6HeadFvRow s6Step6HeadFvOut 8 s6Step6HeadFvFresh [] [] []
    (growRow 776 s6Step6HeadFvFresh) ([]) s6Step6HeadFv_Incoming s6Step6HeadFv_checked h4 s6Step6HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step6HeadGvBefore s6Step6HeadGvAfter s6Step6HeadFvAfter
    s6Step6HeadGvRow s6Step6HeadGvOut 8 s6Step6HeadGvFresh [(s6Step6HeadFvRow,8)] [s6Step6HeadFvFresh] [s6Step6HeadFvOut]
    (growRow 775 s6Step6HeadGvFresh) ((growRow 776 s6Step6HeadFvFresh ++ [])) s6Step6HeadGv_Incoming s6Step6HeadGv_checked h3 s6Step6HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step6HeadFBefore s6Step6HeadFAfter s6Step6HeadFvAfter
    s6Step6HeadFRow s6Step6HeadFOut 257 s6Step6HeadFFresh [(s6Step6HeadGvRow,8),(s6Step6HeadFvRow,8)] [s6Step6HeadGvFresh,s6Step6HeadFvFresh] [s6Step6HeadGvOut,s6Step6HeadFvOut]
    (growRow 795 s6Step6HeadFFresh) ((growRow 775 s6Step6HeadGvFresh ++ (growRow 776 s6Step6HeadFvFresh ++ []))) s6Step6HeadF_Incoming s6Step6HeadF_checked h2 s6Step6HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step6HeadGBefore s6Step6HeadGAfter s6Step6HeadFvAfter
    s6Step6HeadGRow s6Step6HeadGOut 257 s6Step6HeadGFresh [(s6Step6HeadFRow,257),(s6Step6HeadGvRow,8),(s6Step6HeadFvRow,8)] [s6Step6HeadFFresh,s6Step6HeadGvFresh,s6Step6HeadFvFresh] [s6Step6HeadFOut,s6Step6HeadGvOut,s6Step6HeadFvOut]
    (growRow 777 s6Step6HeadGFresh) ((growRow 795 s6Step6HeadFFresh ++ (growRow 775 s6Step6HeadGvFresh ++ (growRow 776 s6Step6HeadFvFresh ++ [])))) s6Step6HeadG_Incoming s6Step6HeadG_checked h1 s6Step6HeadG_Outgoing
  exact h0
theorem s6Step6HeadBank_checked : compileHmrBankResizeLog .headroom s6Step6HeadGBefore ⟨s6Step6HeadFRow,s6Step6HeadGRow,s6Step6HeadFvRow,s6Step6HeadGvRow⟩ ⟨257,257,8,8⟩ [s6Step6HeadGFresh,s6Step6HeadFFresh,s6Step6HeadGvFresh,s6Step6HeadFvFresh]=
    some (s6Step6HeadFvAfter,⟨s6Step6HeadFOut,s6Step6HeadGOut,s6Step6HeadFvOut,s6Step6HeadGvOut⟩,(growRow 777 s6Step6HeadGFresh ++ (growRow 795 s6Step6HeadFFresh ++ (growRow 775 s6Step6HeadGvFresh ++ (growRow 776 s6Step6HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step6HeadBank_rows]
  rfl
def s6Step7HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860],777⟩
def s6Step7HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813],795⟩
def s6Step7HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 887, 890],775⟩
def s6Step7HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805],776⟩
theorem s6Step7HeadBank_incomingDistinct : ([s6Step7HeadGRow,s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7HeadBank_outgoingOwned : rowsOwned s6Step7HeadFvAfter [s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step7HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7HeadG_Incoming : rowsOwned s6Step7HeadGBefore [s6Step7HeadGRow,s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7HeadGRow,s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow] 0 s6Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7HeadG_Outgoing : rowsOwned s6Step7HeadFvAfter [s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] :=
  hmrRows_owned_drop s6Step7HeadFvAfter [s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] 0 s6Step7HeadBank_outgoingOwned
theorem s6Step7HeadF_Incoming : rowsOwned s6Step7HeadFBefore [s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7HeadGRow,s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow] 1 s6Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7HeadF_Outgoing : rowsOwned s6Step7HeadFvAfter [s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] :=
  hmrRows_owned_drop s6Step7HeadFvAfter [s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] 1 s6Step7HeadBank_outgoingOwned
theorem s6Step7HeadGv_Incoming : rowsOwned s6Step7HeadGvBefore [s6Step7HeadGvRow,s6Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7HeadGRow,s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow] 2 s6Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7HeadGv_Outgoing : rowsOwned s6Step7HeadFvAfter [s6Step7HeadGvOut,s6Step7HeadFvOut] :=
  hmrRows_owned_drop s6Step7HeadFvAfter [s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] 2 s6Step7HeadBank_outgoingOwned
theorem s6Step7HeadFv_Incoming : rowsOwned s6Step7HeadFvBefore [s6Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7HeadGRow,s6Step7HeadFRow,s6Step7HeadGvRow,s6Step7HeadFvRow] 3 s6Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7HeadFv_Outgoing : rowsOwned s6Step7HeadFvAfter [s6Step7HeadFvOut] :=
  hmrRows_owned_drop s6Step7HeadFvAfter [s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut] 3 s6Step7HeadBank_outgoingOwned
theorem s6Step7HeadBank_rows : planWindowRowsLog s6Step7HeadGBefore [(s6Step7HeadGRow,257),(s6Step7HeadFRow,257),(s6Step7HeadGvRow,9),(s6Step7HeadFvRow,9)] [s6Step7HeadGFresh,s6Step7HeadFFresh,s6Step7HeadGvFresh,s6Step7HeadFvFresh]=
    some (s6Step7HeadFvAfter,[s6Step7HeadGOut,s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut],(growRow 777 s6Step7HeadGFresh ++ (growRow 795 s6Step7HeadFFresh ++ (growRow 775 s6Step7HeadGvFresh ++ (growRow 776 s6Step7HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step7HeadFvAfter [] []=some (s6Step7HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step7HeadFvBefore s6Step7HeadFvAfter s6Step7HeadFvAfter
    s6Step7HeadFvRow s6Step7HeadFvOut 9 s6Step7HeadFvFresh [] [] []
    (growRow 776 s6Step7HeadFvFresh) ([]) s6Step7HeadFv_Incoming s6Step7HeadFv_checked h4 s6Step7HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step7HeadGvBefore s6Step7HeadGvAfter s6Step7HeadFvAfter
    s6Step7HeadGvRow s6Step7HeadGvOut 9 s6Step7HeadGvFresh [(s6Step7HeadFvRow,9)] [s6Step7HeadFvFresh] [s6Step7HeadFvOut]
    (growRow 775 s6Step7HeadGvFresh) ((growRow 776 s6Step7HeadFvFresh ++ [])) s6Step7HeadGv_Incoming s6Step7HeadGv_checked h3 s6Step7HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step7HeadFBefore s6Step7HeadFAfter s6Step7HeadFvAfter
    s6Step7HeadFRow s6Step7HeadFOut 257 s6Step7HeadFFresh [(s6Step7HeadGvRow,9),(s6Step7HeadFvRow,9)] [s6Step7HeadGvFresh,s6Step7HeadFvFresh] [s6Step7HeadGvOut,s6Step7HeadFvOut]
    (growRow 795 s6Step7HeadFFresh) ((growRow 775 s6Step7HeadGvFresh ++ (growRow 776 s6Step7HeadFvFresh ++ []))) s6Step7HeadF_Incoming s6Step7HeadF_checked h2 s6Step7HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step7HeadGBefore s6Step7HeadGAfter s6Step7HeadFvAfter
    s6Step7HeadGRow s6Step7HeadGOut 257 s6Step7HeadGFresh [(s6Step7HeadFRow,257),(s6Step7HeadGvRow,9),(s6Step7HeadFvRow,9)] [s6Step7HeadFFresh,s6Step7HeadGvFresh,s6Step7HeadFvFresh] [s6Step7HeadFOut,s6Step7HeadGvOut,s6Step7HeadFvOut]
    (growRow 777 s6Step7HeadGFresh) ((growRow 795 s6Step7HeadFFresh ++ (growRow 775 s6Step7HeadGvFresh ++ (growRow 776 s6Step7HeadFvFresh ++ [])))) s6Step7HeadG_Incoming s6Step7HeadG_checked h1 s6Step7HeadG_Outgoing
  exact h0
theorem s6Step7HeadBank_checked : compileHmrBankResizeLog .headroom s6Step7HeadGBefore ⟨s6Step7HeadFRow,s6Step7HeadGRow,s6Step7HeadFvRow,s6Step7HeadGvRow⟩ ⟨257,257,9,9⟩ [s6Step7HeadGFresh,s6Step7HeadFFresh,s6Step7HeadGvFresh,s6Step7HeadFvFresh]=
    some (s6Step7HeadFvAfter,⟨s6Step7HeadFOut,s6Step7HeadGOut,s6Step7HeadFvOut,s6Step7HeadGvOut⟩,(growRow 777 s6Step7HeadGFresh ++ (growRow 795 s6Step7HeadFFresh ++ (growRow 775 s6Step7HeadGvFresh ++ (growRow 776 s6Step7HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step7HeadBank_rows]
  rfl
def s6Step8HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862],777⟩
def s6Step8HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860],795⟩
def s6Step8HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 887, 873],775⟩
def s6Step8HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796],776⟩
theorem s6Step8HeadBank_incomingDistinct : ([s6Step8HeadGRow,s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8HeadBank_outgoingOwned : rowsOwned s6Step8HeadFvAfter [s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step8HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8HeadG_Incoming : rowsOwned s6Step8HeadGBefore [s6Step8HeadGRow,s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8HeadGRow,s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow] 0 s6Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8HeadG_Outgoing : rowsOwned s6Step8HeadFvAfter [s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] :=
  hmrRows_owned_drop s6Step8HeadFvAfter [s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] 0 s6Step8HeadBank_outgoingOwned
theorem s6Step8HeadF_Incoming : rowsOwned s6Step8HeadFBefore [s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8HeadGRow,s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow] 1 s6Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8HeadF_Outgoing : rowsOwned s6Step8HeadFvAfter [s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] :=
  hmrRows_owned_drop s6Step8HeadFvAfter [s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] 1 s6Step8HeadBank_outgoingOwned
theorem s6Step8HeadGv_Incoming : rowsOwned s6Step8HeadGvBefore [s6Step8HeadGvRow,s6Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8HeadGRow,s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow] 2 s6Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8HeadGv_Outgoing : rowsOwned s6Step8HeadFvAfter [s6Step8HeadGvOut,s6Step8HeadFvOut] :=
  hmrRows_owned_drop s6Step8HeadFvAfter [s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] 2 s6Step8HeadBank_outgoingOwned
theorem s6Step8HeadFv_Incoming : rowsOwned s6Step8HeadFvBefore [s6Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8HeadGRow,s6Step8HeadFRow,s6Step8HeadGvRow,s6Step8HeadFvRow] 3 s6Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8HeadFv_Outgoing : rowsOwned s6Step8HeadFvAfter [s6Step8HeadFvOut] :=
  hmrRows_owned_drop s6Step8HeadFvAfter [s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut] 3 s6Step8HeadBank_outgoingOwned
theorem s6Step8HeadBank_rows : planWindowRowsLog s6Step8HeadGBefore [(s6Step8HeadGRow,257),(s6Step8HeadFRow,257),(s6Step8HeadGvRow,10),(s6Step8HeadFvRow,10)] [s6Step8HeadGFresh,s6Step8HeadFFresh,s6Step8HeadGvFresh,s6Step8HeadFvFresh]=
    some (s6Step8HeadFvAfter,[s6Step8HeadGOut,s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut],(growRow 777 s6Step8HeadGFresh ++ (growRow 795 s6Step8HeadFFresh ++ (growRow 775 s6Step8HeadGvFresh ++ (growRow 776 s6Step8HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step8HeadFvAfter [] []=some (s6Step8HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step8HeadFvBefore s6Step8HeadFvAfter s6Step8HeadFvAfter
    s6Step8HeadFvRow s6Step8HeadFvOut 10 s6Step8HeadFvFresh [] [] []
    (growRow 776 s6Step8HeadFvFresh) ([]) s6Step8HeadFv_Incoming s6Step8HeadFv_checked h4 s6Step8HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step8HeadGvBefore s6Step8HeadGvAfter s6Step8HeadFvAfter
    s6Step8HeadGvRow s6Step8HeadGvOut 10 s6Step8HeadGvFresh [(s6Step8HeadFvRow,10)] [s6Step8HeadFvFresh] [s6Step8HeadFvOut]
    (growRow 775 s6Step8HeadGvFresh) ((growRow 776 s6Step8HeadFvFresh ++ [])) s6Step8HeadGv_Incoming s6Step8HeadGv_checked h3 s6Step8HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step8HeadFBefore s6Step8HeadFAfter s6Step8HeadFvAfter
    s6Step8HeadFRow s6Step8HeadFOut 257 s6Step8HeadFFresh [(s6Step8HeadGvRow,10),(s6Step8HeadFvRow,10)] [s6Step8HeadGvFresh,s6Step8HeadFvFresh] [s6Step8HeadGvOut,s6Step8HeadFvOut]
    (growRow 795 s6Step8HeadFFresh) ((growRow 775 s6Step8HeadGvFresh ++ (growRow 776 s6Step8HeadFvFresh ++ []))) s6Step8HeadF_Incoming s6Step8HeadF_checked h2 s6Step8HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step8HeadGBefore s6Step8HeadGAfter s6Step8HeadFvAfter
    s6Step8HeadGRow s6Step8HeadGOut 257 s6Step8HeadGFresh [(s6Step8HeadFRow,257),(s6Step8HeadGvRow,10),(s6Step8HeadFvRow,10)] [s6Step8HeadFFresh,s6Step8HeadGvFresh,s6Step8HeadFvFresh] [s6Step8HeadFOut,s6Step8HeadGvOut,s6Step8HeadFvOut]
    (growRow 777 s6Step8HeadGFresh) ((growRow 795 s6Step8HeadFFresh ++ (growRow 775 s6Step8HeadGvFresh ++ (growRow 776 s6Step8HeadFvFresh ++ [])))) s6Step8HeadG_Incoming s6Step8HeadG_checked h1 s6Step8HeadG_Outgoing
  exact h0
theorem s6Step8HeadBank_checked : compileHmrBankResizeLog .headroom s6Step8HeadGBefore ⟨s6Step8HeadFRow,s6Step8HeadGRow,s6Step8HeadFvRow,s6Step8HeadGvRow⟩ ⟨257,257,10,10⟩ [s6Step8HeadGFresh,s6Step8HeadFFresh,s6Step8HeadGvFresh,s6Step8HeadFvFresh]=
    some (s6Step8HeadFvAfter,⟨s6Step8HeadFOut,s6Step8HeadGOut,s6Step8HeadFvOut,s6Step8HeadGvOut⟩,(growRow 777 s6Step8HeadGFresh ++ (growRow 795 s6Step8HeadFFresh ++ (growRow 775 s6Step8HeadGvFresh ++ (growRow 776 s6Step8HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step8HeadBank_rows]
  rfl
def s6Step9HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807],777⟩
def s6Step9HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862],795⟩
def s6Step9HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 887, 863],775⟩
def s6Step9HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856],776⟩
theorem s6Step9HeadBank_incomingDistinct : ([s6Step9HeadGRow,s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9HeadBank_outgoingOwned : rowsOwned s6Step9HeadFvAfter [s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step9HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9HeadG_Incoming : rowsOwned s6Step9HeadGBefore [s6Step9HeadGRow,s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9HeadGRow,s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow] 0 s6Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9HeadG_Outgoing : rowsOwned s6Step9HeadFvAfter [s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] :=
  hmrRows_owned_drop s6Step9HeadFvAfter [s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] 0 s6Step9HeadBank_outgoingOwned
theorem s6Step9HeadF_Incoming : rowsOwned s6Step9HeadFBefore [s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9HeadGRow,s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow] 1 s6Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9HeadF_Outgoing : rowsOwned s6Step9HeadFvAfter [s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] :=
  hmrRows_owned_drop s6Step9HeadFvAfter [s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] 1 s6Step9HeadBank_outgoingOwned
theorem s6Step9HeadGv_Incoming : rowsOwned s6Step9HeadGvBefore [s6Step9HeadGvRow,s6Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9HeadGRow,s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow] 2 s6Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9HeadGv_Outgoing : rowsOwned s6Step9HeadFvAfter [s6Step9HeadGvOut,s6Step9HeadFvOut] :=
  hmrRows_owned_drop s6Step9HeadFvAfter [s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] 2 s6Step9HeadBank_outgoingOwned
theorem s6Step9HeadFv_Incoming : rowsOwned s6Step9HeadFvBefore [s6Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9HeadGRow,s6Step9HeadFRow,s6Step9HeadGvRow,s6Step9HeadFvRow] 3 s6Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9HeadFv_Outgoing : rowsOwned s6Step9HeadFvAfter [s6Step9HeadFvOut] :=
  hmrRows_owned_drop s6Step9HeadFvAfter [s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut] 3 s6Step9HeadBank_outgoingOwned
theorem s6Step9HeadBank_rows : planWindowRowsLog s6Step9HeadGBefore [(s6Step9HeadGRow,257),(s6Step9HeadFRow,257),(s6Step9HeadGvRow,11),(s6Step9HeadFvRow,11)] [s6Step9HeadGFresh,s6Step9HeadFFresh,s6Step9HeadGvFresh,s6Step9HeadFvFresh]=
    some (s6Step9HeadFvAfter,[s6Step9HeadGOut,s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut],(growRow 777 s6Step9HeadGFresh ++ (growRow 795 s6Step9HeadFFresh ++ (growRow 775 s6Step9HeadGvFresh ++ (growRow 776 s6Step9HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step9HeadFvAfter [] []=some (s6Step9HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step9HeadFvBefore s6Step9HeadFvAfter s6Step9HeadFvAfter
    s6Step9HeadFvRow s6Step9HeadFvOut 11 s6Step9HeadFvFresh [] [] []
    (growRow 776 s6Step9HeadFvFresh) ([]) s6Step9HeadFv_Incoming s6Step9HeadFv_checked h4 s6Step9HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step9HeadGvBefore s6Step9HeadGvAfter s6Step9HeadFvAfter
    s6Step9HeadGvRow s6Step9HeadGvOut 11 s6Step9HeadGvFresh [(s6Step9HeadFvRow,11)] [s6Step9HeadFvFresh] [s6Step9HeadFvOut]
    (growRow 775 s6Step9HeadGvFresh) ((growRow 776 s6Step9HeadFvFresh ++ [])) s6Step9HeadGv_Incoming s6Step9HeadGv_checked h3 s6Step9HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step9HeadFBefore s6Step9HeadFAfter s6Step9HeadFvAfter
    s6Step9HeadFRow s6Step9HeadFOut 257 s6Step9HeadFFresh [(s6Step9HeadGvRow,11),(s6Step9HeadFvRow,11)] [s6Step9HeadGvFresh,s6Step9HeadFvFresh] [s6Step9HeadGvOut,s6Step9HeadFvOut]
    (growRow 795 s6Step9HeadFFresh) ((growRow 775 s6Step9HeadGvFresh ++ (growRow 776 s6Step9HeadFvFresh ++ []))) s6Step9HeadF_Incoming s6Step9HeadF_checked h2 s6Step9HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step9HeadGBefore s6Step9HeadGAfter s6Step9HeadFvAfter
    s6Step9HeadGRow s6Step9HeadGOut 257 s6Step9HeadGFresh [(s6Step9HeadFRow,257),(s6Step9HeadGvRow,11),(s6Step9HeadFvRow,11)] [s6Step9HeadFFresh,s6Step9HeadGvFresh,s6Step9HeadFvFresh] [s6Step9HeadFOut,s6Step9HeadGvOut,s6Step9HeadFvOut]
    (growRow 777 s6Step9HeadGFresh) ((growRow 795 s6Step9HeadFFresh ++ (growRow 775 s6Step9HeadGvFresh ++ (growRow 776 s6Step9HeadFvFresh ++ [])))) s6Step9HeadG_Incoming s6Step9HeadG_checked h1 s6Step9HeadG_Outgoing
  exact h0
theorem s6Step9HeadBank_checked : compileHmrBankResizeLog .headroom s6Step9HeadGBefore ⟨s6Step9HeadFRow,s6Step9HeadGRow,s6Step9HeadFvRow,s6Step9HeadGvRow⟩ ⟨257,257,11,11⟩ [s6Step9HeadGFresh,s6Step9HeadFFresh,s6Step9HeadGvFresh,s6Step9HeadFvFresh]=
    some (s6Step9HeadFvAfter,⟨s6Step9HeadFOut,s6Step9HeadGOut,s6Step9HeadFvOut,s6Step9HeadGvOut⟩,(growRow 777 s6Step9HeadGFresh ++ (growRow 795 s6Step9HeadFFresh ++ (growRow 775 s6Step9HeadGvFresh ++ (growRow 776 s6Step9HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step9HeadBank_rows]
  rfl
def s6Step10HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813],777⟩
def s6Step10HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step10HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 887, 823],775⟩
def s6Step10HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865],776⟩
theorem s6Step10HeadBank_incomingDistinct : ([s6Step10HeadGRow,s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10HeadBank_outgoingOwned : rowsOwned s6Step10HeadFvAfter [s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step10HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10HeadG_Incoming : rowsOwned s6Step10HeadGBefore [s6Step10HeadGRow,s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10HeadGRow,s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow] 0 s6Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10HeadG_Outgoing : rowsOwned s6Step10HeadFvAfter [s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] :=
  hmrRows_owned_drop s6Step10HeadFvAfter [s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] 0 s6Step10HeadBank_outgoingOwned
theorem s6Step10HeadF_Incoming : rowsOwned s6Step10HeadFBefore [s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10HeadGRow,s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow] 1 s6Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10HeadF_Outgoing : rowsOwned s6Step10HeadFvAfter [s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] :=
  hmrRows_owned_drop s6Step10HeadFvAfter [s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] 1 s6Step10HeadBank_outgoingOwned
theorem s6Step10HeadGv_Incoming : rowsOwned s6Step10HeadGvBefore [s6Step10HeadGvRow,s6Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10HeadGRow,s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow] 2 s6Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10HeadGv_Outgoing : rowsOwned s6Step10HeadFvAfter [s6Step10HeadGvOut,s6Step10HeadFvOut] :=
  hmrRows_owned_drop s6Step10HeadFvAfter [s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] 2 s6Step10HeadBank_outgoingOwned
theorem s6Step10HeadFv_Incoming : rowsOwned s6Step10HeadFvBefore [s6Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10HeadGRow,s6Step10HeadFRow,s6Step10HeadGvRow,s6Step10HeadFvRow] 3 s6Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10HeadFv_Outgoing : rowsOwned s6Step10HeadFvAfter [s6Step10HeadFvOut] :=
  hmrRows_owned_drop s6Step10HeadFvAfter [s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut] 3 s6Step10HeadBank_outgoingOwned
theorem s6Step10HeadBank_rows : planWindowRowsLog s6Step10HeadGBefore [(s6Step10HeadGRow,257),(s6Step10HeadFRow,257),(s6Step10HeadGvRow,12),(s6Step10HeadFvRow,12)] [s6Step10HeadGFresh,s6Step10HeadFFresh,s6Step10HeadGvFresh,s6Step10HeadFvFresh]=
    some (s6Step10HeadFvAfter,[s6Step10HeadGOut,s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut],(growRow 777 s6Step10HeadGFresh ++ (growRow 795 s6Step10HeadFFresh ++ (growRow 775 s6Step10HeadGvFresh ++ (growRow 776 s6Step10HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step10HeadFvAfter [] []=some (s6Step10HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step10HeadFvBefore s6Step10HeadFvAfter s6Step10HeadFvAfter
    s6Step10HeadFvRow s6Step10HeadFvOut 12 s6Step10HeadFvFresh [] [] []
    (growRow 776 s6Step10HeadFvFresh) ([]) s6Step10HeadFv_Incoming s6Step10HeadFv_checked h4 s6Step10HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step10HeadGvBefore s6Step10HeadGvAfter s6Step10HeadFvAfter
    s6Step10HeadGvRow s6Step10HeadGvOut 12 s6Step10HeadGvFresh [(s6Step10HeadFvRow,12)] [s6Step10HeadFvFresh] [s6Step10HeadFvOut]
    (growRow 775 s6Step10HeadGvFresh) ((growRow 776 s6Step10HeadFvFresh ++ [])) s6Step10HeadGv_Incoming s6Step10HeadGv_checked h3 s6Step10HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step10HeadFBefore s6Step10HeadFAfter s6Step10HeadFvAfter
    s6Step10HeadFRow s6Step10HeadFOut 257 s6Step10HeadFFresh [(s6Step10HeadGvRow,12),(s6Step10HeadFvRow,12)] [s6Step10HeadGvFresh,s6Step10HeadFvFresh] [s6Step10HeadGvOut,s6Step10HeadFvOut]
    (growRow 795 s6Step10HeadFFresh) ((growRow 775 s6Step10HeadGvFresh ++ (growRow 776 s6Step10HeadFvFresh ++ []))) s6Step10HeadF_Incoming s6Step10HeadF_checked h2 s6Step10HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step10HeadGBefore s6Step10HeadGAfter s6Step10HeadFvAfter
    s6Step10HeadGRow s6Step10HeadGOut 257 s6Step10HeadGFresh [(s6Step10HeadFRow,257),(s6Step10HeadGvRow,12),(s6Step10HeadFvRow,12)] [s6Step10HeadFFresh,s6Step10HeadGvFresh,s6Step10HeadFvFresh] [s6Step10HeadFOut,s6Step10HeadGvOut,s6Step10HeadFvOut]
    (growRow 777 s6Step10HeadGFresh) ((growRow 795 s6Step10HeadFFresh ++ (growRow 775 s6Step10HeadGvFresh ++ (growRow 776 s6Step10HeadFvFresh ++ [])))) s6Step10HeadG_Incoming s6Step10HeadG_checked h1 s6Step10HeadG_Outgoing
  exact h0
theorem s6Step10HeadBank_checked : compileHmrBankResizeLog .headroom s6Step10HeadGBefore ⟨s6Step10HeadFRow,s6Step10HeadGRow,s6Step10HeadFvRow,s6Step10HeadGvRow⟩ ⟨257,257,12,12⟩ [s6Step10HeadGFresh,s6Step10HeadFFresh,s6Step10HeadGvFresh,s6Step10HeadFvFresh]=
    some (s6Step10HeadFvAfter,⟨s6Step10HeadFOut,s6Step10HeadGOut,s6Step10HeadFvOut,s6Step10HeadGvOut⟩,(growRow 777 s6Step10HeadGFresh ++ (growRow 795 s6Step10HeadFFresh ++ (growRow 775 s6Step10HeadGvFresh ++ (growRow 776 s6Step10HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step10HeadBank_rows]
  rfl
def s6Step11HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860],777⟩
def s6Step11HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813],795⟩
def s6Step11HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 887, 880],775⟩
def s6Step11HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789],776⟩
theorem s6Step11HeadBank_incomingDistinct : ([s6Step11HeadGRow,s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11HeadBank_outgoingOwned : rowsOwned s6Step11HeadFvAfter [s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step11HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11HeadG_Incoming : rowsOwned s6Step11HeadGBefore [s6Step11HeadGRow,s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11HeadGRow,s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow] 0 s6Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11HeadG_Outgoing : rowsOwned s6Step11HeadFvAfter [s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] :=
  hmrRows_owned_drop s6Step11HeadFvAfter [s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] 0 s6Step11HeadBank_outgoingOwned
theorem s6Step11HeadF_Incoming : rowsOwned s6Step11HeadFBefore [s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11HeadGRow,s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow] 1 s6Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11HeadF_Outgoing : rowsOwned s6Step11HeadFvAfter [s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] :=
  hmrRows_owned_drop s6Step11HeadFvAfter [s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] 1 s6Step11HeadBank_outgoingOwned
theorem s6Step11HeadGv_Incoming : rowsOwned s6Step11HeadGvBefore [s6Step11HeadGvRow,s6Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11HeadGRow,s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow] 2 s6Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11HeadGv_Outgoing : rowsOwned s6Step11HeadFvAfter [s6Step11HeadGvOut,s6Step11HeadFvOut] :=
  hmrRows_owned_drop s6Step11HeadFvAfter [s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] 2 s6Step11HeadBank_outgoingOwned
theorem s6Step11HeadFv_Incoming : rowsOwned s6Step11HeadFvBefore [s6Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11HeadGRow,s6Step11HeadFRow,s6Step11HeadGvRow,s6Step11HeadFvRow] 3 s6Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11HeadFv_Outgoing : rowsOwned s6Step11HeadFvAfter [s6Step11HeadFvOut] :=
  hmrRows_owned_drop s6Step11HeadFvAfter [s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut] 3 s6Step11HeadBank_outgoingOwned
theorem s6Step11HeadBank_rows : planWindowRowsLog s6Step11HeadGBefore [(s6Step11HeadGRow,257),(s6Step11HeadFRow,257),(s6Step11HeadGvRow,13),(s6Step11HeadFvRow,13)] [s6Step11HeadGFresh,s6Step11HeadFFresh,s6Step11HeadGvFresh,s6Step11HeadFvFresh]=
    some (s6Step11HeadFvAfter,[s6Step11HeadGOut,s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut],(growRow 777 s6Step11HeadGFresh ++ (growRow 795 s6Step11HeadFFresh ++ (growRow 775 s6Step11HeadGvFresh ++ (growRow 776 s6Step11HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step11HeadFvAfter [] []=some (s6Step11HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step11HeadFvBefore s6Step11HeadFvAfter s6Step11HeadFvAfter
    s6Step11HeadFvRow s6Step11HeadFvOut 13 s6Step11HeadFvFresh [] [] []
    (growRow 776 s6Step11HeadFvFresh) ([]) s6Step11HeadFv_Incoming s6Step11HeadFv_checked h4 s6Step11HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step11HeadGvBefore s6Step11HeadGvAfter s6Step11HeadFvAfter
    s6Step11HeadGvRow s6Step11HeadGvOut 13 s6Step11HeadGvFresh [(s6Step11HeadFvRow,13)] [s6Step11HeadFvFresh] [s6Step11HeadFvOut]
    (growRow 775 s6Step11HeadGvFresh) ((growRow 776 s6Step11HeadFvFresh ++ [])) s6Step11HeadGv_Incoming s6Step11HeadGv_checked h3 s6Step11HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step11HeadFBefore s6Step11HeadFAfter s6Step11HeadFvAfter
    s6Step11HeadFRow s6Step11HeadFOut 257 s6Step11HeadFFresh [(s6Step11HeadGvRow,13),(s6Step11HeadFvRow,13)] [s6Step11HeadGvFresh,s6Step11HeadFvFresh] [s6Step11HeadGvOut,s6Step11HeadFvOut]
    (growRow 795 s6Step11HeadFFresh) ((growRow 775 s6Step11HeadGvFresh ++ (growRow 776 s6Step11HeadFvFresh ++ []))) s6Step11HeadF_Incoming s6Step11HeadF_checked h2 s6Step11HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step11HeadGBefore s6Step11HeadGAfter s6Step11HeadFvAfter
    s6Step11HeadGRow s6Step11HeadGOut 257 s6Step11HeadGFresh [(s6Step11HeadFRow,257),(s6Step11HeadGvRow,13),(s6Step11HeadFvRow,13)] [s6Step11HeadFFresh,s6Step11HeadGvFresh,s6Step11HeadFvFresh] [s6Step11HeadFOut,s6Step11HeadGvOut,s6Step11HeadFvOut]
    (growRow 777 s6Step11HeadGFresh) ((growRow 795 s6Step11HeadFFresh ++ (growRow 775 s6Step11HeadGvFresh ++ (growRow 776 s6Step11HeadFvFresh ++ [])))) s6Step11HeadG_Incoming s6Step11HeadG_checked h1 s6Step11HeadG_Outgoing
  exact h0
theorem s6Step11HeadBank_checked : compileHmrBankResizeLog .headroom s6Step11HeadGBefore ⟨s6Step11HeadFRow,s6Step11HeadGRow,s6Step11HeadFvRow,s6Step11HeadGvRow⟩ ⟨257,257,13,13⟩ [s6Step11HeadGFresh,s6Step11HeadFFresh,s6Step11HeadGvFresh,s6Step11HeadFvFresh]=
    some (s6Step11HeadFvAfter,⟨s6Step11HeadFOut,s6Step11HeadGOut,s6Step11HeadFvOut,s6Step11HeadGvOut⟩,(growRow 777 s6Step11HeadGFresh ++ (growRow 795 s6Step11HeadFFresh ++ (growRow 775 s6Step11HeadGvFresh ++ (growRow 776 s6Step11HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step11HeadBank_rows]
  rfl
def s6Step12HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862],777⟩
def s6Step12HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860],795⟩
def s6Step12HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 887, 864],775⟩
def s6Step12HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818],776⟩
theorem s6Step12HeadBank_incomingDistinct : ([s6Step12HeadGRow,s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12HeadBank_outgoingOwned : rowsOwned s6Step12HeadFvAfter [s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step12HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12HeadG_Incoming : rowsOwned s6Step12HeadGBefore [s6Step12HeadGRow,s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12HeadGRow,s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow] 0 s6Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12HeadG_Outgoing : rowsOwned s6Step12HeadFvAfter [s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] :=
  hmrRows_owned_drop s6Step12HeadFvAfter [s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] 0 s6Step12HeadBank_outgoingOwned
theorem s6Step12HeadF_Incoming : rowsOwned s6Step12HeadFBefore [s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12HeadGRow,s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow] 1 s6Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12HeadF_Outgoing : rowsOwned s6Step12HeadFvAfter [s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] :=
  hmrRows_owned_drop s6Step12HeadFvAfter [s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] 1 s6Step12HeadBank_outgoingOwned
theorem s6Step12HeadGv_Incoming : rowsOwned s6Step12HeadGvBefore [s6Step12HeadGvRow,s6Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12HeadGRow,s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow] 2 s6Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12HeadGv_Outgoing : rowsOwned s6Step12HeadFvAfter [s6Step12HeadGvOut,s6Step12HeadFvOut] :=
  hmrRows_owned_drop s6Step12HeadFvAfter [s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] 2 s6Step12HeadBank_outgoingOwned
theorem s6Step12HeadFv_Incoming : rowsOwned s6Step12HeadFvBefore [s6Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12HeadGRow,s6Step12HeadFRow,s6Step12HeadGvRow,s6Step12HeadFvRow] 3 s6Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12HeadFv_Outgoing : rowsOwned s6Step12HeadFvAfter [s6Step12HeadFvOut] :=
  hmrRows_owned_drop s6Step12HeadFvAfter [s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut] 3 s6Step12HeadBank_outgoingOwned
theorem s6Step12HeadBank_rows : planWindowRowsLog s6Step12HeadGBefore [(s6Step12HeadGRow,257),(s6Step12HeadFRow,257),(s6Step12HeadGvRow,14),(s6Step12HeadFvRow,14)] [s6Step12HeadGFresh,s6Step12HeadFFresh,s6Step12HeadGvFresh,s6Step12HeadFvFresh]=
    some (s6Step12HeadFvAfter,[s6Step12HeadGOut,s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut],(growRow 777 s6Step12HeadGFresh ++ (growRow 795 s6Step12HeadFFresh ++ (growRow 775 s6Step12HeadGvFresh ++ (growRow 776 s6Step12HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step12HeadFvAfter [] []=some (s6Step12HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step12HeadFvBefore s6Step12HeadFvAfter s6Step12HeadFvAfter
    s6Step12HeadFvRow s6Step12HeadFvOut 14 s6Step12HeadFvFresh [] [] []
    (growRow 776 s6Step12HeadFvFresh) ([]) s6Step12HeadFv_Incoming s6Step12HeadFv_checked h4 s6Step12HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step12HeadGvBefore s6Step12HeadGvAfter s6Step12HeadFvAfter
    s6Step12HeadGvRow s6Step12HeadGvOut 14 s6Step12HeadGvFresh [(s6Step12HeadFvRow,14)] [s6Step12HeadFvFresh] [s6Step12HeadFvOut]
    (growRow 775 s6Step12HeadGvFresh) ((growRow 776 s6Step12HeadFvFresh ++ [])) s6Step12HeadGv_Incoming s6Step12HeadGv_checked h3 s6Step12HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step12HeadFBefore s6Step12HeadFAfter s6Step12HeadFvAfter
    s6Step12HeadFRow s6Step12HeadFOut 257 s6Step12HeadFFresh [(s6Step12HeadGvRow,14),(s6Step12HeadFvRow,14)] [s6Step12HeadGvFresh,s6Step12HeadFvFresh] [s6Step12HeadGvOut,s6Step12HeadFvOut]
    (growRow 795 s6Step12HeadFFresh) ((growRow 775 s6Step12HeadGvFresh ++ (growRow 776 s6Step12HeadFvFresh ++ []))) s6Step12HeadF_Incoming s6Step12HeadF_checked h2 s6Step12HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step12HeadGBefore s6Step12HeadGAfter s6Step12HeadFvAfter
    s6Step12HeadGRow s6Step12HeadGOut 257 s6Step12HeadGFresh [(s6Step12HeadFRow,257),(s6Step12HeadGvRow,14),(s6Step12HeadFvRow,14)] [s6Step12HeadFFresh,s6Step12HeadGvFresh,s6Step12HeadFvFresh] [s6Step12HeadFOut,s6Step12HeadGvOut,s6Step12HeadFvOut]
    (growRow 777 s6Step12HeadGFresh) ((growRow 795 s6Step12HeadFFresh ++ (growRow 775 s6Step12HeadGvFresh ++ (growRow 776 s6Step12HeadFvFresh ++ [])))) s6Step12HeadG_Incoming s6Step12HeadG_checked h1 s6Step12HeadG_Outgoing
  exact h0
theorem s6Step12HeadBank_checked : compileHmrBankResizeLog .headroom s6Step12HeadGBefore ⟨s6Step12HeadFRow,s6Step12HeadGRow,s6Step12HeadFvRow,s6Step12HeadGvRow⟩ ⟨257,257,14,14⟩ [s6Step12HeadGFresh,s6Step12HeadFFresh,s6Step12HeadGvFresh,s6Step12HeadFvFresh]=
    some (s6Step12HeadFvAfter,⟨s6Step12HeadFOut,s6Step12HeadGOut,s6Step12HeadFvOut,s6Step12HeadGvOut⟩,(growRow 777 s6Step12HeadGFresh ++ (growRow 795 s6Step12HeadFFresh ++ (growRow 775 s6Step12HeadGvFresh ++ (growRow 776 s6Step12HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step12HeadBank_rows]
  rfl
def s6Step13HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807],777⟩
def s6Step13HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862],795⟩
def s6Step13HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 887, 828],775⟩
def s6Step13HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892],776⟩
theorem s6Step13HeadBank_incomingDistinct : ([s6Step13HeadGRow,s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13HeadBank_outgoingOwned : rowsOwned s6Step13HeadFvAfter [s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step13HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13HeadG_Incoming : rowsOwned s6Step13HeadGBefore [s6Step13HeadGRow,s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13HeadGRow,s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow] 0 s6Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13HeadG_Outgoing : rowsOwned s6Step13HeadFvAfter [s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] :=
  hmrRows_owned_drop s6Step13HeadFvAfter [s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] 0 s6Step13HeadBank_outgoingOwned
theorem s6Step13HeadF_Incoming : rowsOwned s6Step13HeadFBefore [s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13HeadGRow,s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow] 1 s6Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13HeadF_Outgoing : rowsOwned s6Step13HeadFvAfter [s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] :=
  hmrRows_owned_drop s6Step13HeadFvAfter [s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] 1 s6Step13HeadBank_outgoingOwned
theorem s6Step13HeadGv_Incoming : rowsOwned s6Step13HeadGvBefore [s6Step13HeadGvRow,s6Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13HeadGRow,s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow] 2 s6Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13HeadGv_Outgoing : rowsOwned s6Step13HeadFvAfter [s6Step13HeadGvOut,s6Step13HeadFvOut] :=
  hmrRows_owned_drop s6Step13HeadFvAfter [s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] 2 s6Step13HeadBank_outgoingOwned
theorem s6Step13HeadFv_Incoming : rowsOwned s6Step13HeadFvBefore [s6Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13HeadGRow,s6Step13HeadFRow,s6Step13HeadGvRow,s6Step13HeadFvRow] 3 s6Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13HeadFv_Outgoing : rowsOwned s6Step13HeadFvAfter [s6Step13HeadFvOut] :=
  hmrRows_owned_drop s6Step13HeadFvAfter [s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut] 3 s6Step13HeadBank_outgoingOwned
theorem s6Step13HeadBank_rows : planWindowRowsLog s6Step13HeadGBefore [(s6Step13HeadGRow,257),(s6Step13HeadFRow,257),(s6Step13HeadGvRow,15),(s6Step13HeadFvRow,15)] [s6Step13HeadGFresh,s6Step13HeadFFresh,s6Step13HeadGvFresh,s6Step13HeadFvFresh]=
    some (s6Step13HeadFvAfter,[s6Step13HeadGOut,s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut],(growRow 777 s6Step13HeadGFresh ++ (growRow 795 s6Step13HeadFFresh ++ (growRow 775 s6Step13HeadGvFresh ++ (growRow 776 s6Step13HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step13HeadFvAfter [] []=some (s6Step13HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step13HeadFvBefore s6Step13HeadFvAfter s6Step13HeadFvAfter
    s6Step13HeadFvRow s6Step13HeadFvOut 15 s6Step13HeadFvFresh [] [] []
    (growRow 776 s6Step13HeadFvFresh) ([]) s6Step13HeadFv_Incoming s6Step13HeadFv_checked h4 s6Step13HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step13HeadGvBefore s6Step13HeadGvAfter s6Step13HeadFvAfter
    s6Step13HeadGvRow s6Step13HeadGvOut 15 s6Step13HeadGvFresh [(s6Step13HeadFvRow,15)] [s6Step13HeadFvFresh] [s6Step13HeadFvOut]
    (growRow 775 s6Step13HeadGvFresh) ((growRow 776 s6Step13HeadFvFresh ++ [])) s6Step13HeadGv_Incoming s6Step13HeadGv_checked h3 s6Step13HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step13HeadFBefore s6Step13HeadFAfter s6Step13HeadFvAfter
    s6Step13HeadFRow s6Step13HeadFOut 257 s6Step13HeadFFresh [(s6Step13HeadGvRow,15),(s6Step13HeadFvRow,15)] [s6Step13HeadGvFresh,s6Step13HeadFvFresh] [s6Step13HeadGvOut,s6Step13HeadFvOut]
    (growRow 795 s6Step13HeadFFresh) ((growRow 775 s6Step13HeadGvFresh ++ (growRow 776 s6Step13HeadFvFresh ++ []))) s6Step13HeadF_Incoming s6Step13HeadF_checked h2 s6Step13HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step13HeadGBefore s6Step13HeadGAfter s6Step13HeadFvAfter
    s6Step13HeadGRow s6Step13HeadGOut 257 s6Step13HeadGFresh [(s6Step13HeadFRow,257),(s6Step13HeadGvRow,15),(s6Step13HeadFvRow,15)] [s6Step13HeadFFresh,s6Step13HeadGvFresh,s6Step13HeadFvFresh] [s6Step13HeadFOut,s6Step13HeadGvOut,s6Step13HeadFvOut]
    (growRow 777 s6Step13HeadGFresh) ((growRow 795 s6Step13HeadFFresh ++ (growRow 775 s6Step13HeadGvFresh ++ (growRow 776 s6Step13HeadFvFresh ++ [])))) s6Step13HeadG_Incoming s6Step13HeadG_checked h1 s6Step13HeadG_Outgoing
  exact h0
theorem s6Step13HeadBank_checked : compileHmrBankResizeLog .headroom s6Step13HeadGBefore ⟨s6Step13HeadFRow,s6Step13HeadGRow,s6Step13HeadFvRow,s6Step13HeadGvRow⟩ ⟨257,257,15,15⟩ [s6Step13HeadGFresh,s6Step13HeadFFresh,s6Step13HeadGvFresh,s6Step13HeadFvFresh]=
    some (s6Step13HeadFvAfter,⟨s6Step13HeadFOut,s6Step13HeadGOut,s6Step13HeadFvOut,s6Step13HeadGvOut⟩,(growRow 777 s6Step13HeadGFresh ++ (growRow 795 s6Step13HeadFFresh ++ (growRow 775 s6Step13HeadGvFresh ++ (growRow 776 s6Step13HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step13HeadBank_rows]
  rfl
def s6Step14HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813],777⟩
def s6Step14HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step14HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 887, 822],775⟩
def s6Step14HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩
theorem s6Step14HeadBank_incomingDistinct : ([s6Step14HeadGRow,s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14HeadBank_outgoingOwned : rowsOwned s6Step14HeadFvAfter [s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step14HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14HeadG_Incoming : rowsOwned s6Step14HeadGBefore [s6Step14HeadGRow,s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14HeadGRow,s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow] 0 s6Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14HeadG_Outgoing : rowsOwned s6Step14HeadFvAfter [s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] :=
  hmrRows_owned_drop s6Step14HeadFvAfter [s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] 0 s6Step14HeadBank_outgoingOwned
theorem s6Step14HeadF_Incoming : rowsOwned s6Step14HeadFBefore [s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14HeadGRow,s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow] 1 s6Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14HeadF_Outgoing : rowsOwned s6Step14HeadFvAfter [s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] :=
  hmrRows_owned_drop s6Step14HeadFvAfter [s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] 1 s6Step14HeadBank_outgoingOwned
theorem s6Step14HeadGv_Incoming : rowsOwned s6Step14HeadGvBefore [s6Step14HeadGvRow,s6Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14HeadGRow,s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow] 2 s6Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14HeadGv_Outgoing : rowsOwned s6Step14HeadFvAfter [s6Step14HeadGvOut,s6Step14HeadFvOut] :=
  hmrRows_owned_drop s6Step14HeadFvAfter [s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] 2 s6Step14HeadBank_outgoingOwned
theorem s6Step14HeadFv_Incoming : rowsOwned s6Step14HeadFvBefore [s6Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14HeadGRow,s6Step14HeadFRow,s6Step14HeadGvRow,s6Step14HeadFvRow] 3 s6Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14HeadFv_Outgoing : rowsOwned s6Step14HeadFvAfter [s6Step14HeadFvOut] :=
  hmrRows_owned_drop s6Step14HeadFvAfter [s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut] 3 s6Step14HeadBank_outgoingOwned
theorem s6Step14HeadBank_rows : planWindowRowsLog s6Step14HeadGBefore [(s6Step14HeadGRow,257),(s6Step14HeadFRow,257),(s6Step14HeadGvRow,16),(s6Step14HeadFvRow,16)] [s6Step14HeadGFresh,s6Step14HeadFFresh,s6Step14HeadGvFresh,s6Step14HeadFvFresh]=
    some (s6Step14HeadFvAfter,[s6Step14HeadGOut,s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut],(growRow 777 s6Step14HeadGFresh ++ (growRow 795 s6Step14HeadFFresh ++ (growRow 775 s6Step14HeadGvFresh ++ (growRow 776 s6Step14HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step14HeadFvAfter [] []=some (s6Step14HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step14HeadFvBefore s6Step14HeadFvAfter s6Step14HeadFvAfter
    s6Step14HeadFvRow s6Step14HeadFvOut 16 s6Step14HeadFvFresh [] [] []
    (growRow 776 s6Step14HeadFvFresh) ([]) s6Step14HeadFv_Incoming s6Step14HeadFv_checked h4 s6Step14HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step14HeadGvBefore s6Step14HeadGvAfter s6Step14HeadFvAfter
    s6Step14HeadGvRow s6Step14HeadGvOut 16 s6Step14HeadGvFresh [(s6Step14HeadFvRow,16)] [s6Step14HeadFvFresh] [s6Step14HeadFvOut]
    (growRow 775 s6Step14HeadGvFresh) ((growRow 776 s6Step14HeadFvFresh ++ [])) s6Step14HeadGv_Incoming s6Step14HeadGv_checked h3 s6Step14HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step14HeadFBefore s6Step14HeadFAfter s6Step14HeadFvAfter
    s6Step14HeadFRow s6Step14HeadFOut 257 s6Step14HeadFFresh [(s6Step14HeadGvRow,16),(s6Step14HeadFvRow,16)] [s6Step14HeadGvFresh,s6Step14HeadFvFresh] [s6Step14HeadGvOut,s6Step14HeadFvOut]
    (growRow 795 s6Step14HeadFFresh) ((growRow 775 s6Step14HeadGvFresh ++ (growRow 776 s6Step14HeadFvFresh ++ []))) s6Step14HeadF_Incoming s6Step14HeadF_checked h2 s6Step14HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step14HeadGBefore s6Step14HeadGAfter s6Step14HeadFvAfter
    s6Step14HeadGRow s6Step14HeadGOut 257 s6Step14HeadGFresh [(s6Step14HeadFRow,257),(s6Step14HeadGvRow,16),(s6Step14HeadFvRow,16)] [s6Step14HeadFFresh,s6Step14HeadGvFresh,s6Step14HeadFvFresh] [s6Step14HeadFOut,s6Step14HeadGvOut,s6Step14HeadFvOut]
    (growRow 777 s6Step14HeadGFresh) ((growRow 795 s6Step14HeadFFresh ++ (growRow 775 s6Step14HeadGvFresh ++ (growRow 776 s6Step14HeadFvFresh ++ [])))) s6Step14HeadG_Incoming s6Step14HeadG_checked h1 s6Step14HeadG_Outgoing
  exact h0
theorem s6Step14HeadBank_checked : compileHmrBankResizeLog .headroom s6Step14HeadGBefore ⟨s6Step14HeadFRow,s6Step14HeadGRow,s6Step14HeadFvRow,s6Step14HeadGvRow⟩ ⟨257,257,16,16⟩ [s6Step14HeadGFresh,s6Step14HeadFFresh,s6Step14HeadGvFresh,s6Step14HeadFvFresh]=
    some (s6Step14HeadFvAfter,⟨s6Step14HeadFOut,s6Step14HeadGOut,s6Step14HeadFvOut,s6Step14HeadGvOut⟩,(growRow 777 s6Step14HeadGFresh ++ (growRow 795 s6Step14HeadFFresh ++ (growRow 775 s6Step14HeadGvFresh ++ (growRow 776 s6Step14HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step14HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
