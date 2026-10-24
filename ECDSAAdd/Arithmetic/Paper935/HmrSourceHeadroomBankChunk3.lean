import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 806],769⟩
def s2Step48HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 805],768⟩
def s2Step48HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 787],771⟩
def s2Step48HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 790],770⟩
theorem s2Step48HeadBank_incomingDistinct : ([s2Step48HeadGRow,s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48HeadBank_outgoingOwned : rowsOwned s2Step48HeadFvAfter [s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step48HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48HeadG_Incoming : rowsOwned s2Step48HeadGBefore [s2Step48HeadGRow,s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48HeadGRow,s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow] 0 s2Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48HeadG_Outgoing : rowsOwned s2Step48HeadFvAfter [s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] :=
  hmrRows_owned_drop s2Step48HeadFvAfter [s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] 0 s2Step48HeadBank_outgoingOwned
theorem s2Step48HeadF_Incoming : rowsOwned s2Step48HeadFBefore [s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48HeadGRow,s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow] 1 s2Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48HeadF_Outgoing : rowsOwned s2Step48HeadFvAfter [s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] :=
  hmrRows_owned_drop s2Step48HeadFvAfter [s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] 1 s2Step48HeadBank_outgoingOwned
theorem s2Step48HeadGv_Incoming : rowsOwned s2Step48HeadGvBefore [s2Step48HeadGvRow,s2Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48HeadGRow,s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow] 2 s2Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48HeadGv_Outgoing : rowsOwned s2Step48HeadFvAfter [s2Step48HeadGvOut,s2Step48HeadFvOut] :=
  hmrRows_owned_drop s2Step48HeadFvAfter [s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] 2 s2Step48HeadBank_outgoingOwned
theorem s2Step48HeadFv_Incoming : rowsOwned s2Step48HeadFvBefore [s2Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48HeadGRow,s2Step48HeadFRow,s2Step48HeadGvRow,s2Step48HeadFvRow] 3 s2Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48HeadFv_Outgoing : rowsOwned s2Step48HeadFvAfter [s2Step48HeadFvOut] :=
  hmrRows_owned_drop s2Step48HeadFvAfter [s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut] 3 s2Step48HeadBank_outgoingOwned
theorem s2Step48HeadBank_rows : planWindowRowsLog s2Step48HeadGBefore [(s2Step48HeadGRow,245),(s2Step48HeadFRow,245),(s2Step48HeadGvRow,38),(s2Step48HeadFvRow,38)] [s2Step48HeadGFresh,s2Step48HeadFFresh,s2Step48HeadGvFresh,s2Step48HeadFvFresh]=
    some (s2Step48HeadFvAfter,[s2Step48HeadGOut,s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut],(growRow 769 s2Step48HeadGFresh ++ (growRow 768 s2Step48HeadFFresh ++ (growRow 771 s2Step48HeadGvFresh ++ (growRow 770 s2Step48HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step48HeadFvAfter [] []=some (s2Step48HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step48HeadFvBefore s2Step48HeadFvAfter s2Step48HeadFvAfter
    s2Step48HeadFvRow s2Step48HeadFvOut 38 s2Step48HeadFvFresh [] [] []
    (growRow 770 s2Step48HeadFvFresh) ([]) s2Step48HeadFv_Incoming s2Step48HeadFv_checked h4 s2Step48HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step48HeadGvBefore s2Step48HeadGvAfter s2Step48HeadFvAfter
    s2Step48HeadGvRow s2Step48HeadGvOut 38 s2Step48HeadGvFresh [(s2Step48HeadFvRow,38)] [s2Step48HeadFvFresh] [s2Step48HeadFvOut]
    (growRow 771 s2Step48HeadGvFresh) ((growRow 770 s2Step48HeadFvFresh ++ [])) s2Step48HeadGv_Incoming s2Step48HeadGv_checked h3 s2Step48HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step48HeadFBefore s2Step48HeadFAfter s2Step48HeadFvAfter
    s2Step48HeadFRow s2Step48HeadFOut 245 s2Step48HeadFFresh [(s2Step48HeadGvRow,38),(s2Step48HeadFvRow,38)] [s2Step48HeadGvFresh,s2Step48HeadFvFresh] [s2Step48HeadGvOut,s2Step48HeadFvOut]
    (growRow 768 s2Step48HeadFFresh) ((growRow 771 s2Step48HeadGvFresh ++ (growRow 770 s2Step48HeadFvFresh ++ []))) s2Step48HeadF_Incoming s2Step48HeadF_checked h2 s2Step48HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step48HeadGBefore s2Step48HeadGAfter s2Step48HeadFvAfter
    s2Step48HeadGRow s2Step48HeadGOut 245 s2Step48HeadGFresh [(s2Step48HeadFRow,245),(s2Step48HeadGvRow,38),(s2Step48HeadFvRow,38)] [s2Step48HeadFFresh,s2Step48HeadGvFresh,s2Step48HeadFvFresh] [s2Step48HeadFOut,s2Step48HeadGvOut,s2Step48HeadFvOut]
    (growRow 769 s2Step48HeadGFresh) ((growRow 768 s2Step48HeadFFresh ++ (growRow 771 s2Step48HeadGvFresh ++ (growRow 770 s2Step48HeadFvFresh ++ [])))) s2Step48HeadG_Incoming s2Step48HeadG_checked h1 s2Step48HeadG_Outgoing
  exact h0
theorem s2Step48HeadBank_checked : compileHmrBankResizeLog .headroom s2Step48HeadGBefore ⟨s2Step48HeadFRow,s2Step48HeadGRow,s2Step48HeadFvRow,s2Step48HeadGvRow⟩ ⟨245,245,38,38⟩ [s2Step48HeadGFresh,s2Step48HeadFFresh,s2Step48HeadGvFresh,s2Step48HeadFvFresh]=
    some (s2Step48HeadFvAfter,⟨s2Step48HeadFOut,s2Step48HeadGOut,s2Step48HeadFvOut,s2Step48HeadGvOut⟩,(growRow 769 s2Step48HeadGFresh ++ (growRow 768 s2Step48HeadFFresh ++ (growRow 771 s2Step48HeadGvFresh ++ (growRow 770 s2Step48HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step48HeadBank_rows]
  rfl
def s2Step49HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803, 787],769⟩
def s2Step49HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 790],768⟩
def s2Step49HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 805],771⟩
def s2Step49HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
theorem s2Step49HeadBank_incomingDistinct : ([s2Step49HeadGRow,s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49HeadBank_outgoingOwned : rowsOwned s2Step49HeadFvAfter [s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step49HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49HeadG_Incoming : rowsOwned s2Step49HeadGBefore [s2Step49HeadGRow,s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49HeadGRow,s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow] 0 s2Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49HeadG_Outgoing : rowsOwned s2Step49HeadFvAfter [s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] :=
  hmrRows_owned_drop s2Step49HeadFvAfter [s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] 0 s2Step49HeadBank_outgoingOwned
theorem s2Step49HeadF_Incoming : rowsOwned s2Step49HeadFBefore [s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49HeadGRow,s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow] 1 s2Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49HeadF_Outgoing : rowsOwned s2Step49HeadFvAfter [s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] :=
  hmrRows_owned_drop s2Step49HeadFvAfter [s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] 1 s2Step49HeadBank_outgoingOwned
theorem s2Step49HeadGv_Incoming : rowsOwned s2Step49HeadGvBefore [s2Step49HeadGvRow,s2Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49HeadGRow,s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow] 2 s2Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49HeadGv_Outgoing : rowsOwned s2Step49HeadFvAfter [s2Step49HeadGvOut,s2Step49HeadFvOut] :=
  hmrRows_owned_drop s2Step49HeadFvAfter [s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] 2 s2Step49HeadBank_outgoingOwned
theorem s2Step49HeadFv_Incoming : rowsOwned s2Step49HeadFvBefore [s2Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49HeadGRow,s2Step49HeadFRow,s2Step49HeadGvRow,s2Step49HeadFvRow] 3 s2Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49HeadFv_Outgoing : rowsOwned s2Step49HeadFvAfter [s2Step49HeadFvOut] :=
  hmrRows_owned_drop s2Step49HeadFvAfter [s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut] 3 s2Step49HeadBank_outgoingOwned
theorem s2Step49HeadBank_rows : planWindowRowsLog s2Step49HeadGBefore [(s2Step49HeadGRow,245),(s2Step49HeadFRow,245),(s2Step49HeadGvRow,38),(s2Step49HeadFvRow,38)] [s2Step49HeadGFresh,s2Step49HeadFFresh,s2Step49HeadGvFresh,s2Step49HeadFvFresh]=
    some (s2Step49HeadFvAfter,[s2Step49HeadGOut,s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut],(growRow 769 s2Step49HeadGFresh ++ (growRow 768 s2Step49HeadFFresh ++ (growRow 771 s2Step49HeadGvFresh ++ (growRow 770 s2Step49HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step49HeadFvAfter [] []=some (s2Step49HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step49HeadFvBefore s2Step49HeadFvAfter s2Step49HeadFvAfter
    s2Step49HeadFvRow s2Step49HeadFvOut 38 s2Step49HeadFvFresh [] [] []
    (growRow 770 s2Step49HeadFvFresh) ([]) s2Step49HeadFv_Incoming s2Step49HeadFv_checked h4 s2Step49HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step49HeadGvBefore s2Step49HeadGvAfter s2Step49HeadFvAfter
    s2Step49HeadGvRow s2Step49HeadGvOut 38 s2Step49HeadGvFresh [(s2Step49HeadFvRow,38)] [s2Step49HeadFvFresh] [s2Step49HeadFvOut]
    (growRow 771 s2Step49HeadGvFresh) ((growRow 770 s2Step49HeadFvFresh ++ [])) s2Step49HeadGv_Incoming s2Step49HeadGv_checked h3 s2Step49HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step49HeadFBefore s2Step49HeadFAfter s2Step49HeadFvAfter
    s2Step49HeadFRow s2Step49HeadFOut 245 s2Step49HeadFFresh [(s2Step49HeadGvRow,38),(s2Step49HeadFvRow,38)] [s2Step49HeadGvFresh,s2Step49HeadFvFresh] [s2Step49HeadGvOut,s2Step49HeadFvOut]
    (growRow 768 s2Step49HeadFFresh) ((growRow 771 s2Step49HeadGvFresh ++ (growRow 770 s2Step49HeadFvFresh ++ []))) s2Step49HeadF_Incoming s2Step49HeadF_checked h2 s2Step49HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step49HeadGBefore s2Step49HeadGAfter s2Step49HeadFvAfter
    s2Step49HeadGRow s2Step49HeadGOut 245 s2Step49HeadGFresh [(s2Step49HeadFRow,245),(s2Step49HeadGvRow,38),(s2Step49HeadFvRow,38)] [s2Step49HeadFFresh,s2Step49HeadGvFresh,s2Step49HeadFvFresh] [s2Step49HeadFOut,s2Step49HeadGvOut,s2Step49HeadFvOut]
    (growRow 769 s2Step49HeadGFresh) ((growRow 768 s2Step49HeadFFresh ++ (growRow 771 s2Step49HeadGvFresh ++ (growRow 770 s2Step49HeadFvFresh ++ [])))) s2Step49HeadG_Incoming s2Step49HeadG_checked h1 s2Step49HeadG_Outgoing
  exact h0
theorem s2Step49HeadBank_checked : compileHmrBankResizeLog .headroom s2Step49HeadGBefore ⟨s2Step49HeadFRow,s2Step49HeadGRow,s2Step49HeadFvRow,s2Step49HeadGvRow⟩ ⟨245,245,38,38⟩ [s2Step49HeadGFresh,s2Step49HeadFFresh,s2Step49HeadGvFresh,s2Step49HeadFvFresh]=
    some (s2Step49HeadFvAfter,⟨s2Step49HeadFOut,s2Step49HeadGOut,s2Step49HeadFvOut,s2Step49HeadGvOut⟩,(growRow 769 s2Step49HeadGFresh ++ (growRow 768 s2Step49HeadFFresh ++ (growRow 771 s2Step49HeadGvFresh ++ (growRow 770 s2Step49HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step49HeadBank_rows]
  rfl
def s2Step50HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 805],769⟩
def s2Step50HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 790],768⟩
def s2Step50HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808, 803],771⟩
def s2Step50HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 787],770⟩
theorem s2Step50HeadBank_incomingDistinct : ([s2Step50HeadGRow,s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50HeadBank_outgoingOwned : rowsOwned s2Step50HeadFvAfter [s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step50HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50HeadG_Incoming : rowsOwned s2Step50HeadGBefore [s2Step50HeadGRow,s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50HeadGRow,s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow] 0 s2Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50HeadG_Outgoing : rowsOwned s2Step50HeadFvAfter [s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] :=
  hmrRows_owned_drop s2Step50HeadFvAfter [s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] 0 s2Step50HeadBank_outgoingOwned
theorem s2Step50HeadF_Incoming : rowsOwned s2Step50HeadFBefore [s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50HeadGRow,s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow] 1 s2Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50HeadF_Outgoing : rowsOwned s2Step50HeadFvAfter [s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] :=
  hmrRows_owned_drop s2Step50HeadFvAfter [s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] 1 s2Step50HeadBank_outgoingOwned
theorem s2Step50HeadGv_Incoming : rowsOwned s2Step50HeadGvBefore [s2Step50HeadGvRow,s2Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50HeadGRow,s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow] 2 s2Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50HeadGv_Outgoing : rowsOwned s2Step50HeadFvAfter [s2Step50HeadGvOut,s2Step50HeadFvOut] :=
  hmrRows_owned_drop s2Step50HeadFvAfter [s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] 2 s2Step50HeadBank_outgoingOwned
theorem s2Step50HeadFv_Incoming : rowsOwned s2Step50HeadFvBefore [s2Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50HeadGRow,s2Step50HeadFRow,s2Step50HeadGvRow,s2Step50HeadFvRow] 3 s2Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50HeadFv_Outgoing : rowsOwned s2Step50HeadFvAfter [s2Step50HeadFvOut] :=
  hmrRows_owned_drop s2Step50HeadFvAfter [s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut] 3 s2Step50HeadBank_outgoingOwned
theorem s2Step50HeadBank_rows : planWindowRowsLog s2Step50HeadGBefore [(s2Step50HeadGRow,244),(s2Step50HeadFRow,244),(s2Step50HeadGvRow,39),(s2Step50HeadFvRow,39)] [s2Step50HeadGFresh,s2Step50HeadFFresh,s2Step50HeadGvFresh,s2Step50HeadFvFresh]=
    some (s2Step50HeadFvAfter,[s2Step50HeadGOut,s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut],(growRow 769 s2Step50HeadGFresh ++ (growRow 768 s2Step50HeadFFresh ++ (growRow 771 s2Step50HeadGvFresh ++ (growRow 770 s2Step50HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step50HeadFvAfter [] []=some (s2Step50HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step50HeadFvBefore s2Step50HeadFvAfter s2Step50HeadFvAfter
    s2Step50HeadFvRow s2Step50HeadFvOut 39 s2Step50HeadFvFresh [] [] []
    (growRow 770 s2Step50HeadFvFresh) ([]) s2Step50HeadFv_Incoming s2Step50HeadFv_checked h4 s2Step50HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step50HeadGvBefore s2Step50HeadGvAfter s2Step50HeadFvAfter
    s2Step50HeadGvRow s2Step50HeadGvOut 39 s2Step50HeadGvFresh [(s2Step50HeadFvRow,39)] [s2Step50HeadFvFresh] [s2Step50HeadFvOut]
    (growRow 771 s2Step50HeadGvFresh) ((growRow 770 s2Step50HeadFvFresh ++ [])) s2Step50HeadGv_Incoming s2Step50HeadGv_checked h3 s2Step50HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step50HeadFBefore s2Step50HeadFAfter s2Step50HeadFvAfter
    s2Step50HeadFRow s2Step50HeadFOut 244 s2Step50HeadFFresh [(s2Step50HeadGvRow,39),(s2Step50HeadFvRow,39)] [s2Step50HeadGvFresh,s2Step50HeadFvFresh] [s2Step50HeadGvOut,s2Step50HeadFvOut]
    (growRow 768 s2Step50HeadFFresh) ((growRow 771 s2Step50HeadGvFresh ++ (growRow 770 s2Step50HeadFvFresh ++ []))) s2Step50HeadF_Incoming s2Step50HeadF_checked h2 s2Step50HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step50HeadGBefore s2Step50HeadGAfter s2Step50HeadFvAfter
    s2Step50HeadGRow s2Step50HeadGOut 244 s2Step50HeadGFresh [(s2Step50HeadFRow,244),(s2Step50HeadGvRow,39),(s2Step50HeadFvRow,39)] [s2Step50HeadFFresh,s2Step50HeadGvFresh,s2Step50HeadFvFresh] [s2Step50HeadFOut,s2Step50HeadGvOut,s2Step50HeadFvOut]
    (growRow 769 s2Step50HeadGFresh) ((growRow 768 s2Step50HeadFFresh ++ (growRow 771 s2Step50HeadGvFresh ++ (growRow 770 s2Step50HeadFvFresh ++ [])))) s2Step50HeadG_Incoming s2Step50HeadG_checked h1 s2Step50HeadG_Outgoing
  exact h0
theorem s2Step50HeadBank_checked : compileHmrBankResizeLog .headroom s2Step50HeadGBefore ⟨s2Step50HeadFRow,s2Step50HeadGRow,s2Step50HeadFvRow,s2Step50HeadGvRow⟩ ⟨244,244,39,39⟩ [s2Step50HeadGFresh,s2Step50HeadFFresh,s2Step50HeadGvFresh,s2Step50HeadFvFresh]=
    some (s2Step50HeadFvAfter,⟨s2Step50HeadFOut,s2Step50HeadGOut,s2Step50HeadFvOut,s2Step50HeadGvOut⟩,(growRow 769 s2Step50HeadGFresh ++ (growRow 768 s2Step50HeadFFresh ++ (growRow 771 s2Step50HeadGvFresh ++ (growRow 770 s2Step50HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step50HeadBank_rows]
  rfl
def s2Step51HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807, 803],769⟩
def s2Step51HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 787],768⟩
def s2Step51HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 790],771⟩
def s2Step51HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
theorem s2Step51HeadBank_incomingDistinct : ([s2Step51HeadGRow,s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51HeadBank_outgoingOwned : rowsOwned s2Step51HeadFvAfter [s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step51HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51HeadG_Incoming : rowsOwned s2Step51HeadGBefore [s2Step51HeadGRow,s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51HeadGRow,s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow] 0 s2Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51HeadG_Outgoing : rowsOwned s2Step51HeadFvAfter [s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] :=
  hmrRows_owned_drop s2Step51HeadFvAfter [s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] 0 s2Step51HeadBank_outgoingOwned
theorem s2Step51HeadF_Incoming : rowsOwned s2Step51HeadFBefore [s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51HeadGRow,s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow] 1 s2Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51HeadF_Outgoing : rowsOwned s2Step51HeadFvAfter [s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] :=
  hmrRows_owned_drop s2Step51HeadFvAfter [s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] 1 s2Step51HeadBank_outgoingOwned
theorem s2Step51HeadGv_Incoming : rowsOwned s2Step51HeadGvBefore [s2Step51HeadGvRow,s2Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51HeadGRow,s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow] 2 s2Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51HeadGv_Outgoing : rowsOwned s2Step51HeadFvAfter [s2Step51HeadGvOut,s2Step51HeadFvOut] :=
  hmrRows_owned_drop s2Step51HeadFvAfter [s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] 2 s2Step51HeadBank_outgoingOwned
theorem s2Step51HeadFv_Incoming : rowsOwned s2Step51HeadFvBefore [s2Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51HeadGRow,s2Step51HeadFRow,s2Step51HeadGvRow,s2Step51HeadFvRow] 3 s2Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51HeadFv_Outgoing : rowsOwned s2Step51HeadFvAfter [s2Step51HeadFvOut] :=
  hmrRows_owned_drop s2Step51HeadFvAfter [s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut] 3 s2Step51HeadBank_outgoingOwned
theorem s2Step51HeadBank_rows : planWindowRowsLog s2Step51HeadGBefore [(s2Step51HeadGRow,244),(s2Step51HeadFRow,244),(s2Step51HeadGvRow,39),(s2Step51HeadFvRow,39)] [s2Step51HeadGFresh,s2Step51HeadFFresh,s2Step51HeadGvFresh,s2Step51HeadFvFresh]=
    some (s2Step51HeadFvAfter,[s2Step51HeadGOut,s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut],(growRow 769 s2Step51HeadGFresh ++ (growRow 768 s2Step51HeadFFresh ++ (growRow 771 s2Step51HeadGvFresh ++ (growRow 770 s2Step51HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step51HeadFvAfter [] []=some (s2Step51HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step51HeadFvBefore s2Step51HeadFvAfter s2Step51HeadFvAfter
    s2Step51HeadFvRow s2Step51HeadFvOut 39 s2Step51HeadFvFresh [] [] []
    (growRow 770 s2Step51HeadFvFresh) ([]) s2Step51HeadFv_Incoming s2Step51HeadFv_checked h4 s2Step51HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step51HeadGvBefore s2Step51HeadGvAfter s2Step51HeadFvAfter
    s2Step51HeadGvRow s2Step51HeadGvOut 39 s2Step51HeadGvFresh [(s2Step51HeadFvRow,39)] [s2Step51HeadFvFresh] [s2Step51HeadFvOut]
    (growRow 771 s2Step51HeadGvFresh) ((growRow 770 s2Step51HeadFvFresh ++ [])) s2Step51HeadGv_Incoming s2Step51HeadGv_checked h3 s2Step51HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step51HeadFBefore s2Step51HeadFAfter s2Step51HeadFvAfter
    s2Step51HeadFRow s2Step51HeadFOut 244 s2Step51HeadFFresh [(s2Step51HeadGvRow,39),(s2Step51HeadFvRow,39)] [s2Step51HeadGvFresh,s2Step51HeadFvFresh] [s2Step51HeadGvOut,s2Step51HeadFvOut]
    (growRow 768 s2Step51HeadFFresh) ((growRow 771 s2Step51HeadGvFresh ++ (growRow 770 s2Step51HeadFvFresh ++ []))) s2Step51HeadF_Incoming s2Step51HeadF_checked h2 s2Step51HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step51HeadGBefore s2Step51HeadGAfter s2Step51HeadFvAfter
    s2Step51HeadGRow s2Step51HeadGOut 244 s2Step51HeadGFresh [(s2Step51HeadFRow,244),(s2Step51HeadGvRow,39),(s2Step51HeadFvRow,39)] [s2Step51HeadFFresh,s2Step51HeadGvFresh,s2Step51HeadFvFresh] [s2Step51HeadFOut,s2Step51HeadGvOut,s2Step51HeadFvOut]
    (growRow 769 s2Step51HeadGFresh) ((growRow 768 s2Step51HeadFFresh ++ (growRow 771 s2Step51HeadGvFresh ++ (growRow 770 s2Step51HeadFvFresh ++ [])))) s2Step51HeadG_Incoming s2Step51HeadG_checked h1 s2Step51HeadG_Outgoing
  exact h0
theorem s2Step51HeadBank_checked : compileHmrBankResizeLog .headroom s2Step51HeadGBefore ⟨s2Step51HeadFRow,s2Step51HeadGRow,s2Step51HeadFvRow,s2Step51HeadGvRow⟩ ⟨244,244,39,39⟩ [s2Step51HeadGFresh,s2Step51HeadFFresh,s2Step51HeadGvFresh,s2Step51HeadFvFresh]=
    some (s2Step51HeadFvAfter,⟨s2Step51HeadFOut,s2Step51HeadGOut,s2Step51HeadFvOut,s2Step51HeadGvOut⟩,(growRow 769 s2Step51HeadGFresh ++ (growRow 768 s2Step51HeadFFresh ++ (growRow 771 s2Step51HeadGvFresh ++ (growRow 770 s2Step51HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step51HeadBank_rows]
  rfl
def s2Step52HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 790],769⟩
def s2Step52HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 787],768⟩
def s2Step52HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808, 807],771⟩
def s2Step52HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
theorem s2Step52HeadBank_incomingDistinct : ([s2Step52HeadGRow,s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52HeadBank_outgoingOwned : rowsOwned s2Step52HeadFvAfter [s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step52HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52HeadG_Incoming : rowsOwned s2Step52HeadGBefore [s2Step52HeadGRow,s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52HeadGRow,s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow] 0 s2Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52HeadG_Outgoing : rowsOwned s2Step52HeadFvAfter [s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] :=
  hmrRows_owned_drop s2Step52HeadFvAfter [s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] 0 s2Step52HeadBank_outgoingOwned
theorem s2Step52HeadF_Incoming : rowsOwned s2Step52HeadFBefore [s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52HeadGRow,s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow] 1 s2Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52HeadF_Outgoing : rowsOwned s2Step52HeadFvAfter [s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] :=
  hmrRows_owned_drop s2Step52HeadFvAfter [s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] 1 s2Step52HeadBank_outgoingOwned
theorem s2Step52HeadGv_Incoming : rowsOwned s2Step52HeadGvBefore [s2Step52HeadGvRow,s2Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52HeadGRow,s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow] 2 s2Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52HeadGv_Outgoing : rowsOwned s2Step52HeadFvAfter [s2Step52HeadGvOut,s2Step52HeadFvOut] :=
  hmrRows_owned_drop s2Step52HeadFvAfter [s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] 2 s2Step52HeadBank_outgoingOwned
theorem s2Step52HeadFv_Incoming : rowsOwned s2Step52HeadFvBefore [s2Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52HeadGRow,s2Step52HeadFRow,s2Step52HeadGvRow,s2Step52HeadFvRow] 3 s2Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52HeadFv_Outgoing : rowsOwned s2Step52HeadFvAfter [s2Step52HeadFvOut] :=
  hmrRows_owned_drop s2Step52HeadFvAfter [s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut] 3 s2Step52HeadBank_outgoingOwned
theorem s2Step52HeadBank_rows : planWindowRowsLog s2Step52HeadGBefore [(s2Step52HeadGRow,243),(s2Step52HeadFRow,243),(s2Step52HeadGvRow,40),(s2Step52HeadFvRow,40)] [s2Step52HeadGFresh,s2Step52HeadFFresh,s2Step52HeadGvFresh,s2Step52HeadFvFresh]=
    some (s2Step52HeadFvAfter,[s2Step52HeadGOut,s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut],(growRow 769 s2Step52HeadGFresh ++ (growRow 768 s2Step52HeadFFresh ++ (growRow 771 s2Step52HeadGvFresh ++ (growRow 770 s2Step52HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step52HeadFvAfter [] []=some (s2Step52HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step52HeadFvBefore s2Step52HeadFvAfter s2Step52HeadFvAfter
    s2Step52HeadFvRow s2Step52HeadFvOut 40 s2Step52HeadFvFresh [] [] []
    (growRow 770 s2Step52HeadFvFresh) ([]) s2Step52HeadFv_Incoming s2Step52HeadFv_checked h4 s2Step52HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step52HeadGvBefore s2Step52HeadGvAfter s2Step52HeadFvAfter
    s2Step52HeadGvRow s2Step52HeadGvOut 40 s2Step52HeadGvFresh [(s2Step52HeadFvRow,40)] [s2Step52HeadFvFresh] [s2Step52HeadFvOut]
    (growRow 771 s2Step52HeadGvFresh) ((growRow 770 s2Step52HeadFvFresh ++ [])) s2Step52HeadGv_Incoming s2Step52HeadGv_checked h3 s2Step52HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step52HeadFBefore s2Step52HeadFAfter s2Step52HeadFvAfter
    s2Step52HeadFRow s2Step52HeadFOut 243 s2Step52HeadFFresh [(s2Step52HeadGvRow,40),(s2Step52HeadFvRow,40)] [s2Step52HeadGvFresh,s2Step52HeadFvFresh] [s2Step52HeadGvOut,s2Step52HeadFvOut]
    (growRow 768 s2Step52HeadFFresh) ((growRow 771 s2Step52HeadGvFresh ++ (growRow 770 s2Step52HeadFvFresh ++ []))) s2Step52HeadF_Incoming s2Step52HeadF_checked h2 s2Step52HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step52HeadGBefore s2Step52HeadGAfter s2Step52HeadFvAfter
    s2Step52HeadGRow s2Step52HeadGOut 243 s2Step52HeadGFresh [(s2Step52HeadFRow,243),(s2Step52HeadGvRow,40),(s2Step52HeadFvRow,40)] [s2Step52HeadFFresh,s2Step52HeadGvFresh,s2Step52HeadFvFresh] [s2Step52HeadFOut,s2Step52HeadGvOut,s2Step52HeadFvOut]
    (growRow 769 s2Step52HeadGFresh) ((growRow 768 s2Step52HeadFFresh ++ (growRow 771 s2Step52HeadGvFresh ++ (growRow 770 s2Step52HeadFvFresh ++ [])))) s2Step52HeadG_Incoming s2Step52HeadG_checked h1 s2Step52HeadG_Outgoing
  exact h0
theorem s2Step52HeadBank_checked : compileHmrBankResizeLog .headroom s2Step52HeadGBefore ⟨s2Step52HeadFRow,s2Step52HeadGRow,s2Step52HeadFvRow,s2Step52HeadGvRow⟩ ⟨243,243,40,40⟩ [s2Step52HeadGFresh,s2Step52HeadFFresh,s2Step52HeadGvFresh,s2Step52HeadFvFresh]=
    some (s2Step52HeadFvAfter,⟨s2Step52HeadFOut,s2Step52HeadGOut,s2Step52HeadFvOut,s2Step52HeadGvOut⟩,(growRow 769 s2Step52HeadGFresh ++ (growRow 768 s2Step52HeadFFresh ++ (growRow 771 s2Step52HeadGvFresh ++ (growRow 770 s2Step52HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step52HeadBank_rows]
  rfl
def s2Step53HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 812],769⟩
def s2Step53HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩
def s2Step53HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 807],771⟩
def s2Step53HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
theorem s2Step53HeadBank_incomingDistinct : ([s2Step53HeadGRow,s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53HeadBank_outgoingOwned : rowsOwned s2Step53HeadFvAfter [s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step53HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53HeadG_Incoming : rowsOwned s2Step53HeadGBefore [s2Step53HeadGRow,s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53HeadGRow,s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow] 0 s2Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53HeadG_Outgoing : rowsOwned s2Step53HeadFvAfter [s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] :=
  hmrRows_owned_drop s2Step53HeadFvAfter [s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] 0 s2Step53HeadBank_outgoingOwned
theorem s2Step53HeadF_Incoming : rowsOwned s2Step53HeadFBefore [s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53HeadGRow,s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow] 1 s2Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53HeadF_Outgoing : rowsOwned s2Step53HeadFvAfter [s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] :=
  hmrRows_owned_drop s2Step53HeadFvAfter [s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] 1 s2Step53HeadBank_outgoingOwned
theorem s2Step53HeadGv_Incoming : rowsOwned s2Step53HeadGvBefore [s2Step53HeadGvRow,s2Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53HeadGRow,s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow] 2 s2Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53HeadGv_Outgoing : rowsOwned s2Step53HeadFvAfter [s2Step53HeadGvOut,s2Step53HeadFvOut] :=
  hmrRows_owned_drop s2Step53HeadFvAfter [s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] 2 s2Step53HeadBank_outgoingOwned
theorem s2Step53HeadFv_Incoming : rowsOwned s2Step53HeadFvBefore [s2Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53HeadGRow,s2Step53HeadFRow,s2Step53HeadGvRow,s2Step53HeadFvRow] 3 s2Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53HeadFv_Outgoing : rowsOwned s2Step53HeadFvAfter [s2Step53HeadFvOut] :=
  hmrRows_owned_drop s2Step53HeadFvAfter [s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut] 3 s2Step53HeadBank_outgoingOwned
theorem s2Step53HeadBank_rows : planWindowRowsLog s2Step53HeadGBefore [(s2Step53HeadGRow,242),(s2Step53HeadFRow,242),(s2Step53HeadGvRow,40),(s2Step53HeadFvRow,40)] [s2Step53HeadGFresh,s2Step53HeadFFresh,s2Step53HeadGvFresh,s2Step53HeadFvFresh]=
    some (s2Step53HeadFvAfter,[s2Step53HeadGOut,s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut],(growRow 769 s2Step53HeadGFresh ++ (growRow 768 s2Step53HeadFFresh ++ (growRow 771 s2Step53HeadGvFresh ++ (growRow 770 s2Step53HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step53HeadFvAfter [] []=some (s2Step53HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step53HeadFvBefore s2Step53HeadFvAfter s2Step53HeadFvAfter
    s2Step53HeadFvRow s2Step53HeadFvOut 40 s2Step53HeadFvFresh [] [] []
    (growRow 770 s2Step53HeadFvFresh) ([]) s2Step53HeadFv_Incoming s2Step53HeadFv_checked h4 s2Step53HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step53HeadGvBefore s2Step53HeadGvAfter s2Step53HeadFvAfter
    s2Step53HeadGvRow s2Step53HeadGvOut 40 s2Step53HeadGvFresh [(s2Step53HeadFvRow,40)] [s2Step53HeadFvFresh] [s2Step53HeadFvOut]
    (growRow 771 s2Step53HeadGvFresh) ((growRow 770 s2Step53HeadFvFresh ++ [])) s2Step53HeadGv_Incoming s2Step53HeadGv_checked h3 s2Step53HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step53HeadFBefore s2Step53HeadFAfter s2Step53HeadFvAfter
    s2Step53HeadFRow s2Step53HeadFOut 242 s2Step53HeadFFresh [(s2Step53HeadGvRow,40),(s2Step53HeadFvRow,40)] [s2Step53HeadGvFresh,s2Step53HeadFvFresh] [s2Step53HeadGvOut,s2Step53HeadFvOut]
    (growRow 768 s2Step53HeadFFresh) ((growRow 771 s2Step53HeadGvFresh ++ (growRow 770 s2Step53HeadFvFresh ++ []))) s2Step53HeadF_Incoming s2Step53HeadF_checked h2 s2Step53HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step53HeadGBefore s2Step53HeadGAfter s2Step53HeadFvAfter
    s2Step53HeadGRow s2Step53HeadGOut 242 s2Step53HeadGFresh [(s2Step53HeadFRow,242),(s2Step53HeadGvRow,40),(s2Step53HeadFvRow,40)] [s2Step53HeadFFresh,s2Step53HeadGvFresh,s2Step53HeadFvFresh] [s2Step53HeadFOut,s2Step53HeadGvOut,s2Step53HeadFvOut]
    (growRow 769 s2Step53HeadGFresh) ((growRow 768 s2Step53HeadFFresh ++ (growRow 771 s2Step53HeadGvFresh ++ (growRow 770 s2Step53HeadFvFresh ++ [])))) s2Step53HeadG_Incoming s2Step53HeadG_checked h1 s2Step53HeadG_Outgoing
  exact h0
theorem s2Step53HeadBank_checked : compileHmrBankResizeLog .headroom s2Step53HeadGBefore ⟨s2Step53HeadFRow,s2Step53HeadGRow,s2Step53HeadFvRow,s2Step53HeadGvRow⟩ ⟨242,242,40,40⟩ [s2Step53HeadGFresh,s2Step53HeadFFresh,s2Step53HeadGvFresh,s2Step53HeadFvFresh]=
    some (s2Step53HeadFvAfter,⟨s2Step53HeadFOut,s2Step53HeadGOut,s2Step53HeadFvOut,s2Step53HeadGvOut⟩,(growRow 769 s2Step53HeadGFresh ++ (growRow 768 s2Step53HeadFFresh ++ (growRow 771 s2Step53HeadGvFresh ++ (growRow 770 s2Step53HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step53HeadBank_rows]
  rfl
def s2Step54HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 808],769⟩
def s2Step54HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 812],768⟩
def s2Step54HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 787],771⟩
def s2Step54HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩
theorem s2Step54HeadBank_incomingDistinct : ([s2Step54HeadGRow,s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54HeadBank_outgoingOwned : rowsOwned s2Step54HeadFvAfter [s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step54HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54HeadG_Incoming : rowsOwned s2Step54HeadGBefore [s2Step54HeadGRow,s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54HeadGRow,s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow] 0 s2Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54HeadG_Outgoing : rowsOwned s2Step54HeadFvAfter [s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] :=
  hmrRows_owned_drop s2Step54HeadFvAfter [s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] 0 s2Step54HeadBank_outgoingOwned
theorem s2Step54HeadF_Incoming : rowsOwned s2Step54HeadFBefore [s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54HeadGRow,s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow] 1 s2Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54HeadF_Outgoing : rowsOwned s2Step54HeadFvAfter [s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] :=
  hmrRows_owned_drop s2Step54HeadFvAfter [s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] 1 s2Step54HeadBank_outgoingOwned
theorem s2Step54HeadGv_Incoming : rowsOwned s2Step54HeadGvBefore [s2Step54HeadGvRow,s2Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54HeadGRow,s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow] 2 s2Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54HeadGv_Outgoing : rowsOwned s2Step54HeadFvAfter [s2Step54HeadGvOut,s2Step54HeadFvOut] :=
  hmrRows_owned_drop s2Step54HeadFvAfter [s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] 2 s2Step54HeadBank_outgoingOwned
theorem s2Step54HeadFv_Incoming : rowsOwned s2Step54HeadFvBefore [s2Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54HeadGRow,s2Step54HeadFRow,s2Step54HeadGvRow,s2Step54HeadFvRow] 3 s2Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54HeadFv_Outgoing : rowsOwned s2Step54HeadFvAfter [s2Step54HeadFvOut] :=
  hmrRows_owned_drop s2Step54HeadFvAfter [s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut] 3 s2Step54HeadBank_outgoingOwned
theorem s2Step54HeadBank_rows : planWindowRowsLog s2Step54HeadGBefore [(s2Step54HeadGRow,242),(s2Step54HeadFRow,242),(s2Step54HeadGvRow,41),(s2Step54HeadFvRow,41)] [s2Step54HeadGFresh,s2Step54HeadFFresh,s2Step54HeadGvFresh,s2Step54HeadFvFresh]=
    some (s2Step54HeadFvAfter,[s2Step54HeadGOut,s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut],(growRow 769 s2Step54HeadGFresh ++ (growRow 768 s2Step54HeadFFresh ++ (growRow 771 s2Step54HeadGvFresh ++ (growRow 770 s2Step54HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step54HeadFvAfter [] []=some (s2Step54HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step54HeadFvBefore s2Step54HeadFvAfter s2Step54HeadFvAfter
    s2Step54HeadFvRow s2Step54HeadFvOut 41 s2Step54HeadFvFresh [] [] []
    (growRow 770 s2Step54HeadFvFresh) ([]) s2Step54HeadFv_Incoming s2Step54HeadFv_checked h4 s2Step54HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step54HeadGvBefore s2Step54HeadGvAfter s2Step54HeadFvAfter
    s2Step54HeadGvRow s2Step54HeadGvOut 41 s2Step54HeadGvFresh [(s2Step54HeadFvRow,41)] [s2Step54HeadFvFresh] [s2Step54HeadFvOut]
    (growRow 771 s2Step54HeadGvFresh) ((growRow 770 s2Step54HeadFvFresh ++ [])) s2Step54HeadGv_Incoming s2Step54HeadGv_checked h3 s2Step54HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step54HeadFBefore s2Step54HeadFAfter s2Step54HeadFvAfter
    s2Step54HeadFRow s2Step54HeadFOut 242 s2Step54HeadFFresh [(s2Step54HeadGvRow,41),(s2Step54HeadFvRow,41)] [s2Step54HeadGvFresh,s2Step54HeadFvFresh] [s2Step54HeadGvOut,s2Step54HeadFvOut]
    (growRow 768 s2Step54HeadFFresh) ((growRow 771 s2Step54HeadGvFresh ++ (growRow 770 s2Step54HeadFvFresh ++ []))) s2Step54HeadF_Incoming s2Step54HeadF_checked h2 s2Step54HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step54HeadGBefore s2Step54HeadGAfter s2Step54HeadFvAfter
    s2Step54HeadGRow s2Step54HeadGOut 242 s2Step54HeadGFresh [(s2Step54HeadFRow,242),(s2Step54HeadGvRow,41),(s2Step54HeadFvRow,41)] [s2Step54HeadFFresh,s2Step54HeadGvFresh,s2Step54HeadFvFresh] [s2Step54HeadFOut,s2Step54HeadGvOut,s2Step54HeadFvOut]
    (growRow 769 s2Step54HeadGFresh) ((growRow 768 s2Step54HeadFFresh ++ (growRow 771 s2Step54HeadGvFresh ++ (growRow 770 s2Step54HeadFvFresh ++ [])))) s2Step54HeadG_Incoming s2Step54HeadG_checked h1 s2Step54HeadG_Outgoing
  exact h0
theorem s2Step54HeadBank_checked : compileHmrBankResizeLog .headroom s2Step54HeadGBefore ⟨s2Step54HeadFRow,s2Step54HeadGRow,s2Step54HeadFvRow,s2Step54HeadGvRow⟩ ⟨242,242,41,41⟩ [s2Step54HeadGFresh,s2Step54HeadFFresh,s2Step54HeadGvFresh,s2Step54HeadFvFresh]=
    some (s2Step54HeadFvAfter,⟨s2Step54HeadFOut,s2Step54HeadGOut,s2Step54HeadFvOut,s2Step54HeadGvOut⟩,(growRow 769 s2Step54HeadGFresh ++ (growRow 768 s2Step54HeadFFresh ++ (growRow 771 s2Step54HeadGvFresh ++ (growRow 770 s2Step54HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step54HeadBank_rows]
  rfl
def s2Step55HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807, 812],769⟩
def s2Step55HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩
def s2Step55HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩
def s2Step55HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790, 800],770⟩
theorem s2Step55HeadBank_incomingDistinct : ([s2Step55HeadGRow,s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55HeadBank_outgoingOwned : rowsOwned s2Step55HeadFvAfter [s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step55HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55HeadG_Incoming : rowsOwned s2Step55HeadGBefore [s2Step55HeadGRow,s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55HeadGRow,s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow] 0 s2Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55HeadG_Outgoing : rowsOwned s2Step55HeadFvAfter [s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] :=
  hmrRows_owned_drop s2Step55HeadFvAfter [s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] 0 s2Step55HeadBank_outgoingOwned
theorem s2Step55HeadF_Incoming : rowsOwned s2Step55HeadFBefore [s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55HeadGRow,s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow] 1 s2Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55HeadF_Outgoing : rowsOwned s2Step55HeadFvAfter [s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] :=
  hmrRows_owned_drop s2Step55HeadFvAfter [s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] 1 s2Step55HeadBank_outgoingOwned
theorem s2Step55HeadGv_Incoming : rowsOwned s2Step55HeadGvBefore [s2Step55HeadGvRow,s2Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55HeadGRow,s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow] 2 s2Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55HeadGv_Outgoing : rowsOwned s2Step55HeadFvAfter [s2Step55HeadGvOut,s2Step55HeadFvOut] :=
  hmrRows_owned_drop s2Step55HeadFvAfter [s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] 2 s2Step55HeadBank_outgoingOwned
theorem s2Step55HeadFv_Incoming : rowsOwned s2Step55HeadFvBefore [s2Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55HeadGRow,s2Step55HeadFRow,s2Step55HeadGvRow,s2Step55HeadFvRow] 3 s2Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55HeadFv_Outgoing : rowsOwned s2Step55HeadFvAfter [s2Step55HeadFvOut] :=
  hmrRows_owned_drop s2Step55HeadFvAfter [s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut] 3 s2Step55HeadBank_outgoingOwned
theorem s2Step55HeadBank_rows : planWindowRowsLog s2Step55HeadGBefore [(s2Step55HeadGRow,242),(s2Step55HeadFRow,242),(s2Step55HeadGvRow,42),(s2Step55HeadFvRow,42)] [s2Step55HeadGFresh,s2Step55HeadFFresh,s2Step55HeadGvFresh,s2Step55HeadFvFresh]=
    some (s2Step55HeadFvAfter,[s2Step55HeadGOut,s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut],(growRow 769 s2Step55HeadGFresh ++ (growRow 768 s2Step55HeadFFresh ++ (growRow 771 s2Step55HeadGvFresh ++ (growRow 770 s2Step55HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step55HeadFvAfter [] []=some (s2Step55HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step55HeadFvBefore s2Step55HeadFvAfter s2Step55HeadFvAfter
    s2Step55HeadFvRow s2Step55HeadFvOut 42 s2Step55HeadFvFresh [] [] []
    (growRow 770 s2Step55HeadFvFresh) ([]) s2Step55HeadFv_Incoming s2Step55HeadFv_checked h4 s2Step55HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step55HeadGvBefore s2Step55HeadGvAfter s2Step55HeadFvAfter
    s2Step55HeadGvRow s2Step55HeadGvOut 42 s2Step55HeadGvFresh [(s2Step55HeadFvRow,42)] [s2Step55HeadFvFresh] [s2Step55HeadFvOut]
    (growRow 771 s2Step55HeadGvFresh) ((growRow 770 s2Step55HeadFvFresh ++ [])) s2Step55HeadGv_Incoming s2Step55HeadGv_checked h3 s2Step55HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step55HeadFBefore s2Step55HeadFAfter s2Step55HeadFvAfter
    s2Step55HeadFRow s2Step55HeadFOut 242 s2Step55HeadFFresh [(s2Step55HeadGvRow,42),(s2Step55HeadFvRow,42)] [s2Step55HeadGvFresh,s2Step55HeadFvFresh] [s2Step55HeadGvOut,s2Step55HeadFvOut]
    (growRow 768 s2Step55HeadFFresh) ((growRow 771 s2Step55HeadGvFresh ++ (growRow 770 s2Step55HeadFvFresh ++ []))) s2Step55HeadF_Incoming s2Step55HeadF_checked h2 s2Step55HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step55HeadGBefore s2Step55HeadGAfter s2Step55HeadFvAfter
    s2Step55HeadGRow s2Step55HeadGOut 242 s2Step55HeadGFresh [(s2Step55HeadFRow,242),(s2Step55HeadGvRow,42),(s2Step55HeadFvRow,42)] [s2Step55HeadFFresh,s2Step55HeadGvFresh,s2Step55HeadFvFresh] [s2Step55HeadFOut,s2Step55HeadGvOut,s2Step55HeadFvOut]
    (growRow 769 s2Step55HeadGFresh) ((growRow 768 s2Step55HeadFFresh ++ (growRow 771 s2Step55HeadGvFresh ++ (growRow 770 s2Step55HeadFvFresh ++ [])))) s2Step55HeadG_Incoming s2Step55HeadG_checked h1 s2Step55HeadG_Outgoing
  exact h0
theorem s2Step55HeadBank_checked : compileHmrBankResizeLog .headroom s2Step55HeadGBefore ⟨s2Step55HeadFRow,s2Step55HeadGRow,s2Step55HeadFvRow,s2Step55HeadGvRow⟩ ⟨242,242,42,42⟩ [s2Step55HeadGFresh,s2Step55HeadFFresh,s2Step55HeadGvFresh,s2Step55HeadFvFresh]=
    some (s2Step55HeadFvAfter,⟨s2Step55HeadFOut,s2Step55HeadGOut,s2Step55HeadFvOut,s2Step55HeadGvOut⟩,(growRow 769 s2Step55HeadGFresh ++ (growRow 768 s2Step55HeadFFresh ++ (growRow 771 s2Step55HeadGvFresh ++ (growRow 770 s2Step55HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step55HeadBank_rows]
  rfl
def s2Step56HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 792],769⟩
def s2Step56HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 790],768⟩
def s2Step56HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 800],771⟩
def s2Step56HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
theorem s2Step56HeadBank_incomingDistinct : ([s2Step56HeadGRow,s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56HeadBank_outgoingOwned : rowsOwned s2Step56HeadFvAfter [s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step56HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56HeadG_Incoming : rowsOwned s2Step56HeadGBefore [s2Step56HeadGRow,s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56HeadGRow,s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow] 0 s2Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56HeadG_Outgoing : rowsOwned s2Step56HeadFvAfter [s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] :=
  hmrRows_owned_drop s2Step56HeadFvAfter [s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] 0 s2Step56HeadBank_outgoingOwned
theorem s2Step56HeadF_Incoming : rowsOwned s2Step56HeadFBefore [s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56HeadGRow,s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow] 1 s2Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56HeadF_Outgoing : rowsOwned s2Step56HeadFvAfter [s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] :=
  hmrRows_owned_drop s2Step56HeadFvAfter [s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] 1 s2Step56HeadBank_outgoingOwned
theorem s2Step56HeadGv_Incoming : rowsOwned s2Step56HeadGvBefore [s2Step56HeadGvRow,s2Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56HeadGRow,s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow] 2 s2Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56HeadGv_Outgoing : rowsOwned s2Step56HeadFvAfter [s2Step56HeadGvOut,s2Step56HeadFvOut] :=
  hmrRows_owned_drop s2Step56HeadFvAfter [s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] 2 s2Step56HeadBank_outgoingOwned
theorem s2Step56HeadFv_Incoming : rowsOwned s2Step56HeadFvBefore [s2Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56HeadGRow,s2Step56HeadFRow,s2Step56HeadGvRow,s2Step56HeadFvRow] 3 s2Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56HeadFvBefore (fun q => (0≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56HeadFv_Outgoing : rowsOwned s2Step56HeadFvAfter [s2Step56HeadFvOut] :=
  hmrRows_owned_drop s2Step56HeadFvAfter [s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut] 3 s2Step56HeadBank_outgoingOwned
theorem s2Step56HeadBank_rows : planWindowRowsLog s2Step56HeadGBefore [(s2Step56HeadGRow,241),(s2Step56HeadFRow,241),(s2Step56HeadGvRow,42),(s2Step56HeadFvRow,42)] [s2Step56HeadGFresh,s2Step56HeadFFresh,s2Step56HeadGvFresh,s2Step56HeadFvFresh]=
    some (s2Step56HeadFvAfter,[s2Step56HeadGOut,s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut],(growRow 769 s2Step56HeadGFresh ++ (growRow 768 s2Step56HeadFFresh ++ (growRow 771 s2Step56HeadGvFresh ++ (growRow 770 s2Step56HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step56HeadFvAfter [] []=some (s2Step56HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step56HeadFvBefore s2Step56HeadFvAfter s2Step56HeadFvAfter
    s2Step56HeadFvRow s2Step56HeadFvOut 42 s2Step56HeadFvFresh [] [] []
    (growRow 770 s2Step56HeadFvFresh) ([]) s2Step56HeadFv_Incoming s2Step56HeadFv_checked h4 s2Step56HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step56HeadGvBefore s2Step56HeadGvAfter s2Step56HeadFvAfter
    s2Step56HeadGvRow s2Step56HeadGvOut 42 s2Step56HeadGvFresh [(s2Step56HeadFvRow,42)] [s2Step56HeadFvFresh] [s2Step56HeadFvOut]
    (growRow 771 s2Step56HeadGvFresh) ((growRow 770 s2Step56HeadFvFresh ++ [])) s2Step56HeadGv_Incoming s2Step56HeadGv_checked h3 s2Step56HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step56HeadFBefore s2Step56HeadFAfter s2Step56HeadFvAfter
    s2Step56HeadFRow s2Step56HeadFOut 241 s2Step56HeadFFresh [(s2Step56HeadGvRow,42),(s2Step56HeadFvRow,42)] [s2Step56HeadGvFresh,s2Step56HeadFvFresh] [s2Step56HeadGvOut,s2Step56HeadFvOut]
    (growRow 768 s2Step56HeadFFresh) ((growRow 771 s2Step56HeadGvFresh ++ (growRow 770 s2Step56HeadFvFresh ++ []))) s2Step56HeadF_Incoming s2Step56HeadF_checked h2 s2Step56HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step56HeadGBefore s2Step56HeadGAfter s2Step56HeadFvAfter
    s2Step56HeadGRow s2Step56HeadGOut 241 s2Step56HeadGFresh [(s2Step56HeadFRow,241),(s2Step56HeadGvRow,42),(s2Step56HeadFvRow,42)] [s2Step56HeadFFresh,s2Step56HeadGvFresh,s2Step56HeadFvFresh] [s2Step56HeadFOut,s2Step56HeadGvOut,s2Step56HeadFvOut]
    (growRow 769 s2Step56HeadGFresh) ((growRow 768 s2Step56HeadFFresh ++ (growRow 771 s2Step56HeadGvFresh ++ (growRow 770 s2Step56HeadFvFresh ++ [])))) s2Step56HeadG_Incoming s2Step56HeadG_checked h1 s2Step56HeadG_Outgoing
  exact h0
theorem s2Step56HeadBank_checked : compileHmrBankResizeLog .headroom s2Step56HeadGBefore ⟨s2Step56HeadFRow,s2Step56HeadGRow,s2Step56HeadFvRow,s2Step56HeadGvRow⟩ ⟨241,241,42,42⟩ [s2Step56HeadGFresh,s2Step56HeadFFresh,s2Step56HeadGvFresh,s2Step56HeadFvFresh]=
    some (s2Step56HeadFvAfter,⟨s2Step56HeadFOut,s2Step56HeadGOut,s2Step56HeadFvOut,s2Step56HeadGvOut⟩,(growRow 769 s2Step56HeadGFresh ++ (growRow 768 s2Step56HeadFFresh ++ (growRow 771 s2Step56HeadGvFresh ++ (growRow 770 s2Step56HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step56HeadBank_rows]
  rfl
def s2Step57HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814, 800],769⟩
def s2Step57HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 808],768⟩
def s2Step57HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 790],771⟩
def s2Step57HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 792],770⟩
theorem s2Step57HeadBank_incomingDistinct : ([s2Step57HeadGRow,s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57HeadBank_outgoingOwned : rowsOwned s2Step57HeadFvAfter [s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step57HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57HeadG_Incoming : rowsOwned s2Step57HeadGBefore [s2Step57HeadGRow,s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57HeadGRow,s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow] 0 s2Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57HeadG_Outgoing : rowsOwned s2Step57HeadFvAfter [s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] :=
  hmrRows_owned_drop s2Step57HeadFvAfter [s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] 0 s2Step57HeadBank_outgoingOwned
theorem s2Step57HeadF_Incoming : rowsOwned s2Step57HeadFBefore [s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57HeadGRow,s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow] 1 s2Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57HeadF_Outgoing : rowsOwned s2Step57HeadFvAfter [s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] :=
  hmrRows_owned_drop s2Step57HeadFvAfter [s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] 1 s2Step57HeadBank_outgoingOwned
theorem s2Step57HeadGv_Incoming : rowsOwned s2Step57HeadGvBefore [s2Step57HeadGvRow,s2Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57HeadGRow,s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow] 2 s2Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57HeadGv_Outgoing : rowsOwned s2Step57HeadFvAfter [s2Step57HeadGvOut,s2Step57HeadFvOut] :=
  hmrRows_owned_drop s2Step57HeadFvAfter [s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] 2 s2Step57HeadBank_outgoingOwned
theorem s2Step57HeadFv_Incoming : rowsOwned s2Step57HeadFvBefore [s2Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57HeadGRow,s2Step57HeadFRow,s2Step57HeadGvRow,s2Step57HeadFvRow] 3 s2Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57HeadFv_Outgoing : rowsOwned s2Step57HeadFvAfter [s2Step57HeadFvOut] :=
  hmrRows_owned_drop s2Step57HeadFvAfter [s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut] 3 s2Step57HeadBank_outgoingOwned
theorem s2Step57HeadBank_rows : planWindowRowsLog s2Step57HeadGBefore [(s2Step57HeadGRow,241),(s2Step57HeadFRow,241),(s2Step57HeadGvRow,42),(s2Step57HeadFvRow,42)] [s2Step57HeadGFresh,s2Step57HeadFFresh,s2Step57HeadGvFresh,s2Step57HeadFvFresh]=
    some (s2Step57HeadFvAfter,[s2Step57HeadGOut,s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut],(growRow 769 s2Step57HeadGFresh ++ (growRow 768 s2Step57HeadFFresh ++ (growRow 771 s2Step57HeadGvFresh ++ (growRow 770 s2Step57HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step57HeadFvAfter [] []=some (s2Step57HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step57HeadFvBefore s2Step57HeadFvAfter s2Step57HeadFvAfter
    s2Step57HeadFvRow s2Step57HeadFvOut 42 s2Step57HeadFvFresh [] [] []
    (growRow 770 s2Step57HeadFvFresh) ([]) s2Step57HeadFv_Incoming s2Step57HeadFv_checked h4 s2Step57HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step57HeadGvBefore s2Step57HeadGvAfter s2Step57HeadFvAfter
    s2Step57HeadGvRow s2Step57HeadGvOut 42 s2Step57HeadGvFresh [(s2Step57HeadFvRow,42)] [s2Step57HeadFvFresh] [s2Step57HeadFvOut]
    (growRow 771 s2Step57HeadGvFresh) ((growRow 770 s2Step57HeadFvFresh ++ [])) s2Step57HeadGv_Incoming s2Step57HeadGv_checked h3 s2Step57HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step57HeadFBefore s2Step57HeadFAfter s2Step57HeadFvAfter
    s2Step57HeadFRow s2Step57HeadFOut 241 s2Step57HeadFFresh [(s2Step57HeadGvRow,42),(s2Step57HeadFvRow,42)] [s2Step57HeadGvFresh,s2Step57HeadFvFresh] [s2Step57HeadGvOut,s2Step57HeadFvOut]
    (growRow 768 s2Step57HeadFFresh) ((growRow 771 s2Step57HeadGvFresh ++ (growRow 770 s2Step57HeadFvFresh ++ []))) s2Step57HeadF_Incoming s2Step57HeadF_checked h2 s2Step57HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step57HeadGBefore s2Step57HeadGAfter s2Step57HeadFvAfter
    s2Step57HeadGRow s2Step57HeadGOut 241 s2Step57HeadGFresh [(s2Step57HeadFRow,241),(s2Step57HeadGvRow,42),(s2Step57HeadFvRow,42)] [s2Step57HeadFFresh,s2Step57HeadGvFresh,s2Step57HeadFvFresh] [s2Step57HeadFOut,s2Step57HeadGvOut,s2Step57HeadFvOut]
    (growRow 769 s2Step57HeadGFresh) ((growRow 768 s2Step57HeadFFresh ++ (growRow 771 s2Step57HeadGvFresh ++ (growRow 770 s2Step57HeadFvFresh ++ [])))) s2Step57HeadG_Incoming s2Step57HeadG_checked h1 s2Step57HeadG_Outgoing
  exact h0
theorem s2Step57HeadBank_checked : compileHmrBankResizeLog .headroom s2Step57HeadGBefore ⟨s2Step57HeadFRow,s2Step57HeadGRow,s2Step57HeadFvRow,s2Step57HeadGvRow⟩ ⟨241,241,42,42⟩ [s2Step57HeadGFresh,s2Step57HeadFFresh,s2Step57HeadGvFresh,s2Step57HeadFvFresh]=
    some (s2Step57HeadFvAfter,⟨s2Step57HeadFOut,s2Step57HeadGOut,s2Step57HeadFvOut,s2Step57HeadGvOut⟩,(growRow 769 s2Step57HeadGFresh ++ (growRow 768 s2Step57HeadFFresh ++ (growRow 771 s2Step57HeadGvFresh ++ (growRow 770 s2Step57HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step57HeadBank_rows]
  rfl
def s2Step58HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817, 820],769⟩
def s2Step58HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 790],768⟩
def s2Step58HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩
def s2Step58HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
theorem s2Step58HeadBank_incomingDistinct : ([s2Step58HeadGRow,s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58HeadBank_outgoingOwned : rowsOwned s2Step58HeadFvAfter [s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step58HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58HeadG_Incoming : rowsOwned s2Step58HeadGBefore [s2Step58HeadGRow,s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58HeadGRow,s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow] 0 s2Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58HeadG_Outgoing : rowsOwned s2Step58HeadFvAfter [s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] :=
  hmrRows_owned_drop s2Step58HeadFvAfter [s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] 0 s2Step58HeadBank_outgoingOwned
theorem s2Step58HeadF_Incoming : rowsOwned s2Step58HeadFBefore [s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58HeadGRow,s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow] 1 s2Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58HeadF_Outgoing : rowsOwned s2Step58HeadFvAfter [s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] :=
  hmrRows_owned_drop s2Step58HeadFvAfter [s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] 1 s2Step58HeadBank_outgoingOwned
theorem s2Step58HeadGv_Incoming : rowsOwned s2Step58HeadGvBefore [s2Step58HeadGvRow,s2Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58HeadGRow,s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow] 2 s2Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58HeadGv_Outgoing : rowsOwned s2Step58HeadFvAfter [s2Step58HeadGvOut,s2Step58HeadFvOut] :=
  hmrRows_owned_drop s2Step58HeadFvAfter [s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] 2 s2Step58HeadBank_outgoingOwned
theorem s2Step58HeadFv_Incoming : rowsOwned s2Step58HeadFvBefore [s2Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58HeadGRow,s2Step58HeadFRow,s2Step58HeadGvRow,s2Step58HeadFvRow] 3 s2Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58HeadFv_Outgoing : rowsOwned s2Step58HeadFvAfter [s2Step58HeadFvOut] :=
  hmrRows_owned_drop s2Step58HeadFvAfter [s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut] 3 s2Step58HeadBank_outgoingOwned
theorem s2Step58HeadBank_rows : planWindowRowsLog s2Step58HeadGBefore [(s2Step58HeadGRow,240),(s2Step58HeadFRow,240),(s2Step58HeadGvRow,42),(s2Step58HeadFvRow,42)] [s2Step58HeadGFresh,s2Step58HeadFFresh,s2Step58HeadGvFresh,s2Step58HeadFvFresh]=
    some (s2Step58HeadFvAfter,[s2Step58HeadGOut,s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut],(growRow 769 s2Step58HeadGFresh ++ (growRow 768 s2Step58HeadFFresh ++ (growRow 771 s2Step58HeadGvFresh ++ (growRow 770 s2Step58HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step58HeadFvAfter [] []=some (s2Step58HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step58HeadFvBefore s2Step58HeadFvAfter s2Step58HeadFvAfter
    s2Step58HeadFvRow s2Step58HeadFvOut 42 s2Step58HeadFvFresh [] [] []
    (growRow 770 s2Step58HeadFvFresh) ([]) s2Step58HeadFv_Incoming s2Step58HeadFv_checked h4 s2Step58HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step58HeadGvBefore s2Step58HeadGvAfter s2Step58HeadFvAfter
    s2Step58HeadGvRow s2Step58HeadGvOut 42 s2Step58HeadGvFresh [(s2Step58HeadFvRow,42)] [s2Step58HeadFvFresh] [s2Step58HeadFvOut]
    (growRow 771 s2Step58HeadGvFresh) ((growRow 770 s2Step58HeadFvFresh ++ [])) s2Step58HeadGv_Incoming s2Step58HeadGv_checked h3 s2Step58HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step58HeadFBefore s2Step58HeadFAfter s2Step58HeadFvAfter
    s2Step58HeadFRow s2Step58HeadFOut 240 s2Step58HeadFFresh [(s2Step58HeadGvRow,42),(s2Step58HeadFvRow,42)] [s2Step58HeadGvFresh,s2Step58HeadFvFresh] [s2Step58HeadGvOut,s2Step58HeadFvOut]
    (growRow 768 s2Step58HeadFFresh) ((growRow 771 s2Step58HeadGvFresh ++ (growRow 770 s2Step58HeadFvFresh ++ []))) s2Step58HeadF_Incoming s2Step58HeadF_checked h2 s2Step58HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step58HeadGBefore s2Step58HeadGAfter s2Step58HeadFvAfter
    s2Step58HeadGRow s2Step58HeadGOut 240 s2Step58HeadGFresh [(s2Step58HeadFRow,240),(s2Step58HeadGvRow,42),(s2Step58HeadFvRow,42)] [s2Step58HeadFFresh,s2Step58HeadGvFresh,s2Step58HeadFvFresh] [s2Step58HeadFOut,s2Step58HeadGvOut,s2Step58HeadFvOut]
    (growRow 769 s2Step58HeadGFresh) ((growRow 768 s2Step58HeadFFresh ++ (growRow 771 s2Step58HeadGvFresh ++ (growRow 770 s2Step58HeadFvFresh ++ [])))) s2Step58HeadG_Incoming s2Step58HeadG_checked h1 s2Step58HeadG_Outgoing
  exact h0
theorem s2Step58HeadBank_checked : compileHmrBankResizeLog .headroom s2Step58HeadGBefore ⟨s2Step58HeadFRow,s2Step58HeadGRow,s2Step58HeadFvRow,s2Step58HeadGvRow⟩ ⟨240,240,42,42⟩ [s2Step58HeadGFresh,s2Step58HeadFFresh,s2Step58HeadGvFresh,s2Step58HeadFvFresh]=
    some (s2Step58HeadFvAfter,⟨s2Step58HeadFOut,s2Step58HeadGOut,s2Step58HeadFvOut,s2Step58HeadGvOut⟩,(growRow 769 s2Step58HeadGFresh ++ (growRow 768 s2Step58HeadFFresh ++ (growRow 771 s2Step58HeadGvFresh ++ (growRow 770 s2Step58HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step58HeadBank_rows]
  rfl
def s2Step59HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816, 817],769⟩
def s2Step59HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 820],768⟩
def s2Step59HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 814],771⟩
def s2Step59HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩
theorem s2Step59HeadBank_incomingDistinct : ([s2Step59HeadGRow,s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59HeadBank_outgoingOwned : rowsOwned s2Step59HeadFvAfter [s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step59HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59HeadG_Incoming : rowsOwned s2Step59HeadGBefore [s2Step59HeadGRow,s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59HeadGRow,s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow] 0 s2Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59HeadG_Outgoing : rowsOwned s2Step59HeadFvAfter [s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] :=
  hmrRows_owned_drop s2Step59HeadFvAfter [s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] 0 s2Step59HeadBank_outgoingOwned
theorem s2Step59HeadF_Incoming : rowsOwned s2Step59HeadFBefore [s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59HeadGRow,s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow] 1 s2Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59HeadF_Outgoing : rowsOwned s2Step59HeadFvAfter [s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] :=
  hmrRows_owned_drop s2Step59HeadFvAfter [s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] 1 s2Step59HeadBank_outgoingOwned
theorem s2Step59HeadGv_Incoming : rowsOwned s2Step59HeadGvBefore [s2Step59HeadGvRow,s2Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59HeadGRow,s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow] 2 s2Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59HeadGv_Outgoing : rowsOwned s2Step59HeadFvAfter [s2Step59HeadGvOut,s2Step59HeadFvOut] :=
  hmrRows_owned_drop s2Step59HeadFvAfter [s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] 2 s2Step59HeadBank_outgoingOwned
theorem s2Step59HeadFv_Incoming : rowsOwned s2Step59HeadFvBefore [s2Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59HeadGRow,s2Step59HeadFRow,s2Step59HeadGvRow,s2Step59HeadFvRow] 3 s2Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59HeadFv_Outgoing : rowsOwned s2Step59HeadFvAfter [s2Step59HeadFvOut] :=
  hmrRows_owned_drop s2Step59HeadFvAfter [s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut] 3 s2Step59HeadBank_outgoingOwned
theorem s2Step59HeadBank_rows : planWindowRowsLog s2Step59HeadGBefore [(s2Step59HeadGRow,240),(s2Step59HeadFRow,240),(s2Step59HeadGvRow,43),(s2Step59HeadFvRow,43)] [s2Step59HeadGFresh,s2Step59HeadFFresh,s2Step59HeadGvFresh,s2Step59HeadFvFresh]=
    some (s2Step59HeadFvAfter,[s2Step59HeadGOut,s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut],(growRow 769 s2Step59HeadGFresh ++ (growRow 768 s2Step59HeadFFresh ++ (growRow 771 s2Step59HeadGvFresh ++ (growRow 770 s2Step59HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step59HeadFvAfter [] []=some (s2Step59HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step59HeadFvBefore s2Step59HeadFvAfter s2Step59HeadFvAfter
    s2Step59HeadFvRow s2Step59HeadFvOut 43 s2Step59HeadFvFresh [] [] []
    (growRow 770 s2Step59HeadFvFresh) ([]) s2Step59HeadFv_Incoming s2Step59HeadFv_checked h4 s2Step59HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step59HeadGvBefore s2Step59HeadGvAfter s2Step59HeadFvAfter
    s2Step59HeadGvRow s2Step59HeadGvOut 43 s2Step59HeadGvFresh [(s2Step59HeadFvRow,43)] [s2Step59HeadFvFresh] [s2Step59HeadFvOut]
    (growRow 771 s2Step59HeadGvFresh) ((growRow 770 s2Step59HeadFvFresh ++ [])) s2Step59HeadGv_Incoming s2Step59HeadGv_checked h3 s2Step59HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step59HeadFBefore s2Step59HeadFAfter s2Step59HeadFvAfter
    s2Step59HeadFRow s2Step59HeadFOut 240 s2Step59HeadFFresh [(s2Step59HeadGvRow,43),(s2Step59HeadFvRow,43)] [s2Step59HeadGvFresh,s2Step59HeadFvFresh] [s2Step59HeadGvOut,s2Step59HeadFvOut]
    (growRow 768 s2Step59HeadFFresh) ((growRow 771 s2Step59HeadGvFresh ++ (growRow 770 s2Step59HeadFvFresh ++ []))) s2Step59HeadF_Incoming s2Step59HeadF_checked h2 s2Step59HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step59HeadGBefore s2Step59HeadGAfter s2Step59HeadFvAfter
    s2Step59HeadGRow s2Step59HeadGOut 240 s2Step59HeadGFresh [(s2Step59HeadFRow,240),(s2Step59HeadGvRow,43),(s2Step59HeadFvRow,43)] [s2Step59HeadFFresh,s2Step59HeadGvFresh,s2Step59HeadFvFresh] [s2Step59HeadFOut,s2Step59HeadGvOut,s2Step59HeadFvOut]
    (growRow 769 s2Step59HeadGFresh) ((growRow 768 s2Step59HeadFFresh ++ (growRow 771 s2Step59HeadGvFresh ++ (growRow 770 s2Step59HeadFvFresh ++ [])))) s2Step59HeadG_Incoming s2Step59HeadG_checked h1 s2Step59HeadG_Outgoing
  exact h0
theorem s2Step59HeadBank_checked : compileHmrBankResizeLog .headroom s2Step59HeadGBefore ⟨s2Step59HeadFRow,s2Step59HeadGRow,s2Step59HeadFvRow,s2Step59HeadGvRow⟩ ⟨240,240,43,43⟩ [s2Step59HeadGFresh,s2Step59HeadFFresh,s2Step59HeadGvFresh,s2Step59HeadFvFresh]=
    some (s2Step59HeadFvAfter,⟨s2Step59HeadFOut,s2Step59HeadGOut,s2Step59HeadFvOut,s2Step59HeadGvOut⟩,(growRow 769 s2Step59HeadGFresh ++ (growRow 768 s2Step59HeadFFresh ++ (growRow 771 s2Step59HeadGvFresh ++ (growRow 770 s2Step59HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step59HeadBank_rows]
  rfl
def s2Step60HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790, 816],769⟩
def s2Step60HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 817],768⟩
def s2Step60HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
def s2Step60HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
theorem s2Step60HeadBank_incomingDistinct : ([s2Step60HeadGRow,s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60HeadBank_outgoingOwned : rowsOwned s2Step60HeadFvAfter [s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step60HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60HeadG_Incoming : rowsOwned s2Step60HeadGBefore [s2Step60HeadGRow,s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60HeadGRow,s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow] 0 s2Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60HeadGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60HeadG_Outgoing : rowsOwned s2Step60HeadFvAfter [s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] :=
  hmrRows_owned_drop s2Step60HeadFvAfter [s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] 0 s2Step60HeadBank_outgoingOwned
theorem s2Step60HeadF_Incoming : rowsOwned s2Step60HeadFBefore [s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60HeadGRow,s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow] 1 s2Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60HeadFBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60HeadF_Outgoing : rowsOwned s2Step60HeadFvAfter [s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] :=
  hmrRows_owned_drop s2Step60HeadFvAfter [s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] 1 s2Step60HeadBank_outgoingOwned
theorem s2Step60HeadGv_Incoming : rowsOwned s2Step60HeadGvBefore [s2Step60HeadGvRow,s2Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60HeadGRow,s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow] 2 s2Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60HeadGvBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60HeadGv_Outgoing : rowsOwned s2Step60HeadFvAfter [s2Step60HeadGvOut,s2Step60HeadFvOut] :=
  hmrRows_owned_drop s2Step60HeadFvAfter [s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] 2 s2Step60HeadBank_outgoingOwned
theorem s2Step60HeadFv_Incoming : rowsOwned s2Step60HeadFvBefore [s2Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60HeadGRow,s2Step60HeadFRow,s2Step60HeadGvRow,s2Step60HeadFvRow] 3 s2Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60HeadFvBefore (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60HeadFv_Outgoing : rowsOwned s2Step60HeadFvAfter [s2Step60HeadFvOut] :=
  hmrRows_owned_drop s2Step60HeadFvAfter [s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut] 3 s2Step60HeadBank_outgoingOwned
theorem s2Step60HeadBank_rows : planWindowRowsLog s2Step60HeadGBefore [(s2Step60HeadGRow,240),(s2Step60HeadFRow,240),(s2Step60HeadGvRow,44),(s2Step60HeadFvRow,44)] [s2Step60HeadGFresh,s2Step60HeadFFresh,s2Step60HeadGvFresh,s2Step60HeadFvFresh]=
    some (s2Step60HeadFvAfter,[s2Step60HeadGOut,s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut],(growRow 769 s2Step60HeadGFresh ++ (growRow 768 s2Step60HeadFFresh ++ (growRow 771 s2Step60HeadGvFresh ++ (growRow 770 s2Step60HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step60HeadFvAfter [] []=some (s2Step60HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step60HeadFvBefore s2Step60HeadFvAfter s2Step60HeadFvAfter
    s2Step60HeadFvRow s2Step60HeadFvOut 44 s2Step60HeadFvFresh [] [] []
    (growRow 770 s2Step60HeadFvFresh) ([]) s2Step60HeadFv_Incoming s2Step60HeadFv_checked h4 s2Step60HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step60HeadGvBefore s2Step60HeadGvAfter s2Step60HeadFvAfter
    s2Step60HeadGvRow s2Step60HeadGvOut 44 s2Step60HeadGvFresh [(s2Step60HeadFvRow,44)] [s2Step60HeadFvFresh] [s2Step60HeadFvOut]
    (growRow 771 s2Step60HeadGvFresh) ((growRow 770 s2Step60HeadFvFresh ++ [])) s2Step60HeadGv_Incoming s2Step60HeadGv_checked h3 s2Step60HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step60HeadFBefore s2Step60HeadFAfter s2Step60HeadFvAfter
    s2Step60HeadFRow s2Step60HeadFOut 240 s2Step60HeadFFresh [(s2Step60HeadGvRow,44),(s2Step60HeadFvRow,44)] [s2Step60HeadGvFresh,s2Step60HeadFvFresh] [s2Step60HeadGvOut,s2Step60HeadFvOut]
    (growRow 768 s2Step60HeadFFresh) ((growRow 771 s2Step60HeadGvFresh ++ (growRow 770 s2Step60HeadFvFresh ++ []))) s2Step60HeadF_Incoming s2Step60HeadF_checked h2 s2Step60HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step60HeadGBefore s2Step60HeadGAfter s2Step60HeadFvAfter
    s2Step60HeadGRow s2Step60HeadGOut 240 s2Step60HeadGFresh [(s2Step60HeadFRow,240),(s2Step60HeadGvRow,44),(s2Step60HeadFvRow,44)] [s2Step60HeadFFresh,s2Step60HeadGvFresh,s2Step60HeadFvFresh] [s2Step60HeadFOut,s2Step60HeadGvOut,s2Step60HeadFvOut]
    (growRow 769 s2Step60HeadGFresh) ((growRow 768 s2Step60HeadFFresh ++ (growRow 771 s2Step60HeadGvFresh ++ (growRow 770 s2Step60HeadFvFresh ++ [])))) s2Step60HeadG_Incoming s2Step60HeadG_checked h1 s2Step60HeadG_Outgoing
  exact h0
theorem s2Step60HeadBank_checked : compileHmrBankResizeLog .headroom s2Step60HeadGBefore ⟨s2Step60HeadFRow,s2Step60HeadGRow,s2Step60HeadFvRow,s2Step60HeadGvRow⟩ ⟨240,240,44,44⟩ [s2Step60HeadGFresh,s2Step60HeadFFresh,s2Step60HeadGvFresh,s2Step60HeadFvFresh]=
    some (s2Step60HeadFvAfter,⟨s2Step60HeadFOut,s2Step60HeadGOut,s2Step60HeadFvOut,s2Step60HeadGvOut⟩,(growRow 769 s2Step60HeadGFresh ++ (growRow 768 s2Step60HeadFFresh ++ (growRow 771 s2Step60HeadGvFresh ++ (growRow 770 s2Step60HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step60HeadBank_rows]
  rfl
def s2Step61HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814, 790],769⟩
def s2Step61HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 816],768⟩
def s2Step61HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822, 844],771⟩
def s2Step61HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 845],770⟩
theorem s2Step61HeadBank_incomingDistinct : ([s2Step61HeadGRow,s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61HeadBank_outgoingOwned : rowsOwned s2Step61HeadFvAfter [s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step61HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61HeadG_Incoming : rowsOwned s2Step61HeadGBefore [s2Step61HeadGRow,s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61HeadGRow,s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow] 0 s2Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61HeadG_Outgoing : rowsOwned s2Step61HeadFvAfter [s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] :=
  hmrRows_owned_drop s2Step61HeadFvAfter [s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] 0 s2Step61HeadBank_outgoingOwned
theorem s2Step61HeadF_Incoming : rowsOwned s2Step61HeadFBefore [s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61HeadGRow,s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow] 1 s2Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61HeadF_Outgoing : rowsOwned s2Step61HeadFvAfter [s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] :=
  hmrRows_owned_drop s2Step61HeadFvAfter [s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] 1 s2Step61HeadBank_outgoingOwned
theorem s2Step61HeadGv_Incoming : rowsOwned s2Step61HeadGvBefore [s2Step61HeadGvRow,s2Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61HeadGRow,s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow] 2 s2Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61HeadGvBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61HeadGv_Outgoing : rowsOwned s2Step61HeadFvAfter [s2Step61HeadGvOut,s2Step61HeadFvOut] :=
  hmrRows_owned_drop s2Step61HeadFvAfter [s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] 2 s2Step61HeadBank_outgoingOwned
theorem s2Step61HeadFv_Incoming : rowsOwned s2Step61HeadFvBefore [s2Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61HeadGRow,s2Step61HeadFRow,s2Step61HeadGvRow,s2Step61HeadFvRow] 3 s2Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61HeadFv_Outgoing : rowsOwned s2Step61HeadFvAfter [s2Step61HeadFvOut] :=
  hmrRows_owned_drop s2Step61HeadFvAfter [s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut] 3 s2Step61HeadBank_outgoingOwned
theorem s2Step61HeadBank_rows : planWindowRowsLog s2Step61HeadGBefore [(s2Step61HeadGRow,240),(s2Step61HeadFRow,240),(s2Step61HeadGvRow,45),(s2Step61HeadFvRow,45)] [s2Step61HeadGFresh,s2Step61HeadFFresh,s2Step61HeadGvFresh,s2Step61HeadFvFresh]=
    some (s2Step61HeadFvAfter,[s2Step61HeadGOut,s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut],(growRow 769 s2Step61HeadGFresh ++ (growRow 768 s2Step61HeadFFresh ++ (growRow 771 s2Step61HeadGvFresh ++ (growRow 770 s2Step61HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step61HeadFvAfter [] []=some (s2Step61HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step61HeadFvBefore s2Step61HeadFvAfter s2Step61HeadFvAfter
    s2Step61HeadFvRow s2Step61HeadFvOut 45 s2Step61HeadFvFresh [] [] []
    (growRow 770 s2Step61HeadFvFresh) ([]) s2Step61HeadFv_Incoming s2Step61HeadFv_checked h4 s2Step61HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step61HeadGvBefore s2Step61HeadGvAfter s2Step61HeadFvAfter
    s2Step61HeadGvRow s2Step61HeadGvOut 45 s2Step61HeadGvFresh [(s2Step61HeadFvRow,45)] [s2Step61HeadFvFresh] [s2Step61HeadFvOut]
    (growRow 771 s2Step61HeadGvFresh) ((growRow 770 s2Step61HeadFvFresh ++ [])) s2Step61HeadGv_Incoming s2Step61HeadGv_checked h3 s2Step61HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step61HeadFBefore s2Step61HeadFAfter s2Step61HeadFvAfter
    s2Step61HeadFRow s2Step61HeadFOut 240 s2Step61HeadFFresh [(s2Step61HeadGvRow,45),(s2Step61HeadFvRow,45)] [s2Step61HeadGvFresh,s2Step61HeadFvFresh] [s2Step61HeadGvOut,s2Step61HeadFvOut]
    (growRow 768 s2Step61HeadFFresh) ((growRow 771 s2Step61HeadGvFresh ++ (growRow 770 s2Step61HeadFvFresh ++ []))) s2Step61HeadF_Incoming s2Step61HeadF_checked h2 s2Step61HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step61HeadGBefore s2Step61HeadGAfter s2Step61HeadFvAfter
    s2Step61HeadGRow s2Step61HeadGOut 240 s2Step61HeadGFresh [(s2Step61HeadFRow,240),(s2Step61HeadGvRow,45),(s2Step61HeadFvRow,45)] [s2Step61HeadFFresh,s2Step61HeadGvFresh,s2Step61HeadFvFresh] [s2Step61HeadFOut,s2Step61HeadGvOut,s2Step61HeadFvOut]
    (growRow 769 s2Step61HeadGFresh) ((growRow 768 s2Step61HeadFFresh ++ (growRow 771 s2Step61HeadGvFresh ++ (growRow 770 s2Step61HeadFvFresh ++ [])))) s2Step61HeadG_Incoming s2Step61HeadG_checked h1 s2Step61HeadG_Outgoing
  exact h0
theorem s2Step61HeadBank_checked : compileHmrBankResizeLog .headroom s2Step61HeadGBefore ⟨s2Step61HeadFRow,s2Step61HeadGRow,s2Step61HeadFvRow,s2Step61HeadGvRow⟩ ⟨240,240,45,45⟩ [s2Step61HeadGFresh,s2Step61HeadFFresh,s2Step61HeadGvFresh,s2Step61HeadFvFresh]=
    some (s2Step61HeadFvAfter,⟨s2Step61HeadFOut,s2Step61HeadGOut,s2Step61HeadFvOut,s2Step61HeadGvOut⟩,(growRow 769 s2Step61HeadGFresh ++ (growRow 768 s2Step61HeadFFresh ++ (growRow 771 s2Step61HeadGvFresh ++ (growRow 770 s2Step61HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step61HeadBank_rows]
  rfl
def s2Step62HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817, 844],769⟩
def s2Step62HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 845],768⟩
def s2Step62HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 816],771⟩
def s2Step62HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩
theorem s2Step62HeadBank_incomingDistinct : ([s2Step62HeadGRow,s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62HeadBank_outgoingOwned : rowsOwned s2Step62HeadFvAfter [s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step62HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62HeadG_Incoming : rowsOwned s2Step62HeadGBefore [s2Step62HeadGRow,s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62HeadGRow,s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow] 0 s2Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62HeadG_Outgoing : rowsOwned s2Step62HeadFvAfter [s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] :=
  hmrRows_owned_drop s2Step62HeadFvAfter [s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] 0 s2Step62HeadBank_outgoingOwned
theorem s2Step62HeadF_Incoming : rowsOwned s2Step62HeadFBefore [s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62HeadGRow,s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow] 1 s2Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62HeadF_Outgoing : rowsOwned s2Step62HeadFvAfter [s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] :=
  hmrRows_owned_drop s2Step62HeadFvAfter [s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] 1 s2Step62HeadBank_outgoingOwned
theorem s2Step62HeadGv_Incoming : rowsOwned s2Step62HeadGvBefore [s2Step62HeadGvRow,s2Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62HeadGRow,s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow] 2 s2Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62HeadGv_Outgoing : rowsOwned s2Step62HeadFvAfter [s2Step62HeadGvOut,s2Step62HeadFvOut] :=
  hmrRows_owned_drop s2Step62HeadFvAfter [s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] 2 s2Step62HeadBank_outgoingOwned
theorem s2Step62HeadFv_Incoming : rowsOwned s2Step62HeadFvBefore [s2Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62HeadGRow,s2Step62HeadFRow,s2Step62HeadGvRow,s2Step62HeadFvRow] 3 s2Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62HeadFv_Outgoing : rowsOwned s2Step62HeadFvAfter [s2Step62HeadFvOut] :=
  hmrRows_owned_drop s2Step62HeadFvAfter [s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut] 3 s2Step62HeadBank_outgoingOwned
theorem s2Step62HeadBank_rows : planWindowRowsLog s2Step62HeadGBefore [(s2Step62HeadGRow,239),(s2Step62HeadFRow,239),(s2Step62HeadGvRow,45),(s2Step62HeadFvRow,45)] [s2Step62HeadGFresh,s2Step62HeadFFresh,s2Step62HeadGvFresh,s2Step62HeadFvFresh]=
    some (s2Step62HeadFvAfter,[s2Step62HeadGOut,s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut],(growRow 769 s2Step62HeadGFresh ++ (growRow 768 s2Step62HeadFFresh ++ (growRow 771 s2Step62HeadGvFresh ++ (growRow 770 s2Step62HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step62HeadFvAfter [] []=some (s2Step62HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step62HeadFvBefore s2Step62HeadFvAfter s2Step62HeadFvAfter
    s2Step62HeadFvRow s2Step62HeadFvOut 45 s2Step62HeadFvFresh [] [] []
    (growRow 770 s2Step62HeadFvFresh) ([]) s2Step62HeadFv_Incoming s2Step62HeadFv_checked h4 s2Step62HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step62HeadGvBefore s2Step62HeadGvAfter s2Step62HeadFvAfter
    s2Step62HeadGvRow s2Step62HeadGvOut 45 s2Step62HeadGvFresh [(s2Step62HeadFvRow,45)] [s2Step62HeadFvFresh] [s2Step62HeadFvOut]
    (growRow 771 s2Step62HeadGvFresh) ((growRow 770 s2Step62HeadFvFresh ++ [])) s2Step62HeadGv_Incoming s2Step62HeadGv_checked h3 s2Step62HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step62HeadFBefore s2Step62HeadFAfter s2Step62HeadFvAfter
    s2Step62HeadFRow s2Step62HeadFOut 239 s2Step62HeadFFresh [(s2Step62HeadGvRow,45),(s2Step62HeadFvRow,45)] [s2Step62HeadGvFresh,s2Step62HeadFvFresh] [s2Step62HeadGvOut,s2Step62HeadFvOut]
    (growRow 768 s2Step62HeadFFresh) ((growRow 771 s2Step62HeadGvFresh ++ (growRow 770 s2Step62HeadFvFresh ++ []))) s2Step62HeadF_Incoming s2Step62HeadF_checked h2 s2Step62HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step62HeadGBefore s2Step62HeadGAfter s2Step62HeadFvAfter
    s2Step62HeadGRow s2Step62HeadGOut 239 s2Step62HeadGFresh [(s2Step62HeadFRow,239),(s2Step62HeadGvRow,45),(s2Step62HeadFvRow,45)] [s2Step62HeadFFresh,s2Step62HeadGvFresh,s2Step62HeadFvFresh] [s2Step62HeadFOut,s2Step62HeadGvOut,s2Step62HeadFvOut]
    (growRow 769 s2Step62HeadGFresh) ((growRow 768 s2Step62HeadFFresh ++ (growRow 771 s2Step62HeadGvFresh ++ (growRow 770 s2Step62HeadFvFresh ++ [])))) s2Step62HeadG_Incoming s2Step62HeadG_checked h1 s2Step62HeadG_Outgoing
  exact h0
theorem s2Step62HeadBank_checked : compileHmrBankResizeLog .headroom s2Step62HeadGBefore ⟨s2Step62HeadFRow,s2Step62HeadGRow,s2Step62HeadFvRow,s2Step62HeadGvRow⟩ ⟨239,239,45,45⟩ [s2Step62HeadGFresh,s2Step62HeadFFresh,s2Step62HeadGvFresh,s2Step62HeadFvFresh]=
    some (s2Step62HeadFvAfter,⟨s2Step62HeadFOut,s2Step62HeadGOut,s2Step62HeadFvOut,s2Step62HeadGvOut⟩,(growRow 769 s2Step62HeadGFresh ++ (growRow 768 s2Step62HeadFFresh ++ (growRow 771 s2Step62HeadGvFresh ++ (growRow 770 s2Step62HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step62HeadBank_rows]
  rfl
def s2Step63HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 816],769⟩
def s2Step63HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 845],768⟩
def s2Step63HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822, 817],771⟩
def s2Step63HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩
theorem s2Step63HeadBank_incomingDistinct : ([s2Step63HeadGRow,s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63HeadBank_outgoingOwned : rowsOwned s2Step63HeadFvAfter [s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step63HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63HeadG_Incoming : rowsOwned s2Step63HeadGBefore [s2Step63HeadGRow,s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63HeadGRow,s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow] 0 s2Step63HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63HeadG_Outgoing : rowsOwned s2Step63HeadFvAfter [s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] :=
  hmrRows_owned_drop s2Step63HeadFvAfter [s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] 0 s2Step63HeadBank_outgoingOwned
theorem s2Step63HeadF_Incoming : rowsOwned s2Step63HeadFBefore [s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63HeadGRow,s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow] 1 s2Step63HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63HeadF_Outgoing : rowsOwned s2Step63HeadFvAfter [s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] :=
  hmrRows_owned_drop s2Step63HeadFvAfter [s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] 1 s2Step63HeadBank_outgoingOwned
theorem s2Step63HeadGv_Incoming : rowsOwned s2Step63HeadGvBefore [s2Step63HeadGvRow,s2Step63HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63HeadGRow,s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow] 2 s2Step63HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63HeadGv_Outgoing : rowsOwned s2Step63HeadFvAfter [s2Step63HeadGvOut,s2Step63HeadFvOut] :=
  hmrRows_owned_drop s2Step63HeadFvAfter [s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] 2 s2Step63HeadBank_outgoingOwned
theorem s2Step63HeadFv_Incoming : rowsOwned s2Step63HeadFvBefore [s2Step63HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63HeadGRow,s2Step63HeadFRow,s2Step63HeadGvRow,s2Step63HeadFvRow] 3 s2Step63HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63HeadFv_Outgoing : rowsOwned s2Step63HeadFvAfter [s2Step63HeadFvOut] :=
  hmrRows_owned_drop s2Step63HeadFvAfter [s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut] 3 s2Step63HeadBank_outgoingOwned
theorem s2Step63HeadBank_rows : planWindowRowsLog s2Step63HeadGBefore [(s2Step63HeadGRow,238),(s2Step63HeadFRow,238),(s2Step63HeadGvRow,46),(s2Step63HeadFvRow,46)] [s2Step63HeadGFresh,s2Step63HeadFFresh,s2Step63HeadGvFresh,s2Step63HeadFvFresh]=
    some (s2Step63HeadFvAfter,[s2Step63HeadGOut,s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut],(growRow 769 s2Step63HeadGFresh ++ (growRow 768 s2Step63HeadFFresh ++ (growRow 771 s2Step63HeadGvFresh ++ (growRow 770 s2Step63HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step63HeadFvAfter [] []=some (s2Step63HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step63HeadFvBefore s2Step63HeadFvAfter s2Step63HeadFvAfter
    s2Step63HeadFvRow s2Step63HeadFvOut 46 s2Step63HeadFvFresh [] [] []
    (growRow 770 s2Step63HeadFvFresh) ([]) s2Step63HeadFv_Incoming s2Step63HeadFv_checked h4 s2Step63HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step63HeadGvBefore s2Step63HeadGvAfter s2Step63HeadFvAfter
    s2Step63HeadGvRow s2Step63HeadGvOut 46 s2Step63HeadGvFresh [(s2Step63HeadFvRow,46)] [s2Step63HeadFvFresh] [s2Step63HeadFvOut]
    (growRow 771 s2Step63HeadGvFresh) ((growRow 770 s2Step63HeadFvFresh ++ [])) s2Step63HeadGv_Incoming s2Step63HeadGv_checked h3 s2Step63HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step63HeadFBefore s2Step63HeadFAfter s2Step63HeadFvAfter
    s2Step63HeadFRow s2Step63HeadFOut 238 s2Step63HeadFFresh [(s2Step63HeadGvRow,46),(s2Step63HeadFvRow,46)] [s2Step63HeadGvFresh,s2Step63HeadFvFresh] [s2Step63HeadGvOut,s2Step63HeadFvOut]
    (growRow 768 s2Step63HeadFFresh) ((growRow 771 s2Step63HeadGvFresh ++ (growRow 770 s2Step63HeadFvFresh ++ []))) s2Step63HeadF_Incoming s2Step63HeadF_checked h2 s2Step63HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step63HeadGBefore s2Step63HeadGAfter s2Step63HeadFvAfter
    s2Step63HeadGRow s2Step63HeadGOut 238 s2Step63HeadGFresh [(s2Step63HeadFRow,238),(s2Step63HeadGvRow,46),(s2Step63HeadFvRow,46)] [s2Step63HeadFFresh,s2Step63HeadGvFresh,s2Step63HeadFvFresh] [s2Step63HeadFOut,s2Step63HeadGvOut,s2Step63HeadFvOut]
    (growRow 769 s2Step63HeadGFresh) ((growRow 768 s2Step63HeadFFresh ++ (growRow 771 s2Step63HeadGvFresh ++ (growRow 770 s2Step63HeadFvFresh ++ [])))) s2Step63HeadG_Incoming s2Step63HeadG_checked h1 s2Step63HeadG_Outgoing
  exact h0
theorem s2Step63HeadBank_checked : compileHmrBankResizeLog .headroom s2Step63HeadGBefore ⟨s2Step63HeadFRow,s2Step63HeadGRow,s2Step63HeadFvRow,s2Step63HeadGvRow⟩ ⟨238,238,46,46⟩ [s2Step63HeadGFresh,s2Step63HeadFFresh,s2Step63HeadGvFresh,s2Step63HeadFvFresh]=
    some (s2Step63HeadFvAfter,⟨s2Step63HeadFOut,s2Step63HeadGOut,s2Step63HeadFvOut,s2Step63HeadGvOut⟩,(growRow 769 s2Step63HeadGFresh ++ (growRow 768 s2Step63HeadFFresh ++ (growRow 771 s2Step63HeadGvFresh ++ (growRow 770 s2Step63HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step63HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
