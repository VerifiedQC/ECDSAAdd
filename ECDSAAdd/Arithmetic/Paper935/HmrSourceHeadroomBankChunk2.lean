import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786, 780],769⟩
def s2Step32HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩
def s2Step32HeadGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791, 787],771⟩
def s2Step32HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩
theorem s2Step32HeadBank_incomingDistinct : ([s2Step32HeadGRow,s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32HeadBank_outgoingOwned : rowsOwned s2Step32HeadFvAfter [s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step32HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32HeadG_Incoming : rowsOwned s2Step32HeadGBefore [s2Step32HeadGRow,s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32HeadGRow,s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow] 0 s2Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32HeadG_Outgoing : rowsOwned s2Step32HeadFvAfter [s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] :=
  hmrRows_owned_drop s2Step32HeadFvAfter [s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] 0 s2Step32HeadBank_outgoingOwned
theorem s2Step32HeadF_Incoming : rowsOwned s2Step32HeadFBefore [s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32HeadGRow,s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow] 1 s2Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32HeadF_Outgoing : rowsOwned s2Step32HeadFvAfter [s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] :=
  hmrRows_owned_drop s2Step32HeadFvAfter [s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] 1 s2Step32HeadBank_outgoingOwned
theorem s2Step32HeadGv_Incoming : rowsOwned s2Step32HeadGvBefore [s2Step32HeadGvRow,s2Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32HeadGRow,s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow] 2 s2Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32HeadGv_Outgoing : rowsOwned s2Step32HeadFvAfter [s2Step32HeadGvOut,s2Step32HeadFvOut] :=
  hmrRows_owned_drop s2Step32HeadFvAfter [s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] 2 s2Step32HeadBank_outgoingOwned
theorem s2Step32HeadFv_Incoming : rowsOwned s2Step32HeadFvBefore [s2Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32HeadGRow,s2Step32HeadFRow,s2Step32HeadGvRow,s2Step32HeadFvRow] 3 s2Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32HeadFv_Outgoing : rowsOwned s2Step32HeadFvAfter [s2Step32HeadFvOut] :=
  hmrRows_owned_drop s2Step32HeadFvAfter [s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut] 3 s2Step32HeadBank_outgoingOwned
theorem s2Step32HeadBank_rows : planWindowRowsLog s2Step32HeadGBefore [(s2Step32HeadGRow,254),(s2Step32HeadFRow,254),(s2Step32HeadGvRow,30),(s2Step32HeadFvRow,30)] [s2Step32HeadGFresh,s2Step32HeadFFresh,s2Step32HeadGvFresh,s2Step32HeadFvFresh]=
    some (s2Step32HeadFvAfter,[s2Step32HeadGOut,s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut],(growRow 769 s2Step32HeadGFresh ++ (growRow 768 s2Step32HeadFFresh ++ (growRow 771 s2Step32HeadGvFresh ++ (growRow 770 s2Step32HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step32HeadFvAfter [] []=some (s2Step32HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step32HeadFvBefore s2Step32HeadFvAfter s2Step32HeadFvAfter
    s2Step32HeadFvRow s2Step32HeadFvOut 30 s2Step32HeadFvFresh [] [] []
    (growRow 770 s2Step32HeadFvFresh) ([]) s2Step32HeadFv_Incoming s2Step32HeadFv_checked h4 s2Step32HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step32HeadGvBefore s2Step32HeadGvAfter s2Step32HeadFvAfter
    s2Step32HeadGvRow s2Step32HeadGvOut 30 s2Step32HeadGvFresh [(s2Step32HeadFvRow,30)] [s2Step32HeadFvFresh] [s2Step32HeadFvOut]
    (growRow 771 s2Step32HeadGvFresh) ((growRow 770 s2Step32HeadFvFresh ++ [])) s2Step32HeadGv_Incoming s2Step32HeadGv_checked h3 s2Step32HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step32HeadFBefore s2Step32HeadFAfter s2Step32HeadFvAfter
    s2Step32HeadFRow s2Step32HeadFOut 254 s2Step32HeadFFresh [(s2Step32HeadGvRow,30),(s2Step32HeadFvRow,30)] [s2Step32HeadGvFresh,s2Step32HeadFvFresh] [s2Step32HeadGvOut,s2Step32HeadFvOut]
    (growRow 768 s2Step32HeadFFresh) ((growRow 771 s2Step32HeadGvFresh ++ (growRow 770 s2Step32HeadFvFresh ++ []))) s2Step32HeadF_Incoming s2Step32HeadF_checked h2 s2Step32HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step32HeadGBefore s2Step32HeadGAfter s2Step32HeadFvAfter
    s2Step32HeadGRow s2Step32HeadGOut 254 s2Step32HeadGFresh [(s2Step32HeadFRow,254),(s2Step32HeadGvRow,30),(s2Step32HeadFvRow,30)] [s2Step32HeadFFresh,s2Step32HeadGvFresh,s2Step32HeadFvFresh] [s2Step32HeadFOut,s2Step32HeadGvOut,s2Step32HeadFvOut]
    (growRow 769 s2Step32HeadGFresh) ((growRow 768 s2Step32HeadFFresh ++ (growRow 771 s2Step32HeadGvFresh ++ (growRow 770 s2Step32HeadFvFresh ++ [])))) s2Step32HeadG_Incoming s2Step32HeadG_checked h1 s2Step32HeadG_Outgoing
  exact h0
theorem s2Step32HeadBank_checked : compileHmrBankResizeLog .headroom s2Step32HeadGBefore ⟨s2Step32HeadFRow,s2Step32HeadGRow,s2Step32HeadFvRow,s2Step32HeadGvRow⟩ ⟨254,254,30,30⟩ [s2Step32HeadGFresh,s2Step32HeadFFresh,s2Step32HeadGvFresh,s2Step32HeadFvFresh]=
    some (s2Step32HeadFvAfter,⟨s2Step32HeadFOut,s2Step32HeadGOut,s2Step32HeadFvOut,s2Step32HeadGvOut⟩,(growRow 769 s2Step32HeadGFresh ++ (growRow 768 s2Step32HeadFFresh ++ (growRow 771 s2Step32HeadGvFresh ++ (growRow 770 s2Step32HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step32HeadBank_rows]
  rfl
def s2Step33HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 791],769⟩
def s2Step33HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 787],768⟩
def s2Step33HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 785],771⟩
def s2Step33HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
theorem s2Step33HeadBank_incomingDistinct : ([s2Step33HeadGRow,s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33HeadBank_outgoingOwned : rowsOwned s2Step33HeadFvAfter [s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step33HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33HeadG_Incoming : rowsOwned s2Step33HeadGBefore [s2Step33HeadGRow,s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33HeadGRow,s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow] 0 s2Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33HeadG_Outgoing : rowsOwned s2Step33HeadFvAfter [s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] :=
  hmrRows_owned_drop s2Step33HeadFvAfter [s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] 0 s2Step33HeadBank_outgoingOwned
theorem s2Step33HeadF_Incoming : rowsOwned s2Step33HeadFBefore [s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33HeadGRow,s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow] 1 s2Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33HeadF_Outgoing : rowsOwned s2Step33HeadFvAfter [s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] :=
  hmrRows_owned_drop s2Step33HeadFvAfter [s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] 1 s2Step33HeadBank_outgoingOwned
theorem s2Step33HeadGv_Incoming : rowsOwned s2Step33HeadGvBefore [s2Step33HeadGvRow,s2Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33HeadGRow,s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow] 2 s2Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33HeadGv_Outgoing : rowsOwned s2Step33HeadFvAfter [s2Step33HeadGvOut,s2Step33HeadFvOut] :=
  hmrRows_owned_drop s2Step33HeadFvAfter [s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] 2 s2Step33HeadBank_outgoingOwned
theorem s2Step33HeadFv_Incoming : rowsOwned s2Step33HeadFvBefore [s2Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33HeadGRow,s2Step33HeadFRow,s2Step33HeadGvRow,s2Step33HeadFvRow] 3 s2Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33HeadFv_Outgoing : rowsOwned s2Step33HeadFvAfter [s2Step33HeadFvOut] :=
  hmrRows_owned_drop s2Step33HeadFvAfter [s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut] 3 s2Step33HeadBank_outgoingOwned
theorem s2Step33HeadBank_rows : planWindowRowsLog s2Step33HeadGBefore [(s2Step33HeadGRow,253),(s2Step33HeadFRow,253),(s2Step33HeadGvRow,30),(s2Step33HeadFvRow,30)] [s2Step33HeadGFresh,s2Step33HeadFFresh,s2Step33HeadGvFresh,s2Step33HeadFvFresh]=
    some (s2Step33HeadFvAfter,[s2Step33HeadGOut,s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut],(growRow 769 s2Step33HeadGFresh ++ (growRow 768 s2Step33HeadFFresh ++ (growRow 771 s2Step33HeadGvFresh ++ (growRow 770 s2Step33HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step33HeadFvAfter [] []=some (s2Step33HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step33HeadFvBefore s2Step33HeadFvAfter s2Step33HeadFvAfter
    s2Step33HeadFvRow s2Step33HeadFvOut 30 s2Step33HeadFvFresh [] [] []
    (growRow 770 s2Step33HeadFvFresh) ([]) s2Step33HeadFv_Incoming s2Step33HeadFv_checked h4 s2Step33HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step33HeadGvBefore s2Step33HeadGvAfter s2Step33HeadFvAfter
    s2Step33HeadGvRow s2Step33HeadGvOut 30 s2Step33HeadGvFresh [(s2Step33HeadFvRow,30)] [s2Step33HeadFvFresh] [s2Step33HeadFvOut]
    (growRow 771 s2Step33HeadGvFresh) ((growRow 770 s2Step33HeadFvFresh ++ [])) s2Step33HeadGv_Incoming s2Step33HeadGv_checked h3 s2Step33HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step33HeadFBefore s2Step33HeadFAfter s2Step33HeadFvAfter
    s2Step33HeadFRow s2Step33HeadFOut 253 s2Step33HeadFFresh [(s2Step33HeadGvRow,30),(s2Step33HeadFvRow,30)] [s2Step33HeadGvFresh,s2Step33HeadFvFresh] [s2Step33HeadGvOut,s2Step33HeadFvOut]
    (growRow 768 s2Step33HeadFFresh) ((growRow 771 s2Step33HeadGvFresh ++ (growRow 770 s2Step33HeadFvFresh ++ []))) s2Step33HeadF_Incoming s2Step33HeadF_checked h2 s2Step33HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step33HeadGBefore s2Step33HeadGAfter s2Step33HeadFvAfter
    s2Step33HeadGRow s2Step33HeadGOut 253 s2Step33HeadGFresh [(s2Step33HeadFRow,253),(s2Step33HeadGvRow,30),(s2Step33HeadFvRow,30)] [s2Step33HeadFFresh,s2Step33HeadGvFresh,s2Step33HeadFvFresh] [s2Step33HeadFOut,s2Step33HeadGvOut,s2Step33HeadFvOut]
    (growRow 769 s2Step33HeadGFresh) ((growRow 768 s2Step33HeadFFresh ++ (growRow 771 s2Step33HeadGvFresh ++ (growRow 770 s2Step33HeadFvFresh ++ [])))) s2Step33HeadG_Incoming s2Step33HeadG_checked h1 s2Step33HeadG_Outgoing
  exact h0
theorem s2Step33HeadBank_checked : compileHmrBankResizeLog .headroom s2Step33HeadGBefore ⟨s2Step33HeadFRow,s2Step33HeadGRow,s2Step33HeadFvRow,s2Step33HeadGvRow⟩ ⟨253,253,30,30⟩ [s2Step33HeadGFresh,s2Step33HeadFFresh,s2Step33HeadGvFresh,s2Step33HeadFvFresh]=
    some (s2Step33HeadFvAfter,⟨s2Step33HeadFOut,s2Step33HeadGOut,s2Step33HeadFvOut,s2Step33HeadGvOut⟩,(growRow 769 s2Step33HeadGFresh ++ (growRow 768 s2Step33HeadFFresh ++ (growRow 771 s2Step33HeadGvFresh ++ (growRow 770 s2Step33HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step33HeadBank_rows]
  rfl
def s2Step34HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 785],769⟩
def s2Step34HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 787],768⟩
def s2Step34HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 779],771⟩
def s2Step34HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 791],770⟩
theorem s2Step34HeadBank_incomingDistinct : ([s2Step34HeadGRow,s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34HeadBank_outgoingOwned : rowsOwned s2Step34HeadFvAfter [s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step34HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34HeadG_Incoming : rowsOwned s2Step34HeadGBefore [s2Step34HeadGRow,s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34HeadGRow,s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow] 0 s2Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34HeadG_Outgoing : rowsOwned s2Step34HeadFvAfter [s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] :=
  hmrRows_owned_drop s2Step34HeadFvAfter [s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] 0 s2Step34HeadBank_outgoingOwned
theorem s2Step34HeadF_Incoming : rowsOwned s2Step34HeadFBefore [s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34HeadGRow,s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow] 1 s2Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34HeadF_Outgoing : rowsOwned s2Step34HeadFvAfter [s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] :=
  hmrRows_owned_drop s2Step34HeadFvAfter [s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] 1 s2Step34HeadBank_outgoingOwned
theorem s2Step34HeadGv_Incoming : rowsOwned s2Step34HeadGvBefore [s2Step34HeadGvRow,s2Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34HeadGRow,s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow] 2 s2Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34HeadGv_Outgoing : rowsOwned s2Step34HeadFvAfter [s2Step34HeadGvOut,s2Step34HeadFvOut] :=
  hmrRows_owned_drop s2Step34HeadFvAfter [s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] 2 s2Step34HeadBank_outgoingOwned
theorem s2Step34HeadFv_Incoming : rowsOwned s2Step34HeadFvBefore [s2Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34HeadGRow,s2Step34HeadFRow,s2Step34HeadGvRow,s2Step34HeadFvRow] 3 s2Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34HeadFv_Outgoing : rowsOwned s2Step34HeadFvAfter [s2Step34HeadFvOut] :=
  hmrRows_owned_drop s2Step34HeadFvAfter [s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut] 3 s2Step34HeadBank_outgoingOwned
theorem s2Step34HeadBank_rows : planWindowRowsLog s2Step34HeadGBefore [(s2Step34HeadGRow,252),(s2Step34HeadFRow,252),(s2Step34HeadGvRow,31),(s2Step34HeadFvRow,31)] [s2Step34HeadGFresh,s2Step34HeadFFresh,s2Step34HeadGvFresh,s2Step34HeadFvFresh]=
    some (s2Step34HeadFvAfter,[s2Step34HeadGOut,s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut],(growRow 769 s2Step34HeadGFresh ++ (growRow 768 s2Step34HeadFFresh ++ (growRow 771 s2Step34HeadGvFresh ++ (growRow 770 s2Step34HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step34HeadFvAfter [] []=some (s2Step34HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step34HeadFvBefore s2Step34HeadFvAfter s2Step34HeadFvAfter
    s2Step34HeadFvRow s2Step34HeadFvOut 31 s2Step34HeadFvFresh [] [] []
    (growRow 770 s2Step34HeadFvFresh) ([]) s2Step34HeadFv_Incoming s2Step34HeadFv_checked h4 s2Step34HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step34HeadGvBefore s2Step34HeadGvAfter s2Step34HeadFvAfter
    s2Step34HeadGvRow s2Step34HeadGvOut 31 s2Step34HeadGvFresh [(s2Step34HeadFvRow,31)] [s2Step34HeadFvFresh] [s2Step34HeadFvOut]
    (growRow 771 s2Step34HeadGvFresh) ((growRow 770 s2Step34HeadFvFresh ++ [])) s2Step34HeadGv_Incoming s2Step34HeadGv_checked h3 s2Step34HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step34HeadFBefore s2Step34HeadFAfter s2Step34HeadFvAfter
    s2Step34HeadFRow s2Step34HeadFOut 252 s2Step34HeadFFresh [(s2Step34HeadGvRow,31),(s2Step34HeadFvRow,31)] [s2Step34HeadGvFresh,s2Step34HeadFvFresh] [s2Step34HeadGvOut,s2Step34HeadFvOut]
    (growRow 768 s2Step34HeadFFresh) ((growRow 771 s2Step34HeadGvFresh ++ (growRow 770 s2Step34HeadFvFresh ++ []))) s2Step34HeadF_Incoming s2Step34HeadF_checked h2 s2Step34HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step34HeadGBefore s2Step34HeadGAfter s2Step34HeadFvAfter
    s2Step34HeadGRow s2Step34HeadGOut 252 s2Step34HeadGFresh [(s2Step34HeadFRow,252),(s2Step34HeadGvRow,31),(s2Step34HeadFvRow,31)] [s2Step34HeadFFresh,s2Step34HeadGvFresh,s2Step34HeadFvFresh] [s2Step34HeadFOut,s2Step34HeadGvOut,s2Step34HeadFvOut]
    (growRow 769 s2Step34HeadGFresh) ((growRow 768 s2Step34HeadFFresh ++ (growRow 771 s2Step34HeadGvFresh ++ (growRow 770 s2Step34HeadFvFresh ++ [])))) s2Step34HeadG_Incoming s2Step34HeadG_checked h1 s2Step34HeadG_Outgoing
  exact h0
theorem s2Step34HeadBank_checked : compileHmrBankResizeLog .headroom s2Step34HeadGBefore ⟨s2Step34HeadFRow,s2Step34HeadGRow,s2Step34HeadFvRow,s2Step34HeadGvRow⟩ ⟨252,252,31,31⟩ [s2Step34HeadGFresh,s2Step34HeadFFresh,s2Step34HeadGvFresh,s2Step34HeadFvFresh]=
    some (s2Step34HeadFvAfter,⟨s2Step34HeadFOut,s2Step34HeadGOut,s2Step34HeadFvOut,s2Step34HeadGvOut⟩,(growRow 769 s2Step34HeadGFresh ++ (growRow 768 s2Step34HeadFFresh ++ (growRow 771 s2Step34HeadGvFresh ++ (growRow 770 s2Step34HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step34HeadBank_rows]
  rfl
def s2Step35HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 779],769⟩
def s2Step35HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 791],768⟩
def s2Step35HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 787],771⟩
def s2Step35HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
theorem s2Step35HeadBank_incomingDistinct : ([s2Step35HeadGRow,s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35HeadBank_outgoingOwned : rowsOwned s2Step35HeadFvAfter [s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step35HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35HeadG_Incoming : rowsOwned s2Step35HeadGBefore [s2Step35HeadGRow,s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35HeadGRow,s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow] 0 s2Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35HeadG_Outgoing : rowsOwned s2Step35HeadFvAfter [s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] :=
  hmrRows_owned_drop s2Step35HeadFvAfter [s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] 0 s2Step35HeadBank_outgoingOwned
theorem s2Step35HeadF_Incoming : rowsOwned s2Step35HeadFBefore [s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35HeadGRow,s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow] 1 s2Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35HeadF_Outgoing : rowsOwned s2Step35HeadFvAfter [s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] :=
  hmrRows_owned_drop s2Step35HeadFvAfter [s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] 1 s2Step35HeadBank_outgoingOwned
theorem s2Step35HeadGv_Incoming : rowsOwned s2Step35HeadGvBefore [s2Step35HeadGvRow,s2Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35HeadGRow,s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow] 2 s2Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35HeadGv_Outgoing : rowsOwned s2Step35HeadFvAfter [s2Step35HeadGvOut,s2Step35HeadFvOut] :=
  hmrRows_owned_drop s2Step35HeadFvAfter [s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] 2 s2Step35HeadBank_outgoingOwned
theorem s2Step35HeadFv_Incoming : rowsOwned s2Step35HeadFvBefore [s2Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35HeadGRow,s2Step35HeadFRow,s2Step35HeadGvRow,s2Step35HeadFvRow] 3 s2Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35HeadFv_Outgoing : rowsOwned s2Step35HeadFvAfter [s2Step35HeadFvOut] :=
  hmrRows_owned_drop s2Step35HeadFvAfter [s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut] 3 s2Step35HeadBank_outgoingOwned
theorem s2Step35HeadBank_rows : planWindowRowsLog s2Step35HeadGBefore [(s2Step35HeadGRow,252),(s2Step35HeadFRow,252),(s2Step35HeadGvRow,31),(s2Step35HeadFvRow,31)] [s2Step35HeadGFresh,s2Step35HeadFFresh,s2Step35HeadGvFresh,s2Step35HeadFvFresh]=
    some (s2Step35HeadFvAfter,[s2Step35HeadGOut,s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut],(growRow 769 s2Step35HeadGFresh ++ (growRow 768 s2Step35HeadFFresh ++ (growRow 771 s2Step35HeadGvFresh ++ (growRow 770 s2Step35HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step35HeadFvAfter [] []=some (s2Step35HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step35HeadFvBefore s2Step35HeadFvAfter s2Step35HeadFvAfter
    s2Step35HeadFvRow s2Step35HeadFvOut 31 s2Step35HeadFvFresh [] [] []
    (growRow 770 s2Step35HeadFvFresh) ([]) s2Step35HeadFv_Incoming s2Step35HeadFv_checked h4 s2Step35HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step35HeadGvBefore s2Step35HeadGvAfter s2Step35HeadFvAfter
    s2Step35HeadGvRow s2Step35HeadGvOut 31 s2Step35HeadGvFresh [(s2Step35HeadFvRow,31)] [s2Step35HeadFvFresh] [s2Step35HeadFvOut]
    (growRow 771 s2Step35HeadGvFresh) ((growRow 770 s2Step35HeadFvFresh ++ [])) s2Step35HeadGv_Incoming s2Step35HeadGv_checked h3 s2Step35HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step35HeadFBefore s2Step35HeadFAfter s2Step35HeadFvAfter
    s2Step35HeadFRow s2Step35HeadFOut 252 s2Step35HeadFFresh [(s2Step35HeadGvRow,31),(s2Step35HeadFvRow,31)] [s2Step35HeadGvFresh,s2Step35HeadFvFresh] [s2Step35HeadGvOut,s2Step35HeadFvOut]
    (growRow 768 s2Step35HeadFFresh) ((growRow 771 s2Step35HeadGvFresh ++ (growRow 770 s2Step35HeadFvFresh ++ []))) s2Step35HeadF_Incoming s2Step35HeadF_checked h2 s2Step35HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step35HeadGBefore s2Step35HeadGAfter s2Step35HeadFvAfter
    s2Step35HeadGRow s2Step35HeadGOut 252 s2Step35HeadGFresh [(s2Step35HeadFRow,252),(s2Step35HeadGvRow,31),(s2Step35HeadFvRow,31)] [s2Step35HeadFFresh,s2Step35HeadGvFresh,s2Step35HeadFvFresh] [s2Step35HeadFOut,s2Step35HeadGvOut,s2Step35HeadFvOut]
    (growRow 769 s2Step35HeadGFresh) ((growRow 768 s2Step35HeadFFresh ++ (growRow 771 s2Step35HeadGvFresh ++ (growRow 770 s2Step35HeadFvFresh ++ [])))) s2Step35HeadG_Incoming s2Step35HeadG_checked h1 s2Step35HeadG_Outgoing
  exact h0
theorem s2Step35HeadBank_checked : compileHmrBankResizeLog .headroom s2Step35HeadGBefore ⟨s2Step35HeadFRow,s2Step35HeadGRow,s2Step35HeadFvRow,s2Step35HeadGvRow⟩ ⟨252,252,31,31⟩ [s2Step35HeadGFresh,s2Step35HeadFFresh,s2Step35HeadGvFresh,s2Step35HeadFvFresh]=
    some (s2Step35HeadFvAfter,⟨s2Step35HeadFOut,s2Step35HeadGOut,s2Step35HeadFvOut,s2Step35HeadGvOut⟩,(growRow 769 s2Step35HeadGFresh ++ (growRow 768 s2Step35HeadFFresh ++ (growRow 771 s2Step35HeadGvFresh ++ (growRow 770 s2Step35HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step35HeadBank_rows]
  rfl
def s2Step36HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 791],769⟩
def s2Step36HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793, 779],768⟩
def s2Step36HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 786],771⟩
def s2Step36HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 780],770⟩
theorem s2Step36HeadBank_incomingDistinct : ([s2Step36HeadGRow,s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36HeadBank_outgoingOwned : rowsOwned s2Step36HeadFvAfter [s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step36HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36HeadG_Incoming : rowsOwned s2Step36HeadGBefore [s2Step36HeadGRow,s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36HeadGRow,s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow] 0 s2Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36HeadG_Outgoing : rowsOwned s2Step36HeadFvAfter [s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] :=
  hmrRows_owned_drop s2Step36HeadFvAfter [s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] 0 s2Step36HeadBank_outgoingOwned
theorem s2Step36HeadF_Incoming : rowsOwned s2Step36HeadFBefore [s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36HeadGRow,s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow] 1 s2Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36HeadF_Outgoing : rowsOwned s2Step36HeadFvAfter [s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] :=
  hmrRows_owned_drop s2Step36HeadFvAfter [s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] 1 s2Step36HeadBank_outgoingOwned
theorem s2Step36HeadGv_Incoming : rowsOwned s2Step36HeadGvBefore [s2Step36HeadGvRow,s2Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36HeadGRow,s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow] 2 s2Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36HeadGv_Outgoing : rowsOwned s2Step36HeadFvAfter [s2Step36HeadGvOut,s2Step36HeadFvOut] :=
  hmrRows_owned_drop s2Step36HeadFvAfter [s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] 2 s2Step36HeadBank_outgoingOwned
theorem s2Step36HeadFv_Incoming : rowsOwned s2Step36HeadFvBefore [s2Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36HeadGRow,s2Step36HeadFRow,s2Step36HeadGvRow,s2Step36HeadFvRow] 3 s2Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36HeadFv_Outgoing : rowsOwned s2Step36HeadFvAfter [s2Step36HeadFvOut] :=
  hmrRows_owned_drop s2Step36HeadFvAfter [s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut] 3 s2Step36HeadBank_outgoingOwned
theorem s2Step36HeadBank_rows : planWindowRowsLog s2Step36HeadGBefore [(s2Step36HeadGRow,252),(s2Step36HeadFRow,252),(s2Step36HeadGvRow,32),(s2Step36HeadFvRow,32)] [s2Step36HeadGFresh,s2Step36HeadFFresh,s2Step36HeadGvFresh,s2Step36HeadFvFresh]=
    some (s2Step36HeadFvAfter,[s2Step36HeadGOut,s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut],(growRow 769 s2Step36HeadGFresh ++ (growRow 768 s2Step36HeadFFresh ++ (growRow 771 s2Step36HeadGvFresh ++ (growRow 770 s2Step36HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step36HeadFvAfter [] []=some (s2Step36HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step36HeadFvBefore s2Step36HeadFvAfter s2Step36HeadFvAfter
    s2Step36HeadFvRow s2Step36HeadFvOut 32 s2Step36HeadFvFresh [] [] []
    (growRow 770 s2Step36HeadFvFresh) ([]) s2Step36HeadFv_Incoming s2Step36HeadFv_checked h4 s2Step36HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step36HeadGvBefore s2Step36HeadGvAfter s2Step36HeadFvAfter
    s2Step36HeadGvRow s2Step36HeadGvOut 32 s2Step36HeadGvFresh [(s2Step36HeadFvRow,32)] [s2Step36HeadFvFresh] [s2Step36HeadFvOut]
    (growRow 771 s2Step36HeadGvFresh) ((growRow 770 s2Step36HeadFvFresh ++ [])) s2Step36HeadGv_Incoming s2Step36HeadGv_checked h3 s2Step36HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step36HeadFBefore s2Step36HeadFAfter s2Step36HeadFvAfter
    s2Step36HeadFRow s2Step36HeadFOut 252 s2Step36HeadFFresh [(s2Step36HeadGvRow,32),(s2Step36HeadFvRow,32)] [s2Step36HeadGvFresh,s2Step36HeadFvFresh] [s2Step36HeadGvOut,s2Step36HeadFvOut]
    (growRow 768 s2Step36HeadFFresh) ((growRow 771 s2Step36HeadGvFresh ++ (growRow 770 s2Step36HeadFvFresh ++ []))) s2Step36HeadF_Incoming s2Step36HeadF_checked h2 s2Step36HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step36HeadGBefore s2Step36HeadGAfter s2Step36HeadFvAfter
    s2Step36HeadGRow s2Step36HeadGOut 252 s2Step36HeadGFresh [(s2Step36HeadFRow,252),(s2Step36HeadGvRow,32),(s2Step36HeadFvRow,32)] [s2Step36HeadFFresh,s2Step36HeadGvFresh,s2Step36HeadFvFresh] [s2Step36HeadFOut,s2Step36HeadGvOut,s2Step36HeadFvOut]
    (growRow 769 s2Step36HeadGFresh) ((growRow 768 s2Step36HeadFFresh ++ (growRow 771 s2Step36HeadGvFresh ++ (growRow 770 s2Step36HeadFvFresh ++ [])))) s2Step36HeadG_Incoming s2Step36HeadG_checked h1 s2Step36HeadG_Outgoing
  exact h0
theorem s2Step36HeadBank_checked : compileHmrBankResizeLog .headroom s2Step36HeadGBefore ⟨s2Step36HeadFRow,s2Step36HeadGRow,s2Step36HeadFvRow,s2Step36HeadGvRow⟩ ⟨252,252,32,32⟩ [s2Step36HeadGFresh,s2Step36HeadFFresh,s2Step36HeadGvFresh,s2Step36HeadFvFresh]=
    some (s2Step36HeadFvAfter,⟨s2Step36HeadFOut,s2Step36HeadGOut,s2Step36HeadFvOut,s2Step36HeadGvOut⟩,(growRow 769 s2Step36HeadGFresh ++ (growRow 768 s2Step36HeadFFresh ++ (growRow 771 s2Step36HeadGvFresh ++ (growRow 770 s2Step36HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step36HeadBank_rows]
  rfl
def s2Step37HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 786],769⟩
def s2Step37HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 780],768⟩
def s2Step37HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step37HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
theorem s2Step37HeadBank_incomingDistinct : ([s2Step37HeadGRow,s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37HeadBank_outgoingOwned : rowsOwned s2Step37HeadFvAfter [s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step37HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37HeadG_Incoming : rowsOwned s2Step37HeadGBefore [s2Step37HeadGRow,s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37HeadGRow,s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow] 0 s2Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37HeadG_Outgoing : rowsOwned s2Step37HeadFvAfter [s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] :=
  hmrRows_owned_drop s2Step37HeadFvAfter [s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] 0 s2Step37HeadBank_outgoingOwned
theorem s2Step37HeadF_Incoming : rowsOwned s2Step37HeadFBefore [s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37HeadGRow,s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow] 1 s2Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37HeadF_Outgoing : rowsOwned s2Step37HeadFvAfter [s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] :=
  hmrRows_owned_drop s2Step37HeadFvAfter [s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] 1 s2Step37HeadBank_outgoingOwned
theorem s2Step37HeadGv_Incoming : rowsOwned s2Step37HeadGvBefore [s2Step37HeadGvRow,s2Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37HeadGRow,s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow] 2 s2Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37HeadGv_Outgoing : rowsOwned s2Step37HeadFvAfter [s2Step37HeadGvOut,s2Step37HeadFvOut] :=
  hmrRows_owned_drop s2Step37HeadFvAfter [s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] 2 s2Step37HeadBank_outgoingOwned
theorem s2Step37HeadFv_Incoming : rowsOwned s2Step37HeadFvBefore [s2Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37HeadGRow,s2Step37HeadFRow,s2Step37HeadGvRow,s2Step37HeadFvRow] 3 s2Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37HeadFv_Outgoing : rowsOwned s2Step37HeadFvAfter [s2Step37HeadFvOut] :=
  hmrRows_owned_drop s2Step37HeadFvAfter [s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut] 3 s2Step37HeadBank_outgoingOwned
theorem s2Step37HeadBank_rows : planWindowRowsLog s2Step37HeadGBefore [(s2Step37HeadGRow,251),(s2Step37HeadFRow,251),(s2Step37HeadGvRow,32),(s2Step37HeadFvRow,32)] [s2Step37HeadGFresh,s2Step37HeadFFresh,s2Step37HeadGvFresh,s2Step37HeadFvFresh]=
    some (s2Step37HeadFvAfter,[s2Step37HeadGOut,s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut],(growRow 769 s2Step37HeadGFresh ++ (growRow 768 s2Step37HeadFFresh ++ (growRow 771 s2Step37HeadGvFresh ++ (growRow 770 s2Step37HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step37HeadFvAfter [] []=some (s2Step37HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step37HeadFvBefore s2Step37HeadFvAfter s2Step37HeadFvAfter
    s2Step37HeadFvRow s2Step37HeadFvOut 32 s2Step37HeadFvFresh [] [] []
    (growRow 770 s2Step37HeadFvFresh) ([]) s2Step37HeadFv_Incoming s2Step37HeadFv_checked h4 s2Step37HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step37HeadGvBefore s2Step37HeadGvAfter s2Step37HeadFvAfter
    s2Step37HeadGvRow s2Step37HeadGvOut 32 s2Step37HeadGvFresh [(s2Step37HeadFvRow,32)] [s2Step37HeadFvFresh] [s2Step37HeadFvOut]
    (growRow 771 s2Step37HeadGvFresh) ((growRow 770 s2Step37HeadFvFresh ++ [])) s2Step37HeadGv_Incoming s2Step37HeadGv_checked h3 s2Step37HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step37HeadFBefore s2Step37HeadFAfter s2Step37HeadFvAfter
    s2Step37HeadFRow s2Step37HeadFOut 251 s2Step37HeadFFresh [(s2Step37HeadGvRow,32),(s2Step37HeadFvRow,32)] [s2Step37HeadGvFresh,s2Step37HeadFvFresh] [s2Step37HeadGvOut,s2Step37HeadFvOut]
    (growRow 768 s2Step37HeadFFresh) ((growRow 771 s2Step37HeadGvFresh ++ (growRow 770 s2Step37HeadFvFresh ++ []))) s2Step37HeadF_Incoming s2Step37HeadF_checked h2 s2Step37HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step37HeadGBefore s2Step37HeadGAfter s2Step37HeadFvAfter
    s2Step37HeadGRow s2Step37HeadGOut 251 s2Step37HeadGFresh [(s2Step37HeadFRow,251),(s2Step37HeadGvRow,32),(s2Step37HeadFvRow,32)] [s2Step37HeadFFresh,s2Step37HeadGvFresh,s2Step37HeadFvFresh] [s2Step37HeadFOut,s2Step37HeadGvOut,s2Step37HeadFvOut]
    (growRow 769 s2Step37HeadGFresh) ((growRow 768 s2Step37HeadFFresh ++ (growRow 771 s2Step37HeadGvFresh ++ (growRow 770 s2Step37HeadFvFresh ++ [])))) s2Step37HeadG_Incoming s2Step37HeadG_checked h1 s2Step37HeadG_Outgoing
  exact h0
theorem s2Step37HeadBank_checked : compileHmrBankResizeLog .headroom s2Step37HeadGBefore ⟨s2Step37HeadFRow,s2Step37HeadGRow,s2Step37HeadFvRow,s2Step37HeadGvRow⟩ ⟨251,251,32,32⟩ [s2Step37HeadGFresh,s2Step37HeadFFresh,s2Step37HeadGvFresh,s2Step37HeadFvFresh]=
    some (s2Step37HeadFvAfter,⟨s2Step37HeadFOut,s2Step37HeadGOut,s2Step37HeadFvOut,s2Step37HeadGvOut⟩,(growRow 769 s2Step37HeadGFresh ++ (growRow 768 s2Step37HeadFFresh ++ (growRow 771 s2Step37HeadGvFresh ++ (growRow 770 s2Step37HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step37HeadBank_rows]
  rfl
def s2Step38HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792, 780],769⟩
def s2Step38HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 786],768⟩
def s2Step38HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 790],771⟩
def s2Step38HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 791],770⟩
theorem s2Step38HeadBank_incomingDistinct : ([s2Step38HeadGRow,s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38HeadBank_outgoingOwned : rowsOwned s2Step38HeadFvAfter [s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step38HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38HeadG_Incoming : rowsOwned s2Step38HeadGBefore [s2Step38HeadGRow,s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38HeadGRow,s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow] 0 s2Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38HeadG_Outgoing : rowsOwned s2Step38HeadFvAfter [s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] :=
  hmrRows_owned_drop s2Step38HeadFvAfter [s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] 0 s2Step38HeadBank_outgoingOwned
theorem s2Step38HeadF_Incoming : rowsOwned s2Step38HeadFBefore [s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38HeadGRow,s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow] 1 s2Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38HeadF_Outgoing : rowsOwned s2Step38HeadFvAfter [s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] :=
  hmrRows_owned_drop s2Step38HeadFvAfter [s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] 1 s2Step38HeadBank_outgoingOwned
theorem s2Step38HeadGv_Incoming : rowsOwned s2Step38HeadGvBefore [s2Step38HeadGvRow,s2Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38HeadGRow,s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow] 2 s2Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38HeadGv_Outgoing : rowsOwned s2Step38HeadFvAfter [s2Step38HeadGvOut,s2Step38HeadFvOut] :=
  hmrRows_owned_drop s2Step38HeadFvAfter [s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] 2 s2Step38HeadBank_outgoingOwned
theorem s2Step38HeadFv_Incoming : rowsOwned s2Step38HeadFvBefore [s2Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38HeadGRow,s2Step38HeadFRow,s2Step38HeadGvRow,s2Step38HeadFvRow] 3 s2Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38HeadFv_Outgoing : rowsOwned s2Step38HeadFvAfter [s2Step38HeadFvOut] :=
  hmrRows_owned_drop s2Step38HeadFvAfter [s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut] 3 s2Step38HeadBank_outgoingOwned
theorem s2Step38HeadBank_rows : planWindowRowsLog s2Step38HeadGBefore [(s2Step38HeadGRow,251),(s2Step38HeadFRow,251),(s2Step38HeadGvRow,33),(s2Step38HeadFvRow,33)] [s2Step38HeadGFresh,s2Step38HeadFFresh,s2Step38HeadGvFresh,s2Step38HeadFvFresh]=
    some (s2Step38HeadFvAfter,[s2Step38HeadGOut,s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut],(growRow 769 s2Step38HeadGFresh ++ (growRow 768 s2Step38HeadFFresh ++ (growRow 771 s2Step38HeadGvFresh ++ (growRow 770 s2Step38HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step38HeadFvAfter [] []=some (s2Step38HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step38HeadFvBefore s2Step38HeadFvAfter s2Step38HeadFvAfter
    s2Step38HeadFvRow s2Step38HeadFvOut 33 s2Step38HeadFvFresh [] [] []
    (growRow 770 s2Step38HeadFvFresh) ([]) s2Step38HeadFv_Incoming s2Step38HeadFv_checked h4 s2Step38HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step38HeadGvBefore s2Step38HeadGvAfter s2Step38HeadFvAfter
    s2Step38HeadGvRow s2Step38HeadGvOut 33 s2Step38HeadGvFresh [(s2Step38HeadFvRow,33)] [s2Step38HeadFvFresh] [s2Step38HeadFvOut]
    (growRow 771 s2Step38HeadGvFresh) ((growRow 770 s2Step38HeadFvFresh ++ [])) s2Step38HeadGv_Incoming s2Step38HeadGv_checked h3 s2Step38HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step38HeadFBefore s2Step38HeadFAfter s2Step38HeadFvAfter
    s2Step38HeadFRow s2Step38HeadFOut 251 s2Step38HeadFFresh [(s2Step38HeadGvRow,33),(s2Step38HeadFvRow,33)] [s2Step38HeadGvFresh,s2Step38HeadFvFresh] [s2Step38HeadGvOut,s2Step38HeadFvOut]
    (growRow 768 s2Step38HeadFFresh) ((growRow 771 s2Step38HeadGvFresh ++ (growRow 770 s2Step38HeadFvFresh ++ []))) s2Step38HeadF_Incoming s2Step38HeadF_checked h2 s2Step38HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step38HeadGBefore s2Step38HeadGAfter s2Step38HeadFvAfter
    s2Step38HeadGRow s2Step38HeadGOut 251 s2Step38HeadGFresh [(s2Step38HeadFRow,251),(s2Step38HeadGvRow,33),(s2Step38HeadFvRow,33)] [s2Step38HeadFFresh,s2Step38HeadGvFresh,s2Step38HeadFvFresh] [s2Step38HeadFOut,s2Step38HeadGvOut,s2Step38HeadFvOut]
    (growRow 769 s2Step38HeadGFresh) ((growRow 768 s2Step38HeadFFresh ++ (growRow 771 s2Step38HeadGvFresh ++ (growRow 770 s2Step38HeadFvFresh ++ [])))) s2Step38HeadG_Incoming s2Step38HeadG_checked h1 s2Step38HeadG_Outgoing
  exact h0
theorem s2Step38HeadBank_checked : compileHmrBankResizeLog .headroom s2Step38HeadGBefore ⟨s2Step38HeadFRow,s2Step38HeadGRow,s2Step38HeadFvRow,s2Step38HeadGvRow⟩ ⟨251,251,33,33⟩ [s2Step38HeadGFresh,s2Step38HeadFFresh,s2Step38HeadGvFresh,s2Step38HeadFvFresh]=
    some (s2Step38HeadFvAfter,⟨s2Step38HeadFOut,s2Step38HeadGOut,s2Step38HeadFvOut,s2Step38HeadGvOut⟩,(growRow 769 s2Step38HeadGFresh ++ (growRow 768 s2Step38HeadFFresh ++ (growRow 771 s2Step38HeadGvFresh ++ (growRow 770 s2Step38HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step38HeadBank_rows]
  rfl
def s2Step39HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 794],769⟩
def s2Step39HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 790],768⟩
def s2Step39HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 791],771⟩
def s2Step39HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩
theorem s2Step39HeadBank_incomingDistinct : ([s2Step39HeadGRow,s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39HeadBank_outgoingOwned : rowsOwned s2Step39HeadFvAfter [s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step39HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39HeadG_Incoming : rowsOwned s2Step39HeadGBefore [s2Step39HeadGRow,s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39HeadGRow,s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow] 0 s2Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39HeadG_Outgoing : rowsOwned s2Step39HeadFvAfter [s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] :=
  hmrRows_owned_drop s2Step39HeadFvAfter [s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] 0 s2Step39HeadBank_outgoingOwned
theorem s2Step39HeadF_Incoming : rowsOwned s2Step39HeadFBefore [s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39HeadGRow,s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow] 1 s2Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39HeadF_Outgoing : rowsOwned s2Step39HeadFvAfter [s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] :=
  hmrRows_owned_drop s2Step39HeadFvAfter [s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] 1 s2Step39HeadBank_outgoingOwned
theorem s2Step39HeadGv_Incoming : rowsOwned s2Step39HeadGvBefore [s2Step39HeadGvRow,s2Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39HeadGRow,s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow] 2 s2Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39HeadGv_Outgoing : rowsOwned s2Step39HeadFvAfter [s2Step39HeadGvOut,s2Step39HeadFvOut] :=
  hmrRows_owned_drop s2Step39HeadFvAfter [s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] 2 s2Step39HeadBank_outgoingOwned
theorem s2Step39HeadFv_Incoming : rowsOwned s2Step39HeadFvBefore [s2Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39HeadGRow,s2Step39HeadFRow,s2Step39HeadGvRow,s2Step39HeadFvRow] 3 s2Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39HeadFv_Outgoing : rowsOwned s2Step39HeadFvAfter [s2Step39HeadFvOut] :=
  hmrRows_owned_drop s2Step39HeadFvAfter [s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut] 3 s2Step39HeadBank_outgoingOwned
theorem s2Step39HeadBank_rows : planWindowRowsLog s2Step39HeadGBefore [(s2Step39HeadGRow,250),(s2Step39HeadFRow,250),(s2Step39HeadGvRow,33),(s2Step39HeadFvRow,33)] [s2Step39HeadGFresh,s2Step39HeadFFresh,s2Step39HeadGvFresh,s2Step39HeadFvFresh]=
    some (s2Step39HeadFvAfter,[s2Step39HeadGOut,s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut],(growRow 769 s2Step39HeadGFresh ++ (growRow 768 s2Step39HeadFFresh ++ (growRow 771 s2Step39HeadGvFresh ++ (growRow 770 s2Step39HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step39HeadFvAfter [] []=some (s2Step39HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step39HeadFvBefore s2Step39HeadFvAfter s2Step39HeadFvAfter
    s2Step39HeadFvRow s2Step39HeadFvOut 33 s2Step39HeadFvFresh [] [] []
    (growRow 770 s2Step39HeadFvFresh) ([]) s2Step39HeadFv_Incoming s2Step39HeadFv_checked h4 s2Step39HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step39HeadGvBefore s2Step39HeadGvAfter s2Step39HeadFvAfter
    s2Step39HeadGvRow s2Step39HeadGvOut 33 s2Step39HeadGvFresh [(s2Step39HeadFvRow,33)] [s2Step39HeadFvFresh] [s2Step39HeadFvOut]
    (growRow 771 s2Step39HeadGvFresh) ((growRow 770 s2Step39HeadFvFresh ++ [])) s2Step39HeadGv_Incoming s2Step39HeadGv_checked h3 s2Step39HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step39HeadFBefore s2Step39HeadFAfter s2Step39HeadFvAfter
    s2Step39HeadFRow s2Step39HeadFOut 250 s2Step39HeadFFresh [(s2Step39HeadGvRow,33),(s2Step39HeadFvRow,33)] [s2Step39HeadGvFresh,s2Step39HeadFvFresh] [s2Step39HeadGvOut,s2Step39HeadFvOut]
    (growRow 768 s2Step39HeadFFresh) ((growRow 771 s2Step39HeadGvFresh ++ (growRow 770 s2Step39HeadFvFresh ++ []))) s2Step39HeadF_Incoming s2Step39HeadF_checked h2 s2Step39HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step39HeadGBefore s2Step39HeadGAfter s2Step39HeadFvAfter
    s2Step39HeadGRow s2Step39HeadGOut 250 s2Step39HeadGFresh [(s2Step39HeadFRow,250),(s2Step39HeadGvRow,33),(s2Step39HeadFvRow,33)] [s2Step39HeadFFresh,s2Step39HeadGvFresh,s2Step39HeadFvFresh] [s2Step39HeadFOut,s2Step39HeadGvOut,s2Step39HeadFvOut]
    (growRow 769 s2Step39HeadGFresh) ((growRow 768 s2Step39HeadFFresh ++ (growRow 771 s2Step39HeadGvFresh ++ (growRow 770 s2Step39HeadFvFresh ++ [])))) s2Step39HeadG_Incoming s2Step39HeadG_checked h1 s2Step39HeadG_Outgoing
  exact h0
theorem s2Step39HeadBank_checked : compileHmrBankResizeLog .headroom s2Step39HeadGBefore ⟨s2Step39HeadFRow,s2Step39HeadGRow,s2Step39HeadFvRow,s2Step39HeadGvRow⟩ ⟨250,250,33,33⟩ [s2Step39HeadGFresh,s2Step39HeadFFresh,s2Step39HeadGvFresh,s2Step39HeadFvFresh]=
    some (s2Step39HeadFvAfter,⟨s2Step39HeadFOut,s2Step39HeadGOut,s2Step39HeadFvOut,s2Step39HeadGvOut⟩,(growRow 769 s2Step39HeadGFresh ++ (growRow 768 s2Step39HeadFFresh ++ (growRow 771 s2Step39HeadGvFresh ++ (growRow 770 s2Step39HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step39HeadBank_rows]
  rfl
def s2Step40HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787, 790],769⟩
def s2Step40HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 794],768⟩
def s2Step40HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 792],771⟩
def s2Step40HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
theorem s2Step40HeadBank_incomingDistinct : ([s2Step40HeadGRow,s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40HeadBank_outgoingOwned : rowsOwned s2Step40HeadFvAfter [s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step40HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40HeadG_Incoming : rowsOwned s2Step40HeadGBefore [s2Step40HeadGRow,s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40HeadGRow,s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow] 0 s2Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40HeadG_Outgoing : rowsOwned s2Step40HeadFvAfter [s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] :=
  hmrRows_owned_drop s2Step40HeadFvAfter [s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] 0 s2Step40HeadBank_outgoingOwned
theorem s2Step40HeadF_Incoming : rowsOwned s2Step40HeadFBefore [s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40HeadGRow,s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow] 1 s2Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40HeadF_Outgoing : rowsOwned s2Step40HeadFvAfter [s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] :=
  hmrRows_owned_drop s2Step40HeadFvAfter [s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] 1 s2Step40HeadBank_outgoingOwned
theorem s2Step40HeadGv_Incoming : rowsOwned s2Step40HeadGvBefore [s2Step40HeadGvRow,s2Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40HeadGRow,s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow] 2 s2Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40HeadGv_Outgoing : rowsOwned s2Step40HeadFvAfter [s2Step40HeadGvOut,s2Step40HeadFvOut] :=
  hmrRows_owned_drop s2Step40HeadFvAfter [s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] 2 s2Step40HeadBank_outgoingOwned
theorem s2Step40HeadFv_Incoming : rowsOwned s2Step40HeadFvBefore [s2Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40HeadGRow,s2Step40HeadFRow,s2Step40HeadGvRow,s2Step40HeadFvRow] 3 s2Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40HeadFv_Outgoing : rowsOwned s2Step40HeadFvAfter [s2Step40HeadFvOut] :=
  hmrRows_owned_drop s2Step40HeadFvAfter [s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut] 3 s2Step40HeadBank_outgoingOwned
theorem s2Step40HeadBank_rows : planWindowRowsLog s2Step40HeadGBefore [(s2Step40HeadGRow,250),(s2Step40HeadFRow,250),(s2Step40HeadGvRow,34),(s2Step40HeadFvRow,34)] [s2Step40HeadGFresh,s2Step40HeadFFresh,s2Step40HeadGvFresh,s2Step40HeadFvFresh]=
    some (s2Step40HeadFvAfter,[s2Step40HeadGOut,s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut],(growRow 769 s2Step40HeadGFresh ++ (growRow 768 s2Step40HeadFFresh ++ (growRow 771 s2Step40HeadGvFresh ++ (growRow 770 s2Step40HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step40HeadFvAfter [] []=some (s2Step40HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step40HeadFvBefore s2Step40HeadFvAfter s2Step40HeadFvAfter
    s2Step40HeadFvRow s2Step40HeadFvOut 34 s2Step40HeadFvFresh [] [] []
    (growRow 770 s2Step40HeadFvFresh) ([]) s2Step40HeadFv_Incoming s2Step40HeadFv_checked h4 s2Step40HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step40HeadGvBefore s2Step40HeadGvAfter s2Step40HeadFvAfter
    s2Step40HeadGvRow s2Step40HeadGvOut 34 s2Step40HeadGvFresh [(s2Step40HeadFvRow,34)] [s2Step40HeadFvFresh] [s2Step40HeadFvOut]
    (growRow 771 s2Step40HeadGvFresh) ((growRow 770 s2Step40HeadFvFresh ++ [])) s2Step40HeadGv_Incoming s2Step40HeadGv_checked h3 s2Step40HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step40HeadFBefore s2Step40HeadFAfter s2Step40HeadFvAfter
    s2Step40HeadFRow s2Step40HeadFOut 250 s2Step40HeadFFresh [(s2Step40HeadGvRow,34),(s2Step40HeadFvRow,34)] [s2Step40HeadGvFresh,s2Step40HeadFvFresh] [s2Step40HeadGvOut,s2Step40HeadFvOut]
    (growRow 768 s2Step40HeadFFresh) ((growRow 771 s2Step40HeadGvFresh ++ (growRow 770 s2Step40HeadFvFresh ++ []))) s2Step40HeadF_Incoming s2Step40HeadF_checked h2 s2Step40HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step40HeadGBefore s2Step40HeadGAfter s2Step40HeadFvAfter
    s2Step40HeadGRow s2Step40HeadGOut 250 s2Step40HeadGFresh [(s2Step40HeadFRow,250),(s2Step40HeadGvRow,34),(s2Step40HeadFvRow,34)] [s2Step40HeadFFresh,s2Step40HeadGvFresh,s2Step40HeadFvFresh] [s2Step40HeadFOut,s2Step40HeadGvOut,s2Step40HeadFvOut]
    (growRow 769 s2Step40HeadGFresh) ((growRow 768 s2Step40HeadFFresh ++ (growRow 771 s2Step40HeadGvFresh ++ (growRow 770 s2Step40HeadFvFresh ++ [])))) s2Step40HeadG_Incoming s2Step40HeadG_checked h1 s2Step40HeadG_Outgoing
  exact h0
theorem s2Step40HeadBank_checked : compileHmrBankResizeLog .headroom s2Step40HeadGBefore ⟨s2Step40HeadFRow,s2Step40HeadGRow,s2Step40HeadFvRow,s2Step40HeadGvRow⟩ ⟨250,250,34,34⟩ [s2Step40HeadGFresh,s2Step40HeadFFresh,s2Step40HeadGvFresh,s2Step40HeadFvFresh]=
    some (s2Step40HeadFvAfter,⟨s2Step40HeadFOut,s2Step40HeadGOut,s2Step40HeadFvOut,s2Step40HeadGvOut⟩,(growRow 769 s2Step40HeadGFresh ++ (growRow 768 s2Step40HeadFFresh ++ (growRow 771 s2Step40HeadGvFresh ++ (growRow 770 s2Step40HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step40HeadBank_rows]
  rfl
def s2Step41HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 792],769⟩
def s2Step41HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 794],768⟩
def s2Step41HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791, 787],771⟩
def s2Step41HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 790],770⟩
theorem s2Step41HeadBank_incomingDistinct : ([s2Step41HeadGRow,s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41HeadBank_outgoingOwned : rowsOwned s2Step41HeadFvAfter [s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step41HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41HeadG_Incoming : rowsOwned s2Step41HeadGBefore [s2Step41HeadGRow,s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41HeadGRow,s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow] 0 s2Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41HeadG_Outgoing : rowsOwned s2Step41HeadFvAfter [s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] :=
  hmrRows_owned_drop s2Step41HeadFvAfter [s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] 0 s2Step41HeadBank_outgoingOwned
theorem s2Step41HeadF_Incoming : rowsOwned s2Step41HeadFBefore [s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41HeadGRow,s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow] 1 s2Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41HeadF_Outgoing : rowsOwned s2Step41HeadFvAfter [s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] :=
  hmrRows_owned_drop s2Step41HeadFvAfter [s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] 1 s2Step41HeadBank_outgoingOwned
theorem s2Step41HeadGv_Incoming : rowsOwned s2Step41HeadGvBefore [s2Step41HeadGvRow,s2Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41HeadGRow,s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow] 2 s2Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41HeadGv_Outgoing : rowsOwned s2Step41HeadFvAfter [s2Step41HeadGvOut,s2Step41HeadFvOut] :=
  hmrRows_owned_drop s2Step41HeadFvAfter [s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] 2 s2Step41HeadBank_outgoingOwned
theorem s2Step41HeadFv_Incoming : rowsOwned s2Step41HeadFvBefore [s2Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41HeadGRow,s2Step41HeadFRow,s2Step41HeadGvRow,s2Step41HeadFvRow] 3 s2Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41HeadFv_Outgoing : rowsOwned s2Step41HeadFvAfter [s2Step41HeadFvOut] :=
  hmrRows_owned_drop s2Step41HeadFvAfter [s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut] 3 s2Step41HeadBank_outgoingOwned
theorem s2Step41HeadBank_rows : planWindowRowsLog s2Step41HeadGBefore [(s2Step41HeadGRow,249),(s2Step41HeadFRow,249),(s2Step41HeadGvRow,35),(s2Step41HeadFvRow,35)] [s2Step41HeadGFresh,s2Step41HeadFFresh,s2Step41HeadGvFresh,s2Step41HeadFvFresh]=
    some (s2Step41HeadFvAfter,[s2Step41HeadGOut,s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut],(growRow 769 s2Step41HeadGFresh ++ (growRow 768 s2Step41HeadFFresh ++ (growRow 771 s2Step41HeadGvFresh ++ (growRow 770 s2Step41HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step41HeadFvAfter [] []=some (s2Step41HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step41HeadFvBefore s2Step41HeadFvAfter s2Step41HeadFvAfter
    s2Step41HeadFvRow s2Step41HeadFvOut 35 s2Step41HeadFvFresh [] [] []
    (growRow 770 s2Step41HeadFvFresh) ([]) s2Step41HeadFv_Incoming s2Step41HeadFv_checked h4 s2Step41HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step41HeadGvBefore s2Step41HeadGvAfter s2Step41HeadFvAfter
    s2Step41HeadGvRow s2Step41HeadGvOut 35 s2Step41HeadGvFresh [(s2Step41HeadFvRow,35)] [s2Step41HeadFvFresh] [s2Step41HeadFvOut]
    (growRow 771 s2Step41HeadGvFresh) ((growRow 770 s2Step41HeadFvFresh ++ [])) s2Step41HeadGv_Incoming s2Step41HeadGv_checked h3 s2Step41HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step41HeadFBefore s2Step41HeadFAfter s2Step41HeadFvAfter
    s2Step41HeadFRow s2Step41HeadFOut 249 s2Step41HeadFFresh [(s2Step41HeadGvRow,35),(s2Step41HeadFvRow,35)] [s2Step41HeadGvFresh,s2Step41HeadFvFresh] [s2Step41HeadGvOut,s2Step41HeadFvOut]
    (growRow 768 s2Step41HeadFFresh) ((growRow 771 s2Step41HeadGvFresh ++ (growRow 770 s2Step41HeadFvFresh ++ []))) s2Step41HeadF_Incoming s2Step41HeadF_checked h2 s2Step41HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step41HeadGBefore s2Step41HeadGAfter s2Step41HeadFvAfter
    s2Step41HeadGRow s2Step41HeadGOut 249 s2Step41HeadGFresh [(s2Step41HeadFRow,249),(s2Step41HeadGvRow,35),(s2Step41HeadFvRow,35)] [s2Step41HeadFFresh,s2Step41HeadGvFresh,s2Step41HeadFvFresh] [s2Step41HeadFOut,s2Step41HeadGvOut,s2Step41HeadFvOut]
    (growRow 769 s2Step41HeadGFresh) ((growRow 768 s2Step41HeadFFresh ++ (growRow 771 s2Step41HeadGvFresh ++ (growRow 770 s2Step41HeadFvFresh ++ [])))) s2Step41HeadG_Incoming s2Step41HeadG_checked h1 s2Step41HeadG_Outgoing
  exact h0
theorem s2Step41HeadBank_checked : compileHmrBankResizeLog .headroom s2Step41HeadGBefore ⟨s2Step41HeadFRow,s2Step41HeadGRow,s2Step41HeadFvRow,s2Step41HeadGvRow⟩ ⟨249,249,35,35⟩ [s2Step41HeadGFresh,s2Step41HeadFFresh,s2Step41HeadGvFresh,s2Step41HeadFvFresh]=
    some (s2Step41HeadFvAfter,⟨s2Step41HeadFOut,s2Step41HeadGOut,s2Step41HeadFvOut,s2Step41HeadGvOut⟩,(growRow 769 s2Step41HeadGFresh ++ (growRow 768 s2Step41HeadFFresh ++ (growRow 771 s2Step41HeadGvFresh ++ (growRow 770 s2Step41HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step41HeadBank_rows]
  rfl
def s2Step42HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩
def s2Step42HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 790],768⟩
def s2Step42HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step42HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 792],770⟩
theorem s2Step42HeadBank_incomingDistinct : ([s2Step42HeadGRow,s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42HeadBank_outgoingOwned : rowsOwned s2Step42HeadFvAfter [s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step42HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42HeadG_Incoming : rowsOwned s2Step42HeadGBefore [s2Step42HeadGRow,s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42HeadGRow,s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow] 0 s2Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42HeadG_Outgoing : rowsOwned s2Step42HeadFvAfter [s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] :=
  hmrRows_owned_drop s2Step42HeadFvAfter [s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] 0 s2Step42HeadBank_outgoingOwned
theorem s2Step42HeadF_Incoming : rowsOwned s2Step42HeadFBefore [s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42HeadGRow,s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow] 1 s2Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42HeadF_Outgoing : rowsOwned s2Step42HeadFvAfter [s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] :=
  hmrRows_owned_drop s2Step42HeadFvAfter [s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] 1 s2Step42HeadBank_outgoingOwned
theorem s2Step42HeadGv_Incoming : rowsOwned s2Step42HeadGvBefore [s2Step42HeadGvRow,s2Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42HeadGRow,s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow] 2 s2Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42HeadGv_Outgoing : rowsOwned s2Step42HeadFvAfter [s2Step42HeadGvOut,s2Step42HeadFvOut] :=
  hmrRows_owned_drop s2Step42HeadFvAfter [s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] 2 s2Step42HeadBank_outgoingOwned
theorem s2Step42HeadFv_Incoming : rowsOwned s2Step42HeadFvBefore [s2Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42HeadGRow,s2Step42HeadFRow,s2Step42HeadGvRow,s2Step42HeadFvRow] 3 s2Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42HeadFv_Outgoing : rowsOwned s2Step42HeadFvAfter [s2Step42HeadFvOut] :=
  hmrRows_owned_drop s2Step42HeadFvAfter [s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut] 3 s2Step42HeadBank_outgoingOwned
theorem s2Step42HeadBank_rows : planWindowRowsLog s2Step42HeadGBefore [(s2Step42HeadGRow,249),(s2Step42HeadFRow,249),(s2Step42HeadGvRow,35),(s2Step42HeadFvRow,35)] [s2Step42HeadGFresh,s2Step42HeadFFresh,s2Step42HeadGvFresh,s2Step42HeadFvFresh]=
    some (s2Step42HeadFvAfter,[s2Step42HeadGOut,s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut],(growRow 769 s2Step42HeadGFresh ++ (growRow 768 s2Step42HeadFFresh ++ (growRow 771 s2Step42HeadGvFresh ++ (growRow 770 s2Step42HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step42HeadFvAfter [] []=some (s2Step42HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step42HeadFvBefore s2Step42HeadFvAfter s2Step42HeadFvAfter
    s2Step42HeadFvRow s2Step42HeadFvOut 35 s2Step42HeadFvFresh [] [] []
    (growRow 770 s2Step42HeadFvFresh) ([]) s2Step42HeadFv_Incoming s2Step42HeadFv_checked h4 s2Step42HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step42HeadGvBefore s2Step42HeadGvAfter s2Step42HeadFvAfter
    s2Step42HeadGvRow s2Step42HeadGvOut 35 s2Step42HeadGvFresh [(s2Step42HeadFvRow,35)] [s2Step42HeadFvFresh] [s2Step42HeadFvOut]
    (growRow 771 s2Step42HeadGvFresh) ((growRow 770 s2Step42HeadFvFresh ++ [])) s2Step42HeadGv_Incoming s2Step42HeadGv_checked h3 s2Step42HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step42HeadFBefore s2Step42HeadFAfter s2Step42HeadFvAfter
    s2Step42HeadFRow s2Step42HeadFOut 249 s2Step42HeadFFresh [(s2Step42HeadGvRow,35),(s2Step42HeadFvRow,35)] [s2Step42HeadGvFresh,s2Step42HeadFvFresh] [s2Step42HeadGvOut,s2Step42HeadFvOut]
    (growRow 768 s2Step42HeadFFresh) ((growRow 771 s2Step42HeadGvFresh ++ (growRow 770 s2Step42HeadFvFresh ++ []))) s2Step42HeadF_Incoming s2Step42HeadF_checked h2 s2Step42HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step42HeadGBefore s2Step42HeadGAfter s2Step42HeadFvAfter
    s2Step42HeadGRow s2Step42HeadGOut 249 s2Step42HeadGFresh [(s2Step42HeadFRow,249),(s2Step42HeadGvRow,35),(s2Step42HeadFvRow,35)] [s2Step42HeadFFresh,s2Step42HeadGvFresh,s2Step42HeadFvFresh] [s2Step42HeadFOut,s2Step42HeadGvOut,s2Step42HeadFvOut]
    (growRow 769 s2Step42HeadGFresh) ((growRow 768 s2Step42HeadFFresh ++ (growRow 771 s2Step42HeadGvFresh ++ (growRow 770 s2Step42HeadFvFresh ++ [])))) s2Step42HeadG_Incoming s2Step42HeadG_checked h1 s2Step42HeadG_Outgoing
  exact h0
theorem s2Step42HeadBank_checked : compileHmrBankResizeLog .headroom s2Step42HeadGBefore ⟨s2Step42HeadFRow,s2Step42HeadGRow,s2Step42HeadFvRow,s2Step42HeadGvRow⟩ ⟨249,249,35,35⟩ [s2Step42HeadGFresh,s2Step42HeadFFresh,s2Step42HeadGvFresh,s2Step42HeadFvFresh]=
    some (s2Step42HeadFvAfter,⟨s2Step42HeadFOut,s2Step42HeadGOut,s2Step42HeadFvOut,s2Step42HeadGvOut⟩,(growRow 769 s2Step42HeadGFresh ++ (growRow 768 s2Step42HeadFFresh ++ (growRow 771 s2Step42HeadGvFresh ++ (growRow 770 s2Step42HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step42HeadBank_rows]
  rfl
def s2Step43HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 800],769⟩
def s2Step43HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 792],768⟩
def s2Step43HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩
def s2Step43HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791, 787],770⟩
theorem s2Step43HeadBank_incomingDistinct : ([s2Step43HeadGRow,s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43HeadBank_outgoingOwned : rowsOwned s2Step43HeadFvAfter [s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step43HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43HeadG_Incoming : rowsOwned s2Step43HeadGBefore [s2Step43HeadGRow,s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43HeadGRow,s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow] 0 s2Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43HeadG_Outgoing : rowsOwned s2Step43HeadFvAfter [s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] :=
  hmrRows_owned_drop s2Step43HeadFvAfter [s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] 0 s2Step43HeadBank_outgoingOwned
theorem s2Step43HeadF_Incoming : rowsOwned s2Step43HeadFBefore [s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43HeadGRow,s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow] 1 s2Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43HeadF_Outgoing : rowsOwned s2Step43HeadFvAfter [s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] :=
  hmrRows_owned_drop s2Step43HeadFvAfter [s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] 1 s2Step43HeadBank_outgoingOwned
theorem s2Step43HeadGv_Incoming : rowsOwned s2Step43HeadGvBefore [s2Step43HeadGvRow,s2Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43HeadGRow,s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow] 2 s2Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43HeadGv_Outgoing : rowsOwned s2Step43HeadFvAfter [s2Step43HeadGvOut,s2Step43HeadFvOut] :=
  hmrRows_owned_drop s2Step43HeadFvAfter [s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] 2 s2Step43HeadBank_outgoingOwned
theorem s2Step43HeadFv_Incoming : rowsOwned s2Step43HeadFvBefore [s2Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43HeadGRow,s2Step43HeadFRow,s2Step43HeadGvRow,s2Step43HeadFvRow] 3 s2Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43HeadFv_Outgoing : rowsOwned s2Step43HeadFvAfter [s2Step43HeadFvOut] :=
  hmrRows_owned_drop s2Step43HeadFvAfter [s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut] 3 s2Step43HeadBank_outgoingOwned
theorem s2Step43HeadBank_rows : planWindowRowsLog s2Step43HeadGBefore [(s2Step43HeadGRow,248),(s2Step43HeadFRow,248),(s2Step43HeadGvRow,36),(s2Step43HeadFvRow,36)] [s2Step43HeadGFresh,s2Step43HeadFFresh,s2Step43HeadGvFresh,s2Step43HeadFvFresh]=
    some (s2Step43HeadFvAfter,[s2Step43HeadGOut,s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut],(growRow 769 s2Step43HeadGFresh ++ (growRow 768 s2Step43HeadFFresh ++ (growRow 771 s2Step43HeadGvFresh ++ (growRow 770 s2Step43HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step43HeadFvAfter [] []=some (s2Step43HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step43HeadFvBefore s2Step43HeadFvAfter s2Step43HeadFvAfter
    s2Step43HeadFvRow s2Step43HeadFvOut 36 s2Step43HeadFvFresh [] [] []
    (growRow 770 s2Step43HeadFvFresh) ([]) s2Step43HeadFv_Incoming s2Step43HeadFv_checked h4 s2Step43HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step43HeadGvBefore s2Step43HeadGvAfter s2Step43HeadFvAfter
    s2Step43HeadGvRow s2Step43HeadGvOut 36 s2Step43HeadGvFresh [(s2Step43HeadFvRow,36)] [s2Step43HeadFvFresh] [s2Step43HeadFvOut]
    (growRow 771 s2Step43HeadGvFresh) ((growRow 770 s2Step43HeadFvFresh ++ [])) s2Step43HeadGv_Incoming s2Step43HeadGv_checked h3 s2Step43HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step43HeadFBefore s2Step43HeadFAfter s2Step43HeadFvAfter
    s2Step43HeadFRow s2Step43HeadFOut 248 s2Step43HeadFFresh [(s2Step43HeadGvRow,36),(s2Step43HeadFvRow,36)] [s2Step43HeadGvFresh,s2Step43HeadFvFresh] [s2Step43HeadGvOut,s2Step43HeadFvOut]
    (growRow 768 s2Step43HeadFFresh) ((growRow 771 s2Step43HeadGvFresh ++ (growRow 770 s2Step43HeadFvFresh ++ []))) s2Step43HeadF_Incoming s2Step43HeadF_checked h2 s2Step43HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step43HeadGBefore s2Step43HeadGAfter s2Step43HeadFvAfter
    s2Step43HeadGRow s2Step43HeadGOut 248 s2Step43HeadGFresh [(s2Step43HeadFRow,248),(s2Step43HeadGvRow,36),(s2Step43HeadFvRow,36)] [s2Step43HeadFFresh,s2Step43HeadGvFresh,s2Step43HeadFvFresh] [s2Step43HeadFOut,s2Step43HeadGvOut,s2Step43HeadFvOut]
    (growRow 769 s2Step43HeadGFresh) ((growRow 768 s2Step43HeadFFresh ++ (growRow 771 s2Step43HeadGvFresh ++ (growRow 770 s2Step43HeadFvFresh ++ [])))) s2Step43HeadG_Incoming s2Step43HeadG_checked h1 s2Step43HeadG_Outgoing
  exact h0
theorem s2Step43HeadBank_checked : compileHmrBankResizeLog .headroom s2Step43HeadGBefore ⟨s2Step43HeadFRow,s2Step43HeadGRow,s2Step43HeadFvRow,s2Step43HeadGvRow⟩ ⟨248,248,36,36⟩ [s2Step43HeadGFresh,s2Step43HeadFFresh,s2Step43HeadGvFresh,s2Step43HeadFvFresh]=
    some (s2Step43HeadFvAfter,⟨s2Step43HeadFOut,s2Step43HeadGOut,s2Step43HeadFvOut,s2Step43HeadGvOut⟩,(growRow 769 s2Step43HeadGFresh ++ (growRow 768 s2Step43HeadFFresh ++ (growRow 771 s2Step43HeadGvFresh ++ (growRow 770 s2Step43HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step43HeadBank_rows]
  rfl
def s2Step44HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 802],769⟩
def s2Step44HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 790],768⟩
def s2Step44HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 791],771⟩
def s2Step44HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 787],770⟩
theorem s2Step44HeadBank_incomingDistinct : ([s2Step44HeadGRow,s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44HeadBank_outgoingOwned : rowsOwned s2Step44HeadFvAfter [s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step44HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44HeadG_Incoming : rowsOwned s2Step44HeadGBefore [s2Step44HeadGRow,s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44HeadGRow,s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow] 0 s2Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44HeadG_Outgoing : rowsOwned s2Step44HeadFvAfter [s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] :=
  hmrRows_owned_drop s2Step44HeadFvAfter [s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] 0 s2Step44HeadBank_outgoingOwned
theorem s2Step44HeadF_Incoming : rowsOwned s2Step44HeadFBefore [s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44HeadGRow,s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow] 1 s2Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44HeadF_Outgoing : rowsOwned s2Step44HeadFvAfter [s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] :=
  hmrRows_owned_drop s2Step44HeadFvAfter [s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] 1 s2Step44HeadBank_outgoingOwned
theorem s2Step44HeadGv_Incoming : rowsOwned s2Step44HeadGvBefore [s2Step44HeadGvRow,s2Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44HeadGRow,s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow] 2 s2Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44HeadGv_Outgoing : rowsOwned s2Step44HeadFvAfter [s2Step44HeadGvOut,s2Step44HeadFvOut] :=
  hmrRows_owned_drop s2Step44HeadFvAfter [s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] 2 s2Step44HeadBank_outgoingOwned
theorem s2Step44HeadFv_Incoming : rowsOwned s2Step44HeadFvBefore [s2Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44HeadGRow,s2Step44HeadFRow,s2Step44HeadGvRow,s2Step44HeadFvRow] 3 s2Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44HeadFv_Outgoing : rowsOwned s2Step44HeadFvAfter [s2Step44HeadFvOut] :=
  hmrRows_owned_drop s2Step44HeadFvAfter [s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut] 3 s2Step44HeadBank_outgoingOwned
theorem s2Step44HeadBank_rows : planWindowRowsLog s2Step44HeadGBefore [(s2Step44HeadGRow,247),(s2Step44HeadFRow,247),(s2Step44HeadGvRow,36),(s2Step44HeadFvRow,36)] [s2Step44HeadGFresh,s2Step44HeadFFresh,s2Step44HeadGvFresh,s2Step44HeadFvFresh]=
    some (s2Step44HeadFvAfter,[s2Step44HeadGOut,s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut],(growRow 769 s2Step44HeadGFresh ++ (growRow 768 s2Step44HeadFFresh ++ (growRow 771 s2Step44HeadGvFresh ++ (growRow 770 s2Step44HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step44HeadFvAfter [] []=some (s2Step44HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step44HeadFvBefore s2Step44HeadFvAfter s2Step44HeadFvAfter
    s2Step44HeadFvRow s2Step44HeadFvOut 36 s2Step44HeadFvFresh [] [] []
    (growRow 770 s2Step44HeadFvFresh) ([]) s2Step44HeadFv_Incoming s2Step44HeadFv_checked h4 s2Step44HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step44HeadGvBefore s2Step44HeadGvAfter s2Step44HeadFvAfter
    s2Step44HeadGvRow s2Step44HeadGvOut 36 s2Step44HeadGvFresh [(s2Step44HeadFvRow,36)] [s2Step44HeadFvFresh] [s2Step44HeadFvOut]
    (growRow 771 s2Step44HeadGvFresh) ((growRow 770 s2Step44HeadFvFresh ++ [])) s2Step44HeadGv_Incoming s2Step44HeadGv_checked h3 s2Step44HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step44HeadFBefore s2Step44HeadFAfter s2Step44HeadFvAfter
    s2Step44HeadFRow s2Step44HeadFOut 247 s2Step44HeadFFresh [(s2Step44HeadGvRow,36),(s2Step44HeadFvRow,36)] [s2Step44HeadGvFresh,s2Step44HeadFvFresh] [s2Step44HeadGvOut,s2Step44HeadFvOut]
    (growRow 768 s2Step44HeadFFresh) ((growRow 771 s2Step44HeadGvFresh ++ (growRow 770 s2Step44HeadFvFresh ++ []))) s2Step44HeadF_Incoming s2Step44HeadF_checked h2 s2Step44HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step44HeadGBefore s2Step44HeadGAfter s2Step44HeadFvAfter
    s2Step44HeadGRow s2Step44HeadGOut 247 s2Step44HeadGFresh [(s2Step44HeadFRow,247),(s2Step44HeadGvRow,36),(s2Step44HeadFvRow,36)] [s2Step44HeadFFresh,s2Step44HeadGvFresh,s2Step44HeadFvFresh] [s2Step44HeadFOut,s2Step44HeadGvOut,s2Step44HeadFvOut]
    (growRow 769 s2Step44HeadGFresh) ((growRow 768 s2Step44HeadFFresh ++ (growRow 771 s2Step44HeadGvFresh ++ (growRow 770 s2Step44HeadFvFresh ++ [])))) s2Step44HeadG_Incoming s2Step44HeadG_checked h1 s2Step44HeadG_Outgoing
  exact h0
theorem s2Step44HeadBank_checked : compileHmrBankResizeLog .headroom s2Step44HeadGBefore ⟨s2Step44HeadFRow,s2Step44HeadGRow,s2Step44HeadFvRow,s2Step44HeadGvRow⟩ ⟨247,247,36,36⟩ [s2Step44HeadGFresh,s2Step44HeadFFresh,s2Step44HeadGvFresh,s2Step44HeadFvFresh]=
    some (s2Step44HeadFvAfter,⟨s2Step44HeadFOut,s2Step44HeadGOut,s2Step44HeadFvOut,s2Step44HeadGvOut⟩,(growRow 769 s2Step44HeadGFresh ++ (growRow 768 s2Step44HeadFFresh ++ (growRow 771 s2Step44HeadGvFresh ++ (growRow 770 s2Step44HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step44HeadBank_rows]
  rfl
def s2Step45HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801, 791],769⟩
def s2Step45HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 787],768⟩
def s2Step45HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩
def s2Step45HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
theorem s2Step45HeadBank_incomingDistinct : ([s2Step45HeadGRow,s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45HeadBank_outgoingOwned : rowsOwned s2Step45HeadFvAfter [s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step45HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45HeadG_Incoming : rowsOwned s2Step45HeadGBefore [s2Step45HeadGRow,s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45HeadGRow,s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow] 0 s2Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45HeadG_Outgoing : rowsOwned s2Step45HeadFvAfter [s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] :=
  hmrRows_owned_drop s2Step45HeadFvAfter [s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] 0 s2Step45HeadBank_outgoingOwned
theorem s2Step45HeadF_Incoming : rowsOwned s2Step45HeadFBefore [s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45HeadGRow,s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow] 1 s2Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45HeadF_Outgoing : rowsOwned s2Step45HeadFvAfter [s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] :=
  hmrRows_owned_drop s2Step45HeadFvAfter [s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] 1 s2Step45HeadBank_outgoingOwned
theorem s2Step45HeadGv_Incoming : rowsOwned s2Step45HeadGvBefore [s2Step45HeadGvRow,s2Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45HeadGRow,s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow] 2 s2Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45HeadGv_Outgoing : rowsOwned s2Step45HeadFvAfter [s2Step45HeadGvOut,s2Step45HeadFvOut] :=
  hmrRows_owned_drop s2Step45HeadFvAfter [s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] 2 s2Step45HeadBank_outgoingOwned
theorem s2Step45HeadFv_Incoming : rowsOwned s2Step45HeadFvBefore [s2Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45HeadGRow,s2Step45HeadFRow,s2Step45HeadGvRow,s2Step45HeadFvRow] 3 s2Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45HeadFv_Outgoing : rowsOwned s2Step45HeadFvAfter [s2Step45HeadFvOut] :=
  hmrRows_owned_drop s2Step45HeadFvAfter [s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut] 3 s2Step45HeadBank_outgoingOwned
theorem s2Step45HeadBank_rows : planWindowRowsLog s2Step45HeadGBefore [(s2Step45HeadGRow,247),(s2Step45HeadFRow,247),(s2Step45HeadGvRow,36),(s2Step45HeadFvRow,36)] [s2Step45HeadGFresh,s2Step45HeadFFresh,s2Step45HeadGvFresh,s2Step45HeadFvFresh]=
    some (s2Step45HeadFvAfter,[s2Step45HeadGOut,s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut],(growRow 769 s2Step45HeadGFresh ++ (growRow 768 s2Step45HeadFFresh ++ (growRow 771 s2Step45HeadGvFresh ++ (growRow 770 s2Step45HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step45HeadFvAfter [] []=some (s2Step45HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step45HeadFvBefore s2Step45HeadFvAfter s2Step45HeadFvAfter
    s2Step45HeadFvRow s2Step45HeadFvOut 36 s2Step45HeadFvFresh [] [] []
    (growRow 770 s2Step45HeadFvFresh) ([]) s2Step45HeadFv_Incoming s2Step45HeadFv_checked h4 s2Step45HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step45HeadGvBefore s2Step45HeadGvAfter s2Step45HeadFvAfter
    s2Step45HeadGvRow s2Step45HeadGvOut 36 s2Step45HeadGvFresh [(s2Step45HeadFvRow,36)] [s2Step45HeadFvFresh] [s2Step45HeadFvOut]
    (growRow 771 s2Step45HeadGvFresh) ((growRow 770 s2Step45HeadFvFresh ++ [])) s2Step45HeadGv_Incoming s2Step45HeadGv_checked h3 s2Step45HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step45HeadFBefore s2Step45HeadFAfter s2Step45HeadFvAfter
    s2Step45HeadFRow s2Step45HeadFOut 247 s2Step45HeadFFresh [(s2Step45HeadGvRow,36),(s2Step45HeadFvRow,36)] [s2Step45HeadGvFresh,s2Step45HeadFvFresh] [s2Step45HeadGvOut,s2Step45HeadFvOut]
    (growRow 768 s2Step45HeadFFresh) ((growRow 771 s2Step45HeadGvFresh ++ (growRow 770 s2Step45HeadFvFresh ++ []))) s2Step45HeadF_Incoming s2Step45HeadF_checked h2 s2Step45HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step45HeadGBefore s2Step45HeadGAfter s2Step45HeadFvAfter
    s2Step45HeadGRow s2Step45HeadGOut 247 s2Step45HeadGFresh [(s2Step45HeadFRow,247),(s2Step45HeadGvRow,36),(s2Step45HeadFvRow,36)] [s2Step45HeadFFresh,s2Step45HeadGvFresh,s2Step45HeadFvFresh] [s2Step45HeadFOut,s2Step45HeadGvOut,s2Step45HeadFvOut]
    (growRow 769 s2Step45HeadGFresh) ((growRow 768 s2Step45HeadFFresh ++ (growRow 771 s2Step45HeadGvFresh ++ (growRow 770 s2Step45HeadFvFresh ++ [])))) s2Step45HeadG_Incoming s2Step45HeadG_checked h1 s2Step45HeadG_Outgoing
  exact h0
theorem s2Step45HeadBank_checked : compileHmrBankResizeLog .headroom s2Step45HeadGBefore ⟨s2Step45HeadFRow,s2Step45HeadGRow,s2Step45HeadFvRow,s2Step45HeadGvRow⟩ ⟨247,247,36,36⟩ [s2Step45HeadGFresh,s2Step45HeadFFresh,s2Step45HeadGvFresh,s2Step45HeadFvFresh]=
    some (s2Step45HeadFvAfter,⟨s2Step45HeadFOut,s2Step45HeadGOut,s2Step45HeadFvOut,s2Step45HeadGvOut⟩,(growRow 769 s2Step45HeadGFresh ++ (growRow 768 s2Step45HeadFFresh ++ (growRow 771 s2Step45HeadGvFresh ++ (growRow 770 s2Step45HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step45HeadBank_rows]
  rfl
def s2Step46HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 790],769⟩
def s2Step46HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 787],768⟩
def s2Step46HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step46HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
theorem s2Step46HeadBank_incomingDistinct : ([s2Step46HeadGRow,s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46HeadBank_outgoingOwned : rowsOwned s2Step46HeadFvAfter [s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step46HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46HeadG_Incoming : rowsOwned s2Step46HeadGBefore [s2Step46HeadGRow,s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46HeadGRow,s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow] 0 s2Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46HeadG_Outgoing : rowsOwned s2Step46HeadFvAfter [s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] :=
  hmrRows_owned_drop s2Step46HeadFvAfter [s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] 0 s2Step46HeadBank_outgoingOwned
theorem s2Step46HeadF_Incoming : rowsOwned s2Step46HeadFBefore [s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46HeadGRow,s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow] 1 s2Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46HeadF_Outgoing : rowsOwned s2Step46HeadFvAfter [s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] :=
  hmrRows_owned_drop s2Step46HeadFvAfter [s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] 1 s2Step46HeadBank_outgoingOwned
theorem s2Step46HeadGv_Incoming : rowsOwned s2Step46HeadGvBefore [s2Step46HeadGvRow,s2Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46HeadGRow,s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow] 2 s2Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46HeadGvBefore (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46HeadGv_Outgoing : rowsOwned s2Step46HeadFvAfter [s2Step46HeadGvOut,s2Step46HeadFvOut] :=
  hmrRows_owned_drop s2Step46HeadFvAfter [s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] 2 s2Step46HeadBank_outgoingOwned
theorem s2Step46HeadFv_Incoming : rowsOwned s2Step46HeadFvBefore [s2Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46HeadGRow,s2Step46HeadFRow,s2Step46HeadGvRow,s2Step46HeadFvRow] 3 s2Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46HeadFv_Outgoing : rowsOwned s2Step46HeadFvAfter [s2Step46HeadFvOut] :=
  hmrRows_owned_drop s2Step46HeadFvAfter [s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut] 3 s2Step46HeadBank_outgoingOwned
theorem s2Step46HeadBank_rows : planWindowRowsLog s2Step46HeadGBefore [(s2Step46HeadGRow,246),(s2Step46HeadFRow,246),(s2Step46HeadGvRow,37),(s2Step46HeadFvRow,37)] [s2Step46HeadGFresh,s2Step46HeadFFresh,s2Step46HeadGvFresh,s2Step46HeadFvFresh]=
    some (s2Step46HeadFvAfter,[s2Step46HeadGOut,s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut],(growRow 769 s2Step46HeadGFresh ++ (growRow 768 s2Step46HeadFFresh ++ (growRow 771 s2Step46HeadGvFresh ++ (growRow 770 s2Step46HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step46HeadFvAfter [] []=some (s2Step46HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step46HeadFvBefore s2Step46HeadFvAfter s2Step46HeadFvAfter
    s2Step46HeadFvRow s2Step46HeadFvOut 37 s2Step46HeadFvFresh [] [] []
    (growRow 770 s2Step46HeadFvFresh) ([]) s2Step46HeadFv_Incoming s2Step46HeadFv_checked h4 s2Step46HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step46HeadGvBefore s2Step46HeadGvAfter s2Step46HeadFvAfter
    s2Step46HeadGvRow s2Step46HeadGvOut 37 s2Step46HeadGvFresh [(s2Step46HeadFvRow,37)] [s2Step46HeadFvFresh] [s2Step46HeadFvOut]
    (growRow 771 s2Step46HeadGvFresh) ((growRow 770 s2Step46HeadFvFresh ++ [])) s2Step46HeadGv_Incoming s2Step46HeadGv_checked h3 s2Step46HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step46HeadFBefore s2Step46HeadFAfter s2Step46HeadFvAfter
    s2Step46HeadFRow s2Step46HeadFOut 246 s2Step46HeadFFresh [(s2Step46HeadGvRow,37),(s2Step46HeadFvRow,37)] [s2Step46HeadGvFresh,s2Step46HeadFvFresh] [s2Step46HeadGvOut,s2Step46HeadFvOut]
    (growRow 768 s2Step46HeadFFresh) ((growRow 771 s2Step46HeadGvFresh ++ (growRow 770 s2Step46HeadFvFresh ++ []))) s2Step46HeadF_Incoming s2Step46HeadF_checked h2 s2Step46HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step46HeadGBefore s2Step46HeadGAfter s2Step46HeadFvAfter
    s2Step46HeadGRow s2Step46HeadGOut 246 s2Step46HeadGFresh [(s2Step46HeadFRow,246),(s2Step46HeadGvRow,37),(s2Step46HeadFvRow,37)] [s2Step46HeadFFresh,s2Step46HeadGvFresh,s2Step46HeadFvFresh] [s2Step46HeadFOut,s2Step46HeadGvOut,s2Step46HeadFvOut]
    (growRow 769 s2Step46HeadGFresh) ((growRow 768 s2Step46HeadFFresh ++ (growRow 771 s2Step46HeadGvFresh ++ (growRow 770 s2Step46HeadFvFresh ++ [])))) s2Step46HeadG_Incoming s2Step46HeadG_checked h1 s2Step46HeadG_Outgoing
  exact h0
theorem s2Step46HeadBank_checked : compileHmrBankResizeLog .headroom s2Step46HeadGBefore ⟨s2Step46HeadFRow,s2Step46HeadGRow,s2Step46HeadFvRow,s2Step46HeadGvRow⟩ ⟨246,246,37,37⟩ [s2Step46HeadGFresh,s2Step46HeadFFresh,s2Step46HeadGvFresh,s2Step46HeadFvFresh]=
    some (s2Step46HeadFvAfter,⟨s2Step46HeadFOut,s2Step46HeadGOut,s2Step46HeadFvOut,s2Step46HeadGvOut⟩,(growRow 769 s2Step46HeadGFresh ++ (growRow 768 s2Step46HeadFFresh ++ (growRow 771 s2Step46HeadGvFresh ++ (growRow 770 s2Step46HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step46HeadBank_rows]
  rfl
def s2Step47HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 805],769⟩
def s2Step47HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 806],768⟩
def s2Step47HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step47HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
theorem s2Step47HeadBank_incomingDistinct : ([s2Step47HeadGRow,s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47HeadBank_outgoingOwned : rowsOwned s2Step47HeadFvAfter [s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step47HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47HeadG_Incoming : rowsOwned s2Step47HeadGBefore [s2Step47HeadGRow,s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47HeadGRow,s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow] 0 s2Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47HeadG_Outgoing : rowsOwned s2Step47HeadFvAfter [s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] :=
  hmrRows_owned_drop s2Step47HeadFvAfter [s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] 0 s2Step47HeadBank_outgoingOwned
theorem s2Step47HeadF_Incoming : rowsOwned s2Step47HeadFBefore [s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47HeadGRow,s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow] 1 s2Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47HeadF_Outgoing : rowsOwned s2Step47HeadFvAfter [s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] :=
  hmrRows_owned_drop s2Step47HeadFvAfter [s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] 1 s2Step47HeadBank_outgoingOwned
theorem s2Step47HeadGv_Incoming : rowsOwned s2Step47HeadGvBefore [s2Step47HeadGvRow,s2Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47HeadGRow,s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow] 2 s2Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47HeadGv_Outgoing : rowsOwned s2Step47HeadFvAfter [s2Step47HeadGvOut,s2Step47HeadFvOut] :=
  hmrRows_owned_drop s2Step47HeadFvAfter [s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] 2 s2Step47HeadBank_outgoingOwned
theorem s2Step47HeadFv_Incoming : rowsOwned s2Step47HeadFvBefore [s2Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47HeadGRow,s2Step47HeadFRow,s2Step47HeadGvRow,s2Step47HeadFvRow] 3 s2Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47HeadFv_Outgoing : rowsOwned s2Step47HeadFvAfter [s2Step47HeadFvOut] :=
  hmrRows_owned_drop s2Step47HeadFvAfter [s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut] 3 s2Step47HeadBank_outgoingOwned
theorem s2Step47HeadBank_rows : planWindowRowsLog s2Step47HeadGBefore [(s2Step47HeadGRow,245),(s2Step47HeadFRow,245),(s2Step47HeadGvRow,37),(s2Step47HeadFvRow,37)] [s2Step47HeadGFresh,s2Step47HeadFFresh,s2Step47HeadGvFresh,s2Step47HeadFvFresh]=
    some (s2Step47HeadFvAfter,[s2Step47HeadGOut,s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut],(growRow 769 s2Step47HeadGFresh ++ (growRow 768 s2Step47HeadFFresh ++ (growRow 771 s2Step47HeadGvFresh ++ (growRow 770 s2Step47HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step47HeadFvAfter [] []=some (s2Step47HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step47HeadFvBefore s2Step47HeadFvAfter s2Step47HeadFvAfter
    s2Step47HeadFvRow s2Step47HeadFvOut 37 s2Step47HeadFvFresh [] [] []
    (growRow 770 s2Step47HeadFvFresh) ([]) s2Step47HeadFv_Incoming s2Step47HeadFv_checked h4 s2Step47HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step47HeadGvBefore s2Step47HeadGvAfter s2Step47HeadFvAfter
    s2Step47HeadGvRow s2Step47HeadGvOut 37 s2Step47HeadGvFresh [(s2Step47HeadFvRow,37)] [s2Step47HeadFvFresh] [s2Step47HeadFvOut]
    (growRow 771 s2Step47HeadGvFresh) ((growRow 770 s2Step47HeadFvFresh ++ [])) s2Step47HeadGv_Incoming s2Step47HeadGv_checked h3 s2Step47HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step47HeadFBefore s2Step47HeadFAfter s2Step47HeadFvAfter
    s2Step47HeadFRow s2Step47HeadFOut 245 s2Step47HeadFFresh [(s2Step47HeadGvRow,37),(s2Step47HeadFvRow,37)] [s2Step47HeadGvFresh,s2Step47HeadFvFresh] [s2Step47HeadGvOut,s2Step47HeadFvOut]
    (growRow 768 s2Step47HeadFFresh) ((growRow 771 s2Step47HeadGvFresh ++ (growRow 770 s2Step47HeadFvFresh ++ []))) s2Step47HeadF_Incoming s2Step47HeadF_checked h2 s2Step47HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step47HeadGBefore s2Step47HeadGAfter s2Step47HeadFvAfter
    s2Step47HeadGRow s2Step47HeadGOut 245 s2Step47HeadGFresh [(s2Step47HeadFRow,245),(s2Step47HeadGvRow,37),(s2Step47HeadFvRow,37)] [s2Step47HeadFFresh,s2Step47HeadGvFresh,s2Step47HeadFvFresh] [s2Step47HeadFOut,s2Step47HeadGvOut,s2Step47HeadFvOut]
    (growRow 769 s2Step47HeadGFresh) ((growRow 768 s2Step47HeadFFresh ++ (growRow 771 s2Step47HeadGvFresh ++ (growRow 770 s2Step47HeadFvFresh ++ [])))) s2Step47HeadG_Incoming s2Step47HeadG_checked h1 s2Step47HeadG_Outgoing
  exact h0
theorem s2Step47HeadBank_checked : compileHmrBankResizeLog .headroom s2Step47HeadGBefore ⟨s2Step47HeadFRow,s2Step47HeadGRow,s2Step47HeadFvRow,s2Step47HeadGvRow⟩ ⟨245,245,37,37⟩ [s2Step47HeadGFresh,s2Step47HeadFFresh,s2Step47HeadGvFresh,s2Step47HeadFvFresh]=
    some (s2Step47HeadFvAfter,⟨s2Step47HeadFOut,s2Step47HeadGOut,s2Step47HeadFvOut,s2Step47HeadGvOut⟩,(growRow 769 s2Step47HeadGFresh ++ (growRow 768 s2Step47HeadFFresh ++ (growRow 771 s2Step47HeadGvFresh ++ (growRow 770 s2Step47HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step47HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
