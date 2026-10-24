import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step32EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786],769⟩
def s2Step32EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step32EntryGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791],771⟩
theorem s2Step32EntryBank_incomingDistinct : ([s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32EntryBank_outgoingOwned : rowsOwned s2Step32EntryGvAfter [s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step32EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32EntryF_Incoming : rowsOwned s2Step32EntryFBefore [s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow] 0 s2Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32EntryF_Outgoing : rowsOwned s2Step32EntryGvAfter [s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] :=
  hmrRows_owned_drop s2Step32EntryGvAfter [s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] 0 s2Step32EntryBank_outgoingOwned
theorem s2Step32EntryG_Incoming : rowsOwned s2Step32EntryGBefore [s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow] 1 s2Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32EntryG_Outgoing : rowsOwned s2Step32EntryGvAfter [s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] :=
  hmrRows_owned_drop s2Step32EntryGvAfter [s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] 1 s2Step32EntryBank_outgoingOwned
theorem s2Step32EntryFv_Incoming : rowsOwned s2Step32EntryFvBefore [s2Step32EntryFvRow,s2Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow] 2 s2Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32EntryFv_Outgoing : rowsOwned s2Step32EntryGvAfter [s2Step32EntryFvOut,s2Step32EntryGvOut] :=
  hmrRows_owned_drop s2Step32EntryGvAfter [s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] 2 s2Step32EntryBank_outgoingOwned
theorem s2Step32EntryGv_Incoming : rowsOwned s2Step32EntryGvBefore [s2Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow] 3 s2Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32EntryGv_Outgoing : rowsOwned s2Step32EntryGvAfter [s2Step32EntryGvOut] :=
  hmrRows_owned_drop s2Step32EntryGvAfter [s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut] 3 s2Step32EntryBank_outgoingOwned
theorem s2Step32EntryBank_rows : planWindowRowsLog s2Step32EntryFBefore [(s2Step32EntryFRow,253),(s2Step32EntryGRow,253),(s2Step32EntryFvRow,29),(s2Step32EntryGvRow,29)] [s2Step32EntryFFresh,s2Step32EntryGFresh,s2Step32EntryFvFresh,s2Step32EntryGvFresh]=
    some (s2Step32EntryGvAfter,[s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut],(growRow 768 s2Step32EntryFFresh ++ (growRow 769 s2Step32EntryGFresh ++ (growRow 770 s2Step32EntryFvFresh ++ (growRow 771 s2Step32EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step32EntryGvAfter [] []=some (s2Step32EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step32EntryGvBefore s2Step32EntryGvAfter s2Step32EntryGvAfter
    s2Step32EntryGvRow s2Step32EntryGvOut 29 s2Step32EntryGvFresh [] [] []
    (growRow 771 s2Step32EntryGvFresh) ([]) s2Step32EntryGv_Incoming s2Step32EntryGv_checked h4 s2Step32EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step32EntryFvBefore s2Step32EntryFvAfter s2Step32EntryGvAfter
    s2Step32EntryFvRow s2Step32EntryFvOut 29 s2Step32EntryFvFresh [(s2Step32EntryGvRow,29)] [s2Step32EntryGvFresh] [s2Step32EntryGvOut]
    (growRow 770 s2Step32EntryFvFresh) ((growRow 771 s2Step32EntryGvFresh ++ [])) s2Step32EntryFv_Incoming s2Step32EntryFv_checked h3 s2Step32EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step32EntryGBefore s2Step32EntryGAfter s2Step32EntryGvAfter
    s2Step32EntryGRow s2Step32EntryGOut 253 s2Step32EntryGFresh [(s2Step32EntryFvRow,29),(s2Step32EntryGvRow,29)] [s2Step32EntryFvFresh,s2Step32EntryGvFresh] [s2Step32EntryFvOut,s2Step32EntryGvOut]
    (growRow 769 s2Step32EntryGFresh) ((growRow 770 s2Step32EntryFvFresh ++ (growRow 771 s2Step32EntryGvFresh ++ []))) s2Step32EntryG_Incoming s2Step32EntryG_checked h2 s2Step32EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step32EntryFBefore s2Step32EntryFAfter s2Step32EntryGvAfter
    s2Step32EntryFRow s2Step32EntryFOut 253 s2Step32EntryFFresh [(s2Step32EntryGRow,253),(s2Step32EntryFvRow,29),(s2Step32EntryGvRow,29)] [s2Step32EntryGFresh,s2Step32EntryFvFresh,s2Step32EntryGvFresh] [s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut]
    (growRow 768 s2Step32EntryFFresh) ((growRow 769 s2Step32EntryGFresh ++ (growRow 770 s2Step32EntryFvFresh ++ (growRow 771 s2Step32EntryGvFresh ++ [])))) s2Step32EntryF_Incoming s2Step32EntryF_checked h1 s2Step32EntryF_Outgoing
  exact h0
theorem s2Step32EntryBank_checked : compileHmrBankResizeLog .entry s2Step32EntryFBefore ⟨s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow⟩ ⟨253,253,29,29⟩ [s2Step32EntryFFresh,s2Step32EntryGFresh,s2Step32EntryFvFresh,s2Step32EntryGvFresh]=
    some (s2Step32EntryGvAfter,⟨s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut⟩,(growRow 768 s2Step32EntryFFresh ++ (growRow 769 s2Step32EntryGFresh ++ (growRow 770 s2Step32EntryFvFresh ++ (growRow 771 s2Step32EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step32EntryBank_rows]
  rfl
def s2Step33EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763],768⟩
def s2Step33EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779],769⟩
def s2Step33EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step33EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩
theorem s2Step33EntryBank_incomingDistinct : ([s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33EntryBank_outgoingOwned : rowsOwned s2Step33EntryGvAfter [s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step33EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33EntryF_Incoming : rowsOwned s2Step33EntryFBefore [s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow] 0 s2Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33EntryF_Outgoing : rowsOwned s2Step33EntryGvAfter [s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] :=
  hmrRows_owned_drop s2Step33EntryGvAfter [s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] 0 s2Step33EntryBank_outgoingOwned
theorem s2Step33EntryG_Incoming : rowsOwned s2Step33EntryGBefore [s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow] 1 s2Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33EntryG_Outgoing : rowsOwned s2Step33EntryGvAfter [s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] :=
  hmrRows_owned_drop s2Step33EntryGvAfter [s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] 1 s2Step33EntryBank_outgoingOwned
theorem s2Step33EntryFv_Incoming : rowsOwned s2Step33EntryFvBefore [s2Step33EntryFvRow,s2Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow] 2 s2Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33EntryFv_Outgoing : rowsOwned s2Step33EntryGvAfter [s2Step33EntryFvOut,s2Step33EntryGvOut] :=
  hmrRows_owned_drop s2Step33EntryGvAfter [s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] 2 s2Step33EntryBank_outgoingOwned
theorem s2Step33EntryGv_Incoming : rowsOwned s2Step33EntryGvBefore [s2Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow] 3 s2Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33EntryGv_Outgoing : rowsOwned s2Step33EntryGvAfter [s2Step33EntryGvOut] :=
  hmrRows_owned_drop s2Step33EntryGvAfter [s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut] 3 s2Step33EntryBank_outgoingOwned
theorem s2Step33EntryBank_rows : planWindowRowsLog s2Step33EntryFBefore [(s2Step33EntryFRow,252),(s2Step33EntryGRow,252),(s2Step33EntryFvRow,29),(s2Step33EntryGvRow,29)] [s2Step33EntryFFresh,s2Step33EntryGFresh,s2Step33EntryFvFresh,s2Step33EntryGvFresh]=
    some (s2Step33EntryGvAfter,[s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut],(growRow 768 s2Step33EntryFFresh ++ (growRow 769 s2Step33EntryGFresh ++ (growRow 770 s2Step33EntryFvFresh ++ (growRow 771 s2Step33EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step33EntryGvAfter [] []=some (s2Step33EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step33EntryGvBefore s2Step33EntryGvAfter s2Step33EntryGvAfter
    s2Step33EntryGvRow s2Step33EntryGvOut 29 s2Step33EntryGvFresh [] [] []
    (growRow 771 s2Step33EntryGvFresh) ([]) s2Step33EntryGv_Incoming s2Step33EntryGv_checked h4 s2Step33EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step33EntryFvBefore s2Step33EntryFvAfter s2Step33EntryGvAfter
    s2Step33EntryFvRow s2Step33EntryFvOut 29 s2Step33EntryFvFresh [(s2Step33EntryGvRow,29)] [s2Step33EntryGvFresh] [s2Step33EntryGvOut]
    (growRow 770 s2Step33EntryFvFresh) ((growRow 771 s2Step33EntryGvFresh ++ [])) s2Step33EntryFv_Incoming s2Step33EntryFv_checked h3 s2Step33EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step33EntryGBefore s2Step33EntryGAfter s2Step33EntryGvAfter
    s2Step33EntryGRow s2Step33EntryGOut 252 s2Step33EntryGFresh [(s2Step33EntryFvRow,29),(s2Step33EntryGvRow,29)] [s2Step33EntryFvFresh,s2Step33EntryGvFresh] [s2Step33EntryFvOut,s2Step33EntryGvOut]
    (growRow 769 s2Step33EntryGFresh) ((growRow 770 s2Step33EntryFvFresh ++ (growRow 771 s2Step33EntryGvFresh ++ []))) s2Step33EntryG_Incoming s2Step33EntryG_checked h2 s2Step33EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step33EntryFBefore s2Step33EntryFAfter s2Step33EntryGvAfter
    s2Step33EntryFRow s2Step33EntryFOut 252 s2Step33EntryFFresh [(s2Step33EntryGRow,252),(s2Step33EntryFvRow,29),(s2Step33EntryGvRow,29)] [s2Step33EntryGFresh,s2Step33EntryFvFresh,s2Step33EntryGvFresh] [s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut]
    (growRow 768 s2Step33EntryFFresh) ((growRow 769 s2Step33EntryGFresh ++ (growRow 770 s2Step33EntryFvFresh ++ (growRow 771 s2Step33EntryGvFresh ++ [])))) s2Step33EntryF_Incoming s2Step33EntryF_checked h1 s2Step33EntryF_Outgoing
  exact h0
theorem s2Step33EntryBank_checked : compileHmrBankResizeLog .entry s2Step33EntryFBefore ⟨s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow⟩ ⟨252,252,29,29⟩ [s2Step33EntryFFresh,s2Step33EntryGFresh,s2Step33EntryFvFresh,s2Step33EntryGvFresh]=
    some (s2Step33EntryGvAfter,⟨s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut⟩,(growRow 768 s2Step33EntryFFresh ++ (growRow 769 s2Step33EntryGFresh ++ (growRow 770 s2Step33EntryFvFresh ++ (growRow 771 s2Step33EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step33EntryBank_rows]
  rfl
def s2Step34EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step34EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩
def s2Step34EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step34EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
theorem s2Step34EntryBank_incomingDistinct : ([s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34EntryBank_outgoingOwned : rowsOwned s2Step34EntryGvAfter [s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step34EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34EntryF_Incoming : rowsOwned s2Step34EntryFBefore [s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow] 0 s2Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34EntryF_Outgoing : rowsOwned s2Step34EntryGvAfter [s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] :=
  hmrRows_owned_drop s2Step34EntryGvAfter [s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] 0 s2Step34EntryBank_outgoingOwned
theorem s2Step34EntryG_Incoming : rowsOwned s2Step34EntryGBefore [s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow] 1 s2Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34EntryG_Outgoing : rowsOwned s2Step34EntryGvAfter [s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] :=
  hmrRows_owned_drop s2Step34EntryGvAfter [s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] 1 s2Step34EntryBank_outgoingOwned
theorem s2Step34EntryFv_Incoming : rowsOwned s2Step34EntryFvBefore [s2Step34EntryFvRow,s2Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow] 2 s2Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34EntryFv_Outgoing : rowsOwned s2Step34EntryGvAfter [s2Step34EntryFvOut,s2Step34EntryGvOut] :=
  hmrRows_owned_drop s2Step34EntryGvAfter [s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] 2 s2Step34EntryBank_outgoingOwned
theorem s2Step34EntryGv_Incoming : rowsOwned s2Step34EntryGvBefore [s2Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow] 3 s2Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34EntryGv_Outgoing : rowsOwned s2Step34EntryGvAfter [s2Step34EntryGvOut] :=
  hmrRows_owned_drop s2Step34EntryGvAfter [s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut] 3 s2Step34EntryBank_outgoingOwned
theorem s2Step34EntryBank_rows : planWindowRowsLog s2Step34EntryFBefore [(s2Step34EntryFRow,251),(s2Step34EntryGRow,251),(s2Step34EntryFvRow,30),(s2Step34EntryGvRow,30)] [s2Step34EntryFFresh,s2Step34EntryGFresh,s2Step34EntryFvFresh,s2Step34EntryGvFresh]=
    some (s2Step34EntryGvAfter,[s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut],(growRow 768 s2Step34EntryFFresh ++ (growRow 769 s2Step34EntryGFresh ++ (growRow 770 s2Step34EntryFvFresh ++ (growRow 771 s2Step34EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step34EntryGvAfter [] []=some (s2Step34EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step34EntryGvBefore s2Step34EntryGvAfter s2Step34EntryGvAfter
    s2Step34EntryGvRow s2Step34EntryGvOut 30 s2Step34EntryGvFresh [] [] []
    (growRow 771 s2Step34EntryGvFresh) ([]) s2Step34EntryGv_Incoming s2Step34EntryGv_checked h4 s2Step34EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step34EntryFvBefore s2Step34EntryFvAfter s2Step34EntryGvAfter
    s2Step34EntryFvRow s2Step34EntryFvOut 30 s2Step34EntryFvFresh [(s2Step34EntryGvRow,30)] [s2Step34EntryGvFresh] [s2Step34EntryGvOut]
    (growRow 770 s2Step34EntryFvFresh) ((growRow 771 s2Step34EntryGvFresh ++ [])) s2Step34EntryFv_Incoming s2Step34EntryFv_checked h3 s2Step34EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step34EntryGBefore s2Step34EntryGAfter s2Step34EntryGvAfter
    s2Step34EntryGRow s2Step34EntryGOut 251 s2Step34EntryGFresh [(s2Step34EntryFvRow,30),(s2Step34EntryGvRow,30)] [s2Step34EntryFvFresh,s2Step34EntryGvFresh] [s2Step34EntryFvOut,s2Step34EntryGvOut]
    (growRow 769 s2Step34EntryGFresh) ((growRow 770 s2Step34EntryFvFresh ++ (growRow 771 s2Step34EntryGvFresh ++ []))) s2Step34EntryG_Incoming s2Step34EntryG_checked h2 s2Step34EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step34EntryFBefore s2Step34EntryFAfter s2Step34EntryGvAfter
    s2Step34EntryFRow s2Step34EntryFOut 251 s2Step34EntryFFresh [(s2Step34EntryGRow,251),(s2Step34EntryFvRow,30),(s2Step34EntryGvRow,30)] [s2Step34EntryGFresh,s2Step34EntryFvFresh,s2Step34EntryGvFresh] [s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut]
    (growRow 768 s2Step34EntryFFresh) ((growRow 769 s2Step34EntryGFresh ++ (growRow 770 s2Step34EntryFvFresh ++ (growRow 771 s2Step34EntryGvFresh ++ [])))) s2Step34EntryF_Incoming s2Step34EntryF_checked h1 s2Step34EntryF_Outgoing
  exact h0
theorem s2Step34EntryBank_checked : compileHmrBankResizeLog .entry s2Step34EntryFBefore ⟨s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow⟩ ⟨251,251,30,30⟩ [s2Step34EntryFFresh,s2Step34EntryGFresh,s2Step34EntryFvFresh,s2Step34EntryGvFresh]=
    some (s2Step34EntryGvAfter,⟨s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut⟩,(growRow 768 s2Step34EntryFFresh ++ (growRow 769 s2Step34EntryGFresh ++ (growRow 770 s2Step34EntryFvFresh ++ (growRow 771 s2Step34EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step34EntryBank_rows]
  rfl
def s2Step35EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step35EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩
def s2Step35EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step35EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
theorem s2Step35EntryBank_incomingDistinct : ([s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35EntryBank_outgoingOwned : rowsOwned s2Step35EntryGvAfter [s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step35EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35EntryF_Incoming : rowsOwned s2Step35EntryFBefore [s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow] 0 s2Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35EntryF_Outgoing : rowsOwned s2Step35EntryGvAfter [s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] :=
  hmrRows_owned_drop s2Step35EntryGvAfter [s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] 0 s2Step35EntryBank_outgoingOwned
theorem s2Step35EntryG_Incoming : rowsOwned s2Step35EntryGBefore [s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow] 1 s2Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35EntryG_Outgoing : rowsOwned s2Step35EntryGvAfter [s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] :=
  hmrRows_owned_drop s2Step35EntryGvAfter [s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] 1 s2Step35EntryBank_outgoingOwned
theorem s2Step35EntryFv_Incoming : rowsOwned s2Step35EntryFvBefore [s2Step35EntryFvRow,s2Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow] 2 s2Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35EntryFv_Outgoing : rowsOwned s2Step35EntryGvAfter [s2Step35EntryFvOut,s2Step35EntryGvOut] :=
  hmrRows_owned_drop s2Step35EntryGvAfter [s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] 2 s2Step35EntryBank_outgoingOwned
theorem s2Step35EntryGv_Incoming : rowsOwned s2Step35EntryGvBefore [s2Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow] 3 s2Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35EntryGv_Outgoing : rowsOwned s2Step35EntryGvAfter [s2Step35EntryGvOut] :=
  hmrRows_owned_drop s2Step35EntryGvAfter [s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut] 3 s2Step35EntryBank_outgoingOwned
theorem s2Step35EntryBank_rows : planWindowRowsLog s2Step35EntryFBefore [(s2Step35EntryFRow,251),(s2Step35EntryGRow,251),(s2Step35EntryFvRow,30),(s2Step35EntryGvRow,30)] [s2Step35EntryFFresh,s2Step35EntryGFresh,s2Step35EntryFvFresh,s2Step35EntryGvFresh]=
    some (s2Step35EntryGvAfter,[s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut],(growRow 768 s2Step35EntryFFresh ++ (growRow 769 s2Step35EntryGFresh ++ (growRow 770 s2Step35EntryFvFresh ++ (growRow 771 s2Step35EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step35EntryGvAfter [] []=some (s2Step35EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step35EntryGvBefore s2Step35EntryGvAfter s2Step35EntryGvAfter
    s2Step35EntryGvRow s2Step35EntryGvOut 30 s2Step35EntryGvFresh [] [] []
    (growRow 771 s2Step35EntryGvFresh) ([]) s2Step35EntryGv_Incoming s2Step35EntryGv_checked h4 s2Step35EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step35EntryFvBefore s2Step35EntryFvAfter s2Step35EntryGvAfter
    s2Step35EntryFvRow s2Step35EntryFvOut 30 s2Step35EntryFvFresh [(s2Step35EntryGvRow,30)] [s2Step35EntryGvFresh] [s2Step35EntryGvOut]
    (growRow 770 s2Step35EntryFvFresh) ((growRow 771 s2Step35EntryGvFresh ++ [])) s2Step35EntryFv_Incoming s2Step35EntryFv_checked h3 s2Step35EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step35EntryGBefore s2Step35EntryGAfter s2Step35EntryGvAfter
    s2Step35EntryGRow s2Step35EntryGOut 251 s2Step35EntryGFresh [(s2Step35EntryFvRow,30),(s2Step35EntryGvRow,30)] [s2Step35EntryFvFresh,s2Step35EntryGvFresh] [s2Step35EntryFvOut,s2Step35EntryGvOut]
    (growRow 769 s2Step35EntryGFresh) ((growRow 770 s2Step35EntryFvFresh ++ (growRow 771 s2Step35EntryGvFresh ++ []))) s2Step35EntryG_Incoming s2Step35EntryG_checked h2 s2Step35EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step35EntryFBefore s2Step35EntryFAfter s2Step35EntryGvAfter
    s2Step35EntryFRow s2Step35EntryFOut 251 s2Step35EntryFFresh [(s2Step35EntryGRow,251),(s2Step35EntryFvRow,30),(s2Step35EntryGvRow,30)] [s2Step35EntryGFresh,s2Step35EntryFvFresh,s2Step35EntryGvFresh] [s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut]
    (growRow 768 s2Step35EntryFFresh) ((growRow 769 s2Step35EntryGFresh ++ (growRow 770 s2Step35EntryFvFresh ++ (growRow 771 s2Step35EntryGvFresh ++ [])))) s2Step35EntryF_Incoming s2Step35EntryF_checked h1 s2Step35EntryF_Outgoing
  exact h0
theorem s2Step35EntryBank_checked : compileHmrBankResizeLog .entry s2Step35EntryFBefore ⟨s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow⟩ ⟨251,251,30,30⟩ [s2Step35EntryFFresh,s2Step35EntryGFresh,s2Step35EntryFvFresh,s2Step35EntryGvFresh]=
    some (s2Step35EntryGvAfter,⟨s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut⟩,(growRow 768 s2Step35EntryFFresh ++ (growRow 769 s2Step35EntryGFresh ++ (growRow 770 s2Step35EntryFvFresh ++ (growRow 771 s2Step35EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step35EntryBank_rows]
  rfl
def s2Step36EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793],768⟩
def s2Step36EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩
def s2Step36EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step36EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩
theorem s2Step36EntryBank_incomingDistinct : ([s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36EntryBank_outgoingOwned : rowsOwned s2Step36EntryGvAfter [s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step36EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36EntryF_Incoming : rowsOwned s2Step36EntryFBefore [s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow] 0 s2Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36EntryF_Outgoing : rowsOwned s2Step36EntryGvAfter [s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] :=
  hmrRows_owned_drop s2Step36EntryGvAfter [s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] 0 s2Step36EntryBank_outgoingOwned
theorem s2Step36EntryG_Incoming : rowsOwned s2Step36EntryGBefore [s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow] 1 s2Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36EntryG_Outgoing : rowsOwned s2Step36EntryGvAfter [s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] :=
  hmrRows_owned_drop s2Step36EntryGvAfter [s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] 1 s2Step36EntryBank_outgoingOwned
theorem s2Step36EntryFv_Incoming : rowsOwned s2Step36EntryFvBefore [s2Step36EntryFvRow,s2Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow] 2 s2Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36EntryFv_Outgoing : rowsOwned s2Step36EntryGvAfter [s2Step36EntryFvOut,s2Step36EntryGvOut] :=
  hmrRows_owned_drop s2Step36EntryGvAfter [s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] 2 s2Step36EntryBank_outgoingOwned
theorem s2Step36EntryGv_Incoming : rowsOwned s2Step36EntryGvBefore [s2Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow] 3 s2Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36EntryGv_Outgoing : rowsOwned s2Step36EntryGvAfter [s2Step36EntryGvOut] :=
  hmrRows_owned_drop s2Step36EntryGvAfter [s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut] 3 s2Step36EntryBank_outgoingOwned
theorem s2Step36EntryBank_rows : planWindowRowsLog s2Step36EntryFBefore [(s2Step36EntryFRow,251),(s2Step36EntryGRow,251),(s2Step36EntryFvRow,31),(s2Step36EntryGvRow,31)] [s2Step36EntryFFresh,s2Step36EntryGFresh,s2Step36EntryFvFresh,s2Step36EntryGvFresh]=
    some (s2Step36EntryGvAfter,[s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut],(growRow 768 s2Step36EntryFFresh ++ (growRow 769 s2Step36EntryGFresh ++ (growRow 770 s2Step36EntryFvFresh ++ (growRow 771 s2Step36EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step36EntryGvAfter [] []=some (s2Step36EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step36EntryGvBefore s2Step36EntryGvAfter s2Step36EntryGvAfter
    s2Step36EntryGvRow s2Step36EntryGvOut 31 s2Step36EntryGvFresh [] [] []
    (growRow 771 s2Step36EntryGvFresh) ([]) s2Step36EntryGv_Incoming s2Step36EntryGv_checked h4 s2Step36EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step36EntryFvBefore s2Step36EntryFvAfter s2Step36EntryGvAfter
    s2Step36EntryFvRow s2Step36EntryFvOut 31 s2Step36EntryFvFresh [(s2Step36EntryGvRow,31)] [s2Step36EntryGvFresh] [s2Step36EntryGvOut]
    (growRow 770 s2Step36EntryFvFresh) ((growRow 771 s2Step36EntryGvFresh ++ [])) s2Step36EntryFv_Incoming s2Step36EntryFv_checked h3 s2Step36EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step36EntryGBefore s2Step36EntryGAfter s2Step36EntryGvAfter
    s2Step36EntryGRow s2Step36EntryGOut 251 s2Step36EntryGFresh [(s2Step36EntryFvRow,31),(s2Step36EntryGvRow,31)] [s2Step36EntryFvFresh,s2Step36EntryGvFresh] [s2Step36EntryFvOut,s2Step36EntryGvOut]
    (growRow 769 s2Step36EntryGFresh) ((growRow 770 s2Step36EntryFvFresh ++ (growRow 771 s2Step36EntryGvFresh ++ []))) s2Step36EntryG_Incoming s2Step36EntryG_checked h2 s2Step36EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step36EntryFBefore s2Step36EntryFAfter s2Step36EntryGvAfter
    s2Step36EntryFRow s2Step36EntryFOut 251 s2Step36EntryFFresh [(s2Step36EntryGRow,251),(s2Step36EntryFvRow,31),(s2Step36EntryGvRow,31)] [s2Step36EntryGFresh,s2Step36EntryFvFresh,s2Step36EntryGvFresh] [s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut]
    (growRow 768 s2Step36EntryFFresh) ((growRow 769 s2Step36EntryGFresh ++ (growRow 770 s2Step36EntryFvFresh ++ (growRow 771 s2Step36EntryGvFresh ++ [])))) s2Step36EntryF_Incoming s2Step36EntryF_checked h1 s2Step36EntryF_Outgoing
  exact h0
theorem s2Step36EntryBank_checked : compileHmrBankResizeLog .entry s2Step36EntryFBefore ⟨s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow⟩ ⟨251,251,31,31⟩ [s2Step36EntryFFresh,s2Step36EntryGFresh,s2Step36EntryFvFresh,s2Step36EntryGvFresh]=
    some (s2Step36EntryGvAfter,⟨s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut⟩,(growRow 768 s2Step36EntryFFresh ++ (growRow 769 s2Step36EntryGFresh ++ (growRow 770 s2Step36EntryFvFresh ++ (growRow 771 s2Step36EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step36EntryBank_rows]
  rfl
def s2Step37EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step37EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩
def s2Step37EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step37EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩
theorem s2Step37EntryBank_incomingDistinct : ([s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37EntryBank_outgoingOwned : rowsOwned s2Step37EntryGvAfter [s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step37EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37EntryF_Incoming : rowsOwned s2Step37EntryFBefore [s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow] 0 s2Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37EntryF_Outgoing : rowsOwned s2Step37EntryGvAfter [s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] :=
  hmrRows_owned_drop s2Step37EntryGvAfter [s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] 0 s2Step37EntryBank_outgoingOwned
theorem s2Step37EntryG_Incoming : rowsOwned s2Step37EntryGBefore [s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow] 1 s2Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37EntryG_Outgoing : rowsOwned s2Step37EntryGvAfter [s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] :=
  hmrRows_owned_drop s2Step37EntryGvAfter [s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] 1 s2Step37EntryBank_outgoingOwned
theorem s2Step37EntryFv_Incoming : rowsOwned s2Step37EntryFvBefore [s2Step37EntryFvRow,s2Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow] 2 s2Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37EntryFv_Outgoing : rowsOwned s2Step37EntryGvAfter [s2Step37EntryFvOut,s2Step37EntryGvOut] :=
  hmrRows_owned_drop s2Step37EntryGvAfter [s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] 2 s2Step37EntryBank_outgoingOwned
theorem s2Step37EntryGv_Incoming : rowsOwned s2Step37EntryGvBefore [s2Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow] 3 s2Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37EntryGv_Outgoing : rowsOwned s2Step37EntryGvAfter [s2Step37EntryGvOut] :=
  hmrRows_owned_drop s2Step37EntryGvAfter [s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut] 3 s2Step37EntryBank_outgoingOwned
theorem s2Step37EntryBank_rows : planWindowRowsLog s2Step37EntryFBefore [(s2Step37EntryFRow,250),(s2Step37EntryGRow,250),(s2Step37EntryFvRow,31),(s2Step37EntryGvRow,31)] [s2Step37EntryFFresh,s2Step37EntryGFresh,s2Step37EntryFvFresh,s2Step37EntryGvFresh]=
    some (s2Step37EntryGvAfter,[s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut],(growRow 768 s2Step37EntryFFresh ++ (growRow 769 s2Step37EntryGFresh ++ (growRow 770 s2Step37EntryFvFresh ++ (growRow 771 s2Step37EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step37EntryGvAfter [] []=some (s2Step37EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step37EntryGvBefore s2Step37EntryGvAfter s2Step37EntryGvAfter
    s2Step37EntryGvRow s2Step37EntryGvOut 31 s2Step37EntryGvFresh [] [] []
    (growRow 771 s2Step37EntryGvFresh) ([]) s2Step37EntryGv_Incoming s2Step37EntryGv_checked h4 s2Step37EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step37EntryFvBefore s2Step37EntryFvAfter s2Step37EntryGvAfter
    s2Step37EntryFvRow s2Step37EntryFvOut 31 s2Step37EntryFvFresh [(s2Step37EntryGvRow,31)] [s2Step37EntryGvFresh] [s2Step37EntryGvOut]
    (growRow 770 s2Step37EntryFvFresh) ((growRow 771 s2Step37EntryGvFresh ++ [])) s2Step37EntryFv_Incoming s2Step37EntryFv_checked h3 s2Step37EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step37EntryGBefore s2Step37EntryGAfter s2Step37EntryGvAfter
    s2Step37EntryGRow s2Step37EntryGOut 250 s2Step37EntryGFresh [(s2Step37EntryFvRow,31),(s2Step37EntryGvRow,31)] [s2Step37EntryFvFresh,s2Step37EntryGvFresh] [s2Step37EntryFvOut,s2Step37EntryGvOut]
    (growRow 769 s2Step37EntryGFresh) ((growRow 770 s2Step37EntryFvFresh ++ (growRow 771 s2Step37EntryGvFresh ++ []))) s2Step37EntryG_Incoming s2Step37EntryG_checked h2 s2Step37EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step37EntryFBefore s2Step37EntryFAfter s2Step37EntryGvAfter
    s2Step37EntryFRow s2Step37EntryFOut 250 s2Step37EntryFFresh [(s2Step37EntryGRow,250),(s2Step37EntryFvRow,31),(s2Step37EntryGvRow,31)] [s2Step37EntryGFresh,s2Step37EntryFvFresh,s2Step37EntryGvFresh] [s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut]
    (growRow 768 s2Step37EntryFFresh) ((growRow 769 s2Step37EntryGFresh ++ (growRow 770 s2Step37EntryFvFresh ++ (growRow 771 s2Step37EntryGvFresh ++ [])))) s2Step37EntryF_Incoming s2Step37EntryF_checked h1 s2Step37EntryF_Outgoing
  exact h0
theorem s2Step37EntryBank_checked : compileHmrBankResizeLog .entry s2Step37EntryFBefore ⟨s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow⟩ ⟨250,250,31,31⟩ [s2Step37EntryFFresh,s2Step37EntryGFresh,s2Step37EntryFvFresh,s2Step37EntryGvFresh]=
    some (s2Step37EntryGvAfter,⟨s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut⟩,(growRow 768 s2Step37EntryFFresh ++ (growRow 769 s2Step37EntryGFresh ++ (growRow 770 s2Step37EntryFvFresh ++ (growRow 771 s2Step37EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step37EntryBank_rows]
  rfl
def s2Step38EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step38EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792],769⟩
def s2Step38EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step38EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
theorem s2Step38EntryBank_incomingDistinct : ([s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38EntryBank_outgoingOwned : rowsOwned s2Step38EntryGvAfter [s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step38EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38EntryF_Incoming : rowsOwned s2Step38EntryFBefore [s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow] 0 s2Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38EntryF_Outgoing : rowsOwned s2Step38EntryGvAfter [s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] :=
  hmrRows_owned_drop s2Step38EntryGvAfter [s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] 0 s2Step38EntryBank_outgoingOwned
theorem s2Step38EntryG_Incoming : rowsOwned s2Step38EntryGBefore [s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow] 1 s2Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38EntryG_Outgoing : rowsOwned s2Step38EntryGvAfter [s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] :=
  hmrRows_owned_drop s2Step38EntryGvAfter [s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] 1 s2Step38EntryBank_outgoingOwned
theorem s2Step38EntryFv_Incoming : rowsOwned s2Step38EntryFvBefore [s2Step38EntryFvRow,s2Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow] 2 s2Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38EntryFv_Outgoing : rowsOwned s2Step38EntryGvAfter [s2Step38EntryFvOut,s2Step38EntryGvOut] :=
  hmrRows_owned_drop s2Step38EntryGvAfter [s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] 2 s2Step38EntryBank_outgoingOwned
theorem s2Step38EntryGv_Incoming : rowsOwned s2Step38EntryGvBefore [s2Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow] 3 s2Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38EntryGv_Outgoing : rowsOwned s2Step38EntryGvAfter [s2Step38EntryGvOut] :=
  hmrRows_owned_drop s2Step38EntryGvAfter [s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut] 3 s2Step38EntryBank_outgoingOwned
theorem s2Step38EntryBank_rows : planWindowRowsLog s2Step38EntryFBefore [(s2Step38EntryFRow,250),(s2Step38EntryGRow,250),(s2Step38EntryFvRow,32),(s2Step38EntryGvRow,32)] [s2Step38EntryFFresh,s2Step38EntryGFresh,s2Step38EntryFvFresh,s2Step38EntryGvFresh]=
    some (s2Step38EntryGvAfter,[s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut],(growRow 768 s2Step38EntryFFresh ++ (growRow 769 s2Step38EntryGFresh ++ (growRow 770 s2Step38EntryFvFresh ++ (growRow 771 s2Step38EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step38EntryGvAfter [] []=some (s2Step38EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step38EntryGvBefore s2Step38EntryGvAfter s2Step38EntryGvAfter
    s2Step38EntryGvRow s2Step38EntryGvOut 32 s2Step38EntryGvFresh [] [] []
    (growRow 771 s2Step38EntryGvFresh) ([]) s2Step38EntryGv_Incoming s2Step38EntryGv_checked h4 s2Step38EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step38EntryFvBefore s2Step38EntryFvAfter s2Step38EntryGvAfter
    s2Step38EntryFvRow s2Step38EntryFvOut 32 s2Step38EntryFvFresh [(s2Step38EntryGvRow,32)] [s2Step38EntryGvFresh] [s2Step38EntryGvOut]
    (growRow 770 s2Step38EntryFvFresh) ((growRow 771 s2Step38EntryGvFresh ++ [])) s2Step38EntryFv_Incoming s2Step38EntryFv_checked h3 s2Step38EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step38EntryGBefore s2Step38EntryGAfter s2Step38EntryGvAfter
    s2Step38EntryGRow s2Step38EntryGOut 250 s2Step38EntryGFresh [(s2Step38EntryFvRow,32),(s2Step38EntryGvRow,32)] [s2Step38EntryFvFresh,s2Step38EntryGvFresh] [s2Step38EntryFvOut,s2Step38EntryGvOut]
    (growRow 769 s2Step38EntryGFresh) ((growRow 770 s2Step38EntryFvFresh ++ (growRow 771 s2Step38EntryGvFresh ++ []))) s2Step38EntryG_Incoming s2Step38EntryG_checked h2 s2Step38EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step38EntryFBefore s2Step38EntryFAfter s2Step38EntryGvAfter
    s2Step38EntryFRow s2Step38EntryFOut 250 s2Step38EntryFFresh [(s2Step38EntryGRow,250),(s2Step38EntryFvRow,32),(s2Step38EntryGvRow,32)] [s2Step38EntryGFresh,s2Step38EntryFvFresh,s2Step38EntryGvFresh] [s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut]
    (growRow 768 s2Step38EntryFFresh) ((growRow 769 s2Step38EntryGFresh ++ (growRow 770 s2Step38EntryFvFresh ++ (growRow 771 s2Step38EntryGvFresh ++ [])))) s2Step38EntryF_Incoming s2Step38EntryF_checked h1 s2Step38EntryF_Outgoing
  exact h0
theorem s2Step38EntryBank_checked : compileHmrBankResizeLog .entry s2Step38EntryFBefore ⟨s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow⟩ ⟨250,250,32,32⟩ [s2Step38EntryFFresh,s2Step38EntryGFresh,s2Step38EntryFvFresh,s2Step38EntryGvFresh]=
    some (s2Step38EntryGvAfter,⟨s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut⟩,(growRow 768 s2Step38EntryFFresh ++ (growRow 769 s2Step38EntryGFresh ++ (growRow 770 s2Step38EntryFvFresh ++ (growRow 771 s2Step38EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step38EntryBank_rows]
  rfl
def s2Step39EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step39EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩
def s2Step39EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step39EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
theorem s2Step39EntryBank_incomingDistinct : ([s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39EntryBank_outgoingOwned : rowsOwned s2Step39EntryGvAfter [s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step39EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39EntryF_Incoming : rowsOwned s2Step39EntryFBefore [s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow] 0 s2Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39EntryF_Outgoing : rowsOwned s2Step39EntryGvAfter [s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] :=
  hmrRows_owned_drop s2Step39EntryGvAfter [s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] 0 s2Step39EntryBank_outgoingOwned
theorem s2Step39EntryG_Incoming : rowsOwned s2Step39EntryGBefore [s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow] 1 s2Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39EntryG_Outgoing : rowsOwned s2Step39EntryGvAfter [s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] :=
  hmrRows_owned_drop s2Step39EntryGvAfter [s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] 1 s2Step39EntryBank_outgoingOwned
theorem s2Step39EntryFv_Incoming : rowsOwned s2Step39EntryFvBefore [s2Step39EntryFvRow,s2Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow] 2 s2Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39EntryFv_Outgoing : rowsOwned s2Step39EntryGvAfter [s2Step39EntryFvOut,s2Step39EntryGvOut] :=
  hmrRows_owned_drop s2Step39EntryGvAfter [s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] 2 s2Step39EntryBank_outgoingOwned
theorem s2Step39EntryGv_Incoming : rowsOwned s2Step39EntryGvBefore [s2Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow] 3 s2Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39EntryGv_Outgoing : rowsOwned s2Step39EntryGvAfter [s2Step39EntryGvOut] :=
  hmrRows_owned_drop s2Step39EntryGvAfter [s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut] 3 s2Step39EntryBank_outgoingOwned
theorem s2Step39EntryBank_rows : planWindowRowsLog s2Step39EntryFBefore [(s2Step39EntryFRow,249),(s2Step39EntryGRow,249),(s2Step39EntryFvRow,32),(s2Step39EntryGvRow,32)] [s2Step39EntryFFresh,s2Step39EntryGFresh,s2Step39EntryFvFresh,s2Step39EntryGvFresh]=
    some (s2Step39EntryGvAfter,[s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut],(growRow 768 s2Step39EntryFFresh ++ (growRow 769 s2Step39EntryGFresh ++ (growRow 770 s2Step39EntryFvFresh ++ (growRow 771 s2Step39EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step39EntryGvAfter [] []=some (s2Step39EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step39EntryGvBefore s2Step39EntryGvAfter s2Step39EntryGvAfter
    s2Step39EntryGvRow s2Step39EntryGvOut 32 s2Step39EntryGvFresh [] [] []
    (growRow 771 s2Step39EntryGvFresh) ([]) s2Step39EntryGv_Incoming s2Step39EntryGv_checked h4 s2Step39EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step39EntryFvBefore s2Step39EntryFvAfter s2Step39EntryGvAfter
    s2Step39EntryFvRow s2Step39EntryFvOut 32 s2Step39EntryFvFresh [(s2Step39EntryGvRow,32)] [s2Step39EntryGvFresh] [s2Step39EntryGvOut]
    (growRow 770 s2Step39EntryFvFresh) ((growRow 771 s2Step39EntryGvFresh ++ [])) s2Step39EntryFv_Incoming s2Step39EntryFv_checked h3 s2Step39EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step39EntryGBefore s2Step39EntryGAfter s2Step39EntryGvAfter
    s2Step39EntryGRow s2Step39EntryGOut 249 s2Step39EntryGFresh [(s2Step39EntryFvRow,32),(s2Step39EntryGvRow,32)] [s2Step39EntryFvFresh,s2Step39EntryGvFresh] [s2Step39EntryFvOut,s2Step39EntryGvOut]
    (growRow 769 s2Step39EntryGFresh) ((growRow 770 s2Step39EntryFvFresh ++ (growRow 771 s2Step39EntryGvFresh ++ []))) s2Step39EntryG_Incoming s2Step39EntryG_checked h2 s2Step39EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step39EntryFBefore s2Step39EntryFAfter s2Step39EntryGvAfter
    s2Step39EntryFRow s2Step39EntryFOut 249 s2Step39EntryFFresh [(s2Step39EntryGRow,249),(s2Step39EntryFvRow,32),(s2Step39EntryGvRow,32)] [s2Step39EntryGFresh,s2Step39EntryFvFresh,s2Step39EntryGvFresh] [s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut]
    (growRow 768 s2Step39EntryFFresh) ((growRow 769 s2Step39EntryGFresh ++ (growRow 770 s2Step39EntryFvFresh ++ (growRow 771 s2Step39EntryGvFresh ++ [])))) s2Step39EntryF_Incoming s2Step39EntryF_checked h1 s2Step39EntryF_Outgoing
  exact h0
theorem s2Step39EntryBank_checked : compileHmrBankResizeLog .entry s2Step39EntryFBefore ⟨s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow⟩ ⟨249,249,32,32⟩ [s2Step39EntryFFresh,s2Step39EntryGFresh,s2Step39EntryFvFresh,s2Step39EntryGvFresh]=
    some (s2Step39EntryGvAfter,⟨s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut⟩,(growRow 768 s2Step39EntryFFresh ++ (growRow 769 s2Step39EntryGFresh ++ (growRow 770 s2Step39EntryFvFresh ++ (growRow 771 s2Step39EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step39EntryBank_rows]
  rfl
def s2Step40EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step40EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩
def s2Step40EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩
def s2Step40EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩
theorem s2Step40EntryBank_incomingDistinct : ([s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40EntryBank_outgoingOwned : rowsOwned s2Step40EntryGvAfter [s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step40EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40EntryF_Incoming : rowsOwned s2Step40EntryFBefore [s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow] 0 s2Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40EntryF_Outgoing : rowsOwned s2Step40EntryGvAfter [s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] :=
  hmrRows_owned_drop s2Step40EntryGvAfter [s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] 0 s2Step40EntryBank_outgoingOwned
theorem s2Step40EntryG_Incoming : rowsOwned s2Step40EntryGBefore [s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow] 1 s2Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40EntryG_Outgoing : rowsOwned s2Step40EntryGvAfter [s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] :=
  hmrRows_owned_drop s2Step40EntryGvAfter [s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] 1 s2Step40EntryBank_outgoingOwned
theorem s2Step40EntryFv_Incoming : rowsOwned s2Step40EntryFvBefore [s2Step40EntryFvRow,s2Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow] 2 s2Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40EntryFv_Outgoing : rowsOwned s2Step40EntryGvAfter [s2Step40EntryFvOut,s2Step40EntryGvOut] :=
  hmrRows_owned_drop s2Step40EntryGvAfter [s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] 2 s2Step40EntryBank_outgoingOwned
theorem s2Step40EntryGv_Incoming : rowsOwned s2Step40EntryGvBefore [s2Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow] 3 s2Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40EntryGv_Outgoing : rowsOwned s2Step40EntryGvAfter [s2Step40EntryGvOut] :=
  hmrRows_owned_drop s2Step40EntryGvAfter [s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut] 3 s2Step40EntryBank_outgoingOwned
theorem s2Step40EntryBank_rows : planWindowRowsLog s2Step40EntryFBefore [(s2Step40EntryFRow,249),(s2Step40EntryGRow,249),(s2Step40EntryFvRow,33),(s2Step40EntryGvRow,33)] [s2Step40EntryFFresh,s2Step40EntryGFresh,s2Step40EntryFvFresh,s2Step40EntryGvFresh]=
    some (s2Step40EntryGvAfter,[s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut],(growRow 768 s2Step40EntryFFresh ++ (growRow 769 s2Step40EntryGFresh ++ (growRow 770 s2Step40EntryFvFresh ++ (growRow 771 s2Step40EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step40EntryGvAfter [] []=some (s2Step40EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step40EntryGvBefore s2Step40EntryGvAfter s2Step40EntryGvAfter
    s2Step40EntryGvRow s2Step40EntryGvOut 33 s2Step40EntryGvFresh [] [] []
    (growRow 771 s2Step40EntryGvFresh) ([]) s2Step40EntryGv_Incoming s2Step40EntryGv_checked h4 s2Step40EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step40EntryFvBefore s2Step40EntryFvAfter s2Step40EntryGvAfter
    s2Step40EntryFvRow s2Step40EntryFvOut 33 s2Step40EntryFvFresh [(s2Step40EntryGvRow,33)] [s2Step40EntryGvFresh] [s2Step40EntryGvOut]
    (growRow 770 s2Step40EntryFvFresh) ((growRow 771 s2Step40EntryGvFresh ++ [])) s2Step40EntryFv_Incoming s2Step40EntryFv_checked h3 s2Step40EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step40EntryGBefore s2Step40EntryGAfter s2Step40EntryGvAfter
    s2Step40EntryGRow s2Step40EntryGOut 249 s2Step40EntryGFresh [(s2Step40EntryFvRow,33),(s2Step40EntryGvRow,33)] [s2Step40EntryFvFresh,s2Step40EntryGvFresh] [s2Step40EntryFvOut,s2Step40EntryGvOut]
    (growRow 769 s2Step40EntryGFresh) ((growRow 770 s2Step40EntryFvFresh ++ (growRow 771 s2Step40EntryGvFresh ++ []))) s2Step40EntryG_Incoming s2Step40EntryG_checked h2 s2Step40EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step40EntryFBefore s2Step40EntryFAfter s2Step40EntryGvAfter
    s2Step40EntryFRow s2Step40EntryFOut 249 s2Step40EntryFFresh [(s2Step40EntryGRow,249),(s2Step40EntryFvRow,33),(s2Step40EntryGvRow,33)] [s2Step40EntryGFresh,s2Step40EntryFvFresh,s2Step40EntryGvFresh] [s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut]
    (growRow 768 s2Step40EntryFFresh) ((growRow 769 s2Step40EntryGFresh ++ (growRow 770 s2Step40EntryFvFresh ++ (growRow 771 s2Step40EntryGvFresh ++ [])))) s2Step40EntryF_Incoming s2Step40EntryF_checked h1 s2Step40EntryF_Outgoing
  exact h0
theorem s2Step40EntryBank_checked : compileHmrBankResizeLog .entry s2Step40EntryFBefore ⟨s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow⟩ ⟨249,249,33,33⟩ [s2Step40EntryFFresh,s2Step40EntryGFresh,s2Step40EntryFvFresh,s2Step40EntryGvFresh]=
    some (s2Step40EntryGvAfter,⟨s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut⟩,(growRow 768 s2Step40EntryFFresh ++ (growRow 769 s2Step40EntryGFresh ++ (growRow 770 s2Step40EntryFvFresh ++ (growRow 771 s2Step40EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step40EntryBank_rows]
  rfl
def s2Step41EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step41EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step41EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step41EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791],771⟩
theorem s2Step41EntryBank_incomingDistinct : ([s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41EntryBank_outgoingOwned : rowsOwned s2Step41EntryGvAfter [s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step41EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41EntryF_Incoming : rowsOwned s2Step41EntryFBefore [s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow] 0 s2Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41EntryF_Outgoing : rowsOwned s2Step41EntryGvAfter [s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] :=
  hmrRows_owned_drop s2Step41EntryGvAfter [s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] 0 s2Step41EntryBank_outgoingOwned
theorem s2Step41EntryG_Incoming : rowsOwned s2Step41EntryGBefore [s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow] 1 s2Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41EntryG_Outgoing : rowsOwned s2Step41EntryGvAfter [s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] :=
  hmrRows_owned_drop s2Step41EntryGvAfter [s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] 1 s2Step41EntryBank_outgoingOwned
theorem s2Step41EntryFv_Incoming : rowsOwned s2Step41EntryFvBefore [s2Step41EntryFvRow,s2Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow] 2 s2Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41EntryFv_Outgoing : rowsOwned s2Step41EntryGvAfter [s2Step41EntryFvOut,s2Step41EntryGvOut] :=
  hmrRows_owned_drop s2Step41EntryGvAfter [s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] 2 s2Step41EntryBank_outgoingOwned
theorem s2Step41EntryGv_Incoming : rowsOwned s2Step41EntryGvBefore [s2Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow] 3 s2Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41EntryGv_Outgoing : rowsOwned s2Step41EntryGvAfter [s2Step41EntryGvOut] :=
  hmrRows_owned_drop s2Step41EntryGvAfter [s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut] 3 s2Step41EntryBank_outgoingOwned
theorem s2Step41EntryBank_rows : planWindowRowsLog s2Step41EntryFBefore [(s2Step41EntryFRow,248),(s2Step41EntryGRow,248),(s2Step41EntryFvRow,34),(s2Step41EntryGvRow,34)] [s2Step41EntryFFresh,s2Step41EntryGFresh,s2Step41EntryFvFresh,s2Step41EntryGvFresh]=
    some (s2Step41EntryGvAfter,[s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut],(growRow 768 s2Step41EntryFFresh ++ (growRow 769 s2Step41EntryGFresh ++ (growRow 770 s2Step41EntryFvFresh ++ (growRow 771 s2Step41EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step41EntryGvAfter [] []=some (s2Step41EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step41EntryGvBefore s2Step41EntryGvAfter s2Step41EntryGvAfter
    s2Step41EntryGvRow s2Step41EntryGvOut 34 s2Step41EntryGvFresh [] [] []
    (growRow 771 s2Step41EntryGvFresh) ([]) s2Step41EntryGv_Incoming s2Step41EntryGv_checked h4 s2Step41EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step41EntryFvBefore s2Step41EntryFvAfter s2Step41EntryGvAfter
    s2Step41EntryFvRow s2Step41EntryFvOut 34 s2Step41EntryFvFresh [(s2Step41EntryGvRow,34)] [s2Step41EntryGvFresh] [s2Step41EntryGvOut]
    (growRow 770 s2Step41EntryFvFresh) ((growRow 771 s2Step41EntryGvFresh ++ [])) s2Step41EntryFv_Incoming s2Step41EntryFv_checked h3 s2Step41EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step41EntryGBefore s2Step41EntryGAfter s2Step41EntryGvAfter
    s2Step41EntryGRow s2Step41EntryGOut 248 s2Step41EntryGFresh [(s2Step41EntryFvRow,34),(s2Step41EntryGvRow,34)] [s2Step41EntryFvFresh,s2Step41EntryGvFresh] [s2Step41EntryFvOut,s2Step41EntryGvOut]
    (growRow 769 s2Step41EntryGFresh) ((growRow 770 s2Step41EntryFvFresh ++ (growRow 771 s2Step41EntryGvFresh ++ []))) s2Step41EntryG_Incoming s2Step41EntryG_checked h2 s2Step41EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step41EntryFBefore s2Step41EntryFAfter s2Step41EntryGvAfter
    s2Step41EntryFRow s2Step41EntryFOut 248 s2Step41EntryFFresh [(s2Step41EntryGRow,248),(s2Step41EntryFvRow,34),(s2Step41EntryGvRow,34)] [s2Step41EntryGFresh,s2Step41EntryFvFresh,s2Step41EntryGvFresh] [s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut]
    (growRow 768 s2Step41EntryFFresh) ((growRow 769 s2Step41EntryGFresh ++ (growRow 770 s2Step41EntryFvFresh ++ (growRow 771 s2Step41EntryGvFresh ++ [])))) s2Step41EntryF_Incoming s2Step41EntryF_checked h1 s2Step41EntryF_Outgoing
  exact h0
theorem s2Step41EntryBank_checked : compileHmrBankResizeLog .entry s2Step41EntryFBefore ⟨s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow⟩ ⟨248,248,34,34⟩ [s2Step41EntryFFresh,s2Step41EntryGFresh,s2Step41EntryFvFresh,s2Step41EntryGvFresh]=
    some (s2Step41EntryGvAfter,⟨s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut⟩,(growRow 768 s2Step41EntryFFresh ++ (growRow 769 s2Step41EntryGFresh ++ (growRow 770 s2Step41EntryFvFresh ++ (growRow 771 s2Step41EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step41EntryBank_rows]
  rfl
def s2Step42EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step42EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step42EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step42EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797],771⟩
theorem s2Step42EntryBank_incomingDistinct : ([s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42EntryBank_outgoingOwned : rowsOwned s2Step42EntryGvAfter [s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step42EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42EntryF_Incoming : rowsOwned s2Step42EntryFBefore [s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow] 0 s2Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42EntryF_Outgoing : rowsOwned s2Step42EntryGvAfter [s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] :=
  hmrRows_owned_drop s2Step42EntryGvAfter [s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] 0 s2Step42EntryBank_outgoingOwned
theorem s2Step42EntryG_Incoming : rowsOwned s2Step42EntryGBefore [s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow] 1 s2Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42EntryG_Outgoing : rowsOwned s2Step42EntryGvAfter [s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] :=
  hmrRows_owned_drop s2Step42EntryGvAfter [s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] 1 s2Step42EntryBank_outgoingOwned
theorem s2Step42EntryFv_Incoming : rowsOwned s2Step42EntryFvBefore [s2Step42EntryFvRow,s2Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow] 2 s2Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42EntryFv_Outgoing : rowsOwned s2Step42EntryGvAfter [s2Step42EntryFvOut,s2Step42EntryGvOut] :=
  hmrRows_owned_drop s2Step42EntryGvAfter [s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] 2 s2Step42EntryBank_outgoingOwned
theorem s2Step42EntryGv_Incoming : rowsOwned s2Step42EntryGvBefore [s2Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow] 3 s2Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42EntryGv_Outgoing : rowsOwned s2Step42EntryGvAfter [s2Step42EntryGvOut] :=
  hmrRows_owned_drop s2Step42EntryGvAfter [s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut] 3 s2Step42EntryBank_outgoingOwned
theorem s2Step42EntryBank_rows : planWindowRowsLog s2Step42EntryFBefore [(s2Step42EntryFRow,248),(s2Step42EntryGRow,248),(s2Step42EntryFvRow,34),(s2Step42EntryGvRow,34)] [s2Step42EntryFFresh,s2Step42EntryGFresh,s2Step42EntryFvFresh,s2Step42EntryGvFresh]=
    some (s2Step42EntryGvAfter,[s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut],(growRow 768 s2Step42EntryFFresh ++ (growRow 769 s2Step42EntryGFresh ++ (growRow 770 s2Step42EntryFvFresh ++ (growRow 771 s2Step42EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step42EntryGvAfter [] []=some (s2Step42EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step42EntryGvBefore s2Step42EntryGvAfter s2Step42EntryGvAfter
    s2Step42EntryGvRow s2Step42EntryGvOut 34 s2Step42EntryGvFresh [] [] []
    (growRow 771 s2Step42EntryGvFresh) ([]) s2Step42EntryGv_Incoming s2Step42EntryGv_checked h4 s2Step42EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step42EntryFvBefore s2Step42EntryFvAfter s2Step42EntryGvAfter
    s2Step42EntryFvRow s2Step42EntryFvOut 34 s2Step42EntryFvFresh [(s2Step42EntryGvRow,34)] [s2Step42EntryGvFresh] [s2Step42EntryGvOut]
    (growRow 770 s2Step42EntryFvFresh) ((growRow 771 s2Step42EntryGvFresh ++ [])) s2Step42EntryFv_Incoming s2Step42EntryFv_checked h3 s2Step42EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step42EntryGBefore s2Step42EntryGAfter s2Step42EntryGvAfter
    s2Step42EntryGRow s2Step42EntryGOut 248 s2Step42EntryGFresh [(s2Step42EntryFvRow,34),(s2Step42EntryGvRow,34)] [s2Step42EntryFvFresh,s2Step42EntryGvFresh] [s2Step42EntryFvOut,s2Step42EntryGvOut]
    (growRow 769 s2Step42EntryGFresh) ((growRow 770 s2Step42EntryFvFresh ++ (growRow 771 s2Step42EntryGvFresh ++ []))) s2Step42EntryG_Incoming s2Step42EntryG_checked h2 s2Step42EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step42EntryFBefore s2Step42EntryFAfter s2Step42EntryGvAfter
    s2Step42EntryFRow s2Step42EntryFOut 248 s2Step42EntryFFresh [(s2Step42EntryGRow,248),(s2Step42EntryFvRow,34),(s2Step42EntryGvRow,34)] [s2Step42EntryGFresh,s2Step42EntryFvFresh,s2Step42EntryGvFresh] [s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut]
    (growRow 768 s2Step42EntryFFresh) ((growRow 769 s2Step42EntryGFresh ++ (growRow 770 s2Step42EntryFvFresh ++ (growRow 771 s2Step42EntryGvFresh ++ [])))) s2Step42EntryF_Incoming s2Step42EntryF_checked h1 s2Step42EntryF_Outgoing
  exact h0
theorem s2Step42EntryBank_checked : compileHmrBankResizeLog .entry s2Step42EntryFBefore ⟨s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow⟩ ⟨248,248,34,34⟩ [s2Step42EntryFFresh,s2Step42EntryGFresh,s2Step42EntryFvFresh,s2Step42EntryGvFresh]=
    some (s2Step42EntryGvAfter,⟨s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut⟩,(growRow 768 s2Step42EntryFFresh ++ (growRow 769 s2Step42EntryGFresh ++ (growRow 770 s2Step42EntryFvFresh ++ (growRow 771 s2Step42EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step42EntryBank_rows]
  rfl
def s2Step43EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758],768⟩
def s2Step43EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],769⟩
def s2Step43EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791],770⟩
def s2Step43EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
theorem s2Step43EntryBank_incomingDistinct : ([s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43EntryBank_outgoingOwned : rowsOwned s2Step43EntryGvAfter [s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step43EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43EntryF_Incoming : rowsOwned s2Step43EntryFBefore [s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow] 0 s2Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43EntryF_Outgoing : rowsOwned s2Step43EntryGvAfter [s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] :=
  hmrRows_owned_drop s2Step43EntryGvAfter [s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] 0 s2Step43EntryBank_outgoingOwned
theorem s2Step43EntryG_Incoming : rowsOwned s2Step43EntryGBefore [s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow] 1 s2Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43EntryG_Outgoing : rowsOwned s2Step43EntryGvAfter [s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] :=
  hmrRows_owned_drop s2Step43EntryGvAfter [s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] 1 s2Step43EntryBank_outgoingOwned
theorem s2Step43EntryFv_Incoming : rowsOwned s2Step43EntryFvBefore [s2Step43EntryFvRow,s2Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow] 2 s2Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43EntryFv_Outgoing : rowsOwned s2Step43EntryGvAfter [s2Step43EntryFvOut,s2Step43EntryGvOut] :=
  hmrRows_owned_drop s2Step43EntryGvAfter [s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] 2 s2Step43EntryBank_outgoingOwned
theorem s2Step43EntryGv_Incoming : rowsOwned s2Step43EntryGvBefore [s2Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow] 3 s2Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43EntryGv_Outgoing : rowsOwned s2Step43EntryGvAfter [s2Step43EntryGvOut] :=
  hmrRows_owned_drop s2Step43EntryGvAfter [s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut] 3 s2Step43EntryBank_outgoingOwned
theorem s2Step43EntryBank_rows : planWindowRowsLog s2Step43EntryFBefore [(s2Step43EntryFRow,247),(s2Step43EntryGRow,247),(s2Step43EntryFvRow,35),(s2Step43EntryGvRow,35)] [s2Step43EntryFFresh,s2Step43EntryGFresh,s2Step43EntryFvFresh,s2Step43EntryGvFresh]=
    some (s2Step43EntryGvAfter,[s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut],(growRow 768 s2Step43EntryFFresh ++ (growRow 769 s2Step43EntryGFresh ++ (growRow 770 s2Step43EntryFvFresh ++ (growRow 771 s2Step43EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step43EntryGvAfter [] []=some (s2Step43EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step43EntryGvBefore s2Step43EntryGvAfter s2Step43EntryGvAfter
    s2Step43EntryGvRow s2Step43EntryGvOut 35 s2Step43EntryGvFresh [] [] []
    (growRow 771 s2Step43EntryGvFresh) ([]) s2Step43EntryGv_Incoming s2Step43EntryGv_checked h4 s2Step43EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step43EntryFvBefore s2Step43EntryFvAfter s2Step43EntryGvAfter
    s2Step43EntryFvRow s2Step43EntryFvOut 35 s2Step43EntryFvFresh [(s2Step43EntryGvRow,35)] [s2Step43EntryGvFresh] [s2Step43EntryGvOut]
    (growRow 770 s2Step43EntryFvFresh) ((growRow 771 s2Step43EntryGvFresh ++ [])) s2Step43EntryFv_Incoming s2Step43EntryFv_checked h3 s2Step43EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step43EntryGBefore s2Step43EntryGAfter s2Step43EntryGvAfter
    s2Step43EntryGRow s2Step43EntryGOut 247 s2Step43EntryGFresh [(s2Step43EntryFvRow,35),(s2Step43EntryGvRow,35)] [s2Step43EntryFvFresh,s2Step43EntryGvFresh] [s2Step43EntryFvOut,s2Step43EntryGvOut]
    (growRow 769 s2Step43EntryGFresh) ((growRow 770 s2Step43EntryFvFresh ++ (growRow 771 s2Step43EntryGvFresh ++ []))) s2Step43EntryG_Incoming s2Step43EntryG_checked h2 s2Step43EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step43EntryFBefore s2Step43EntryFAfter s2Step43EntryGvAfter
    s2Step43EntryFRow s2Step43EntryFOut 247 s2Step43EntryFFresh [(s2Step43EntryGRow,247),(s2Step43EntryFvRow,35),(s2Step43EntryGvRow,35)] [s2Step43EntryGFresh,s2Step43EntryFvFresh,s2Step43EntryGvFresh] [s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut]
    (growRow 768 s2Step43EntryFFresh) ((growRow 769 s2Step43EntryGFresh ++ (growRow 770 s2Step43EntryFvFresh ++ (growRow 771 s2Step43EntryGvFresh ++ [])))) s2Step43EntryF_Incoming s2Step43EntryF_checked h1 s2Step43EntryF_Outgoing
  exact h0
theorem s2Step43EntryBank_checked : compileHmrBankResizeLog .entry s2Step43EntryFBefore ⟨s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow⟩ ⟨247,247,35,35⟩ [s2Step43EntryFFresh,s2Step43EntryGFresh,s2Step43EntryFvFresh,s2Step43EntryGvFresh]=
    some (s2Step43EntryGvAfter,⟨s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut⟩,(growRow 768 s2Step43EntryFFresh ++ (growRow 769 s2Step43EntryGFresh ++ (growRow 770 s2Step43EntryFvFresh ++ (growRow 771 s2Step43EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step43EntryBank_rows]
  rfl
def s2Step44EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step44EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],769⟩
def s2Step44EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩
def s2Step44EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
theorem s2Step44EntryBank_incomingDistinct : ([s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44EntryBank_outgoingOwned : rowsOwned s2Step44EntryGvAfter [s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step44EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44EntryF_Incoming : rowsOwned s2Step44EntryFBefore [s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow] 0 s2Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44EntryF_Outgoing : rowsOwned s2Step44EntryGvAfter [s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] :=
  hmrRows_owned_drop s2Step44EntryGvAfter [s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] 0 s2Step44EntryBank_outgoingOwned
theorem s2Step44EntryG_Incoming : rowsOwned s2Step44EntryGBefore [s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow] 1 s2Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44EntryG_Outgoing : rowsOwned s2Step44EntryGvAfter [s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] :=
  hmrRows_owned_drop s2Step44EntryGvAfter [s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] 1 s2Step44EntryBank_outgoingOwned
theorem s2Step44EntryFv_Incoming : rowsOwned s2Step44EntryFvBefore [s2Step44EntryFvRow,s2Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow] 2 s2Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44EntryFv_Outgoing : rowsOwned s2Step44EntryGvAfter [s2Step44EntryFvOut,s2Step44EntryGvOut] :=
  hmrRows_owned_drop s2Step44EntryGvAfter [s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] 2 s2Step44EntryBank_outgoingOwned
theorem s2Step44EntryGv_Incoming : rowsOwned s2Step44EntryGvBefore [s2Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow] 3 s2Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44EntryGv_Outgoing : rowsOwned s2Step44EntryGvAfter [s2Step44EntryGvOut] :=
  hmrRows_owned_drop s2Step44EntryGvAfter [s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut] 3 s2Step44EntryBank_outgoingOwned
theorem s2Step44EntryBank_rows : planWindowRowsLog s2Step44EntryFBefore [(s2Step44EntryFRow,246),(s2Step44EntryGRow,246),(s2Step44EntryFvRow,35),(s2Step44EntryGvRow,35)] [s2Step44EntryFFresh,s2Step44EntryGFresh,s2Step44EntryFvFresh,s2Step44EntryGvFresh]=
    some (s2Step44EntryGvAfter,[s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut],(growRow 768 s2Step44EntryFFresh ++ (growRow 769 s2Step44EntryGFresh ++ (growRow 770 s2Step44EntryFvFresh ++ (growRow 771 s2Step44EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step44EntryGvAfter [] []=some (s2Step44EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step44EntryGvBefore s2Step44EntryGvAfter s2Step44EntryGvAfter
    s2Step44EntryGvRow s2Step44EntryGvOut 35 s2Step44EntryGvFresh [] [] []
    (growRow 771 s2Step44EntryGvFresh) ([]) s2Step44EntryGv_Incoming s2Step44EntryGv_checked h4 s2Step44EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step44EntryFvBefore s2Step44EntryFvAfter s2Step44EntryGvAfter
    s2Step44EntryFvRow s2Step44EntryFvOut 35 s2Step44EntryFvFresh [(s2Step44EntryGvRow,35)] [s2Step44EntryGvFresh] [s2Step44EntryGvOut]
    (growRow 770 s2Step44EntryFvFresh) ((growRow 771 s2Step44EntryGvFresh ++ [])) s2Step44EntryFv_Incoming s2Step44EntryFv_checked h3 s2Step44EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step44EntryGBefore s2Step44EntryGAfter s2Step44EntryGvAfter
    s2Step44EntryGRow s2Step44EntryGOut 246 s2Step44EntryGFresh [(s2Step44EntryFvRow,35),(s2Step44EntryGvRow,35)] [s2Step44EntryFvFresh,s2Step44EntryGvFresh] [s2Step44EntryFvOut,s2Step44EntryGvOut]
    (growRow 769 s2Step44EntryGFresh) ((growRow 770 s2Step44EntryFvFresh ++ (growRow 771 s2Step44EntryGvFresh ++ []))) s2Step44EntryG_Incoming s2Step44EntryG_checked h2 s2Step44EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step44EntryFBefore s2Step44EntryFAfter s2Step44EntryGvAfter
    s2Step44EntryFRow s2Step44EntryFOut 246 s2Step44EntryFFresh [(s2Step44EntryGRow,246),(s2Step44EntryFvRow,35),(s2Step44EntryGvRow,35)] [s2Step44EntryGFresh,s2Step44EntryFvFresh,s2Step44EntryGvFresh] [s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut]
    (growRow 768 s2Step44EntryFFresh) ((growRow 769 s2Step44EntryGFresh ++ (growRow 770 s2Step44EntryFvFresh ++ (growRow 771 s2Step44EntryGvFresh ++ [])))) s2Step44EntryF_Incoming s2Step44EntryF_checked h1 s2Step44EntryF_Outgoing
  exact h0
theorem s2Step44EntryBank_checked : compileHmrBankResizeLog .entry s2Step44EntryFBefore ⟨s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow⟩ ⟨246,246,35,35⟩ [s2Step44EntryFFresh,s2Step44EntryGFresh,s2Step44EntryFvFresh,s2Step44EntryGvFresh]=
    some (s2Step44EntryGvAfter,⟨s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut⟩,(growRow 768 s2Step44EntryFFresh ++ (growRow 769 s2Step44EntryGFresh ++ (growRow 770 s2Step44EntryFvFresh ++ (growRow 771 s2Step44EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step44EntryBank_rows]
  rfl
def s2Step45EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step45EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801],769⟩
def s2Step45EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩
def s2Step45EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
theorem s2Step45EntryBank_incomingDistinct : ([s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45EntryBank_outgoingOwned : rowsOwned s2Step45EntryGvAfter [s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step45EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45EntryF_Incoming : rowsOwned s2Step45EntryFBefore [s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow] 0 s2Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45EntryF_Outgoing : rowsOwned s2Step45EntryGvAfter [s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] :=
  hmrRows_owned_drop s2Step45EntryGvAfter [s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] 0 s2Step45EntryBank_outgoingOwned
theorem s2Step45EntryG_Incoming : rowsOwned s2Step45EntryGBefore [s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow] 1 s2Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45EntryG_Outgoing : rowsOwned s2Step45EntryGvAfter [s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] :=
  hmrRows_owned_drop s2Step45EntryGvAfter [s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] 1 s2Step45EntryBank_outgoingOwned
theorem s2Step45EntryFv_Incoming : rowsOwned s2Step45EntryFvBefore [s2Step45EntryFvRow,s2Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow] 2 s2Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45EntryFv_Outgoing : rowsOwned s2Step45EntryGvAfter [s2Step45EntryFvOut,s2Step45EntryGvOut] :=
  hmrRows_owned_drop s2Step45EntryGvAfter [s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] 2 s2Step45EntryBank_outgoingOwned
theorem s2Step45EntryGv_Incoming : rowsOwned s2Step45EntryGvBefore [s2Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow] 3 s2Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45EntryGv_Outgoing : rowsOwned s2Step45EntryGvAfter [s2Step45EntryGvOut] :=
  hmrRows_owned_drop s2Step45EntryGvAfter [s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut] 3 s2Step45EntryBank_outgoingOwned
theorem s2Step45EntryBank_rows : planWindowRowsLog s2Step45EntryFBefore [(s2Step45EntryFRow,246),(s2Step45EntryGRow,246),(s2Step45EntryFvRow,35),(s2Step45EntryGvRow,35)] [s2Step45EntryFFresh,s2Step45EntryGFresh,s2Step45EntryFvFresh,s2Step45EntryGvFresh]=
    some (s2Step45EntryGvAfter,[s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut],(growRow 768 s2Step45EntryFFresh ++ (growRow 769 s2Step45EntryGFresh ++ (growRow 770 s2Step45EntryFvFresh ++ (growRow 771 s2Step45EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step45EntryGvAfter [] []=some (s2Step45EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step45EntryGvBefore s2Step45EntryGvAfter s2Step45EntryGvAfter
    s2Step45EntryGvRow s2Step45EntryGvOut 35 s2Step45EntryGvFresh [] [] []
    (growRow 771 s2Step45EntryGvFresh) ([]) s2Step45EntryGv_Incoming s2Step45EntryGv_checked h4 s2Step45EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step45EntryFvBefore s2Step45EntryFvAfter s2Step45EntryGvAfter
    s2Step45EntryFvRow s2Step45EntryFvOut 35 s2Step45EntryFvFresh [(s2Step45EntryGvRow,35)] [s2Step45EntryGvFresh] [s2Step45EntryGvOut]
    (growRow 770 s2Step45EntryFvFresh) ((growRow 771 s2Step45EntryGvFresh ++ [])) s2Step45EntryFv_Incoming s2Step45EntryFv_checked h3 s2Step45EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step45EntryGBefore s2Step45EntryGAfter s2Step45EntryGvAfter
    s2Step45EntryGRow s2Step45EntryGOut 246 s2Step45EntryGFresh [(s2Step45EntryFvRow,35),(s2Step45EntryGvRow,35)] [s2Step45EntryFvFresh,s2Step45EntryGvFresh] [s2Step45EntryFvOut,s2Step45EntryGvOut]
    (growRow 769 s2Step45EntryGFresh) ((growRow 770 s2Step45EntryFvFresh ++ (growRow 771 s2Step45EntryGvFresh ++ []))) s2Step45EntryG_Incoming s2Step45EntryG_checked h2 s2Step45EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step45EntryFBefore s2Step45EntryFAfter s2Step45EntryGvAfter
    s2Step45EntryFRow s2Step45EntryFOut 246 s2Step45EntryFFresh [(s2Step45EntryGRow,246),(s2Step45EntryFvRow,35),(s2Step45EntryGvRow,35)] [s2Step45EntryGFresh,s2Step45EntryFvFresh,s2Step45EntryGvFresh] [s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut]
    (growRow 768 s2Step45EntryFFresh) ((growRow 769 s2Step45EntryGFresh ++ (growRow 770 s2Step45EntryFvFresh ++ (growRow 771 s2Step45EntryGvFresh ++ [])))) s2Step45EntryF_Incoming s2Step45EntryF_checked h1 s2Step45EntryF_Outgoing
  exact h0
theorem s2Step45EntryBank_checked : compileHmrBankResizeLog .entry s2Step45EntryFBefore ⟨s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow⟩ ⟨246,246,35,35⟩ [s2Step45EntryFFresh,s2Step45EntryGFresh,s2Step45EntryFvFresh,s2Step45EntryGvFresh]=
    some (s2Step45EntryGvAfter,⟨s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut⟩,(growRow 768 s2Step45EntryFFresh ++ (growRow 769 s2Step45EntryGFresh ++ (growRow 770 s2Step45EntryFvFresh ++ (growRow 771 s2Step45EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step45EntryBank_rows]
  rfl
def s2Step46EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756],768⟩
def s2Step46EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩
def s2Step46EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step46EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩
theorem s2Step46EntryBank_incomingDistinct : ([s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46EntryBank_outgoingOwned : rowsOwned s2Step46EntryGvAfter [s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step46EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46EntryF_Incoming : rowsOwned s2Step46EntryFBefore [s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow] 0 s2Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46EntryF_Outgoing : rowsOwned s2Step46EntryGvAfter [s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] :=
  hmrRows_owned_drop s2Step46EntryGvAfter [s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] 0 s2Step46EntryBank_outgoingOwned
theorem s2Step46EntryG_Incoming : rowsOwned s2Step46EntryGBefore [s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow] 1 s2Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46EntryG_Outgoing : rowsOwned s2Step46EntryGvAfter [s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] :=
  hmrRows_owned_drop s2Step46EntryGvAfter [s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] 1 s2Step46EntryBank_outgoingOwned
theorem s2Step46EntryFv_Incoming : rowsOwned s2Step46EntryFvBefore [s2Step46EntryFvRow,s2Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow] 2 s2Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46EntryFv_Outgoing : rowsOwned s2Step46EntryGvAfter [s2Step46EntryFvOut,s2Step46EntryGvOut] :=
  hmrRows_owned_drop s2Step46EntryGvAfter [s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] 2 s2Step46EntryBank_outgoingOwned
theorem s2Step46EntryGv_Incoming : rowsOwned s2Step46EntryGvBefore [s2Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow] 3 s2Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46EntryGv_Outgoing : rowsOwned s2Step46EntryGvAfter [s2Step46EntryGvOut] :=
  hmrRows_owned_drop s2Step46EntryGvAfter [s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut] 3 s2Step46EntryBank_outgoingOwned
theorem s2Step46EntryBank_rows : planWindowRowsLog s2Step46EntryFBefore [(s2Step46EntryFRow,245),(s2Step46EntryGRow,245),(s2Step46EntryFvRow,36),(s2Step46EntryGvRow,36)] [s2Step46EntryFFresh,s2Step46EntryGFresh,s2Step46EntryFvFresh,s2Step46EntryGvFresh]=
    some (s2Step46EntryGvAfter,[s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut],(growRow 768 s2Step46EntryFFresh ++ (growRow 769 s2Step46EntryGFresh ++ (growRow 770 s2Step46EntryFvFresh ++ (growRow 771 s2Step46EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step46EntryGvAfter [] []=some (s2Step46EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step46EntryGvBefore s2Step46EntryGvAfter s2Step46EntryGvAfter
    s2Step46EntryGvRow s2Step46EntryGvOut 36 s2Step46EntryGvFresh [] [] []
    (growRow 771 s2Step46EntryGvFresh) ([]) s2Step46EntryGv_Incoming s2Step46EntryGv_checked h4 s2Step46EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step46EntryFvBefore s2Step46EntryFvAfter s2Step46EntryGvAfter
    s2Step46EntryFvRow s2Step46EntryFvOut 36 s2Step46EntryFvFresh [(s2Step46EntryGvRow,36)] [s2Step46EntryGvFresh] [s2Step46EntryGvOut]
    (growRow 770 s2Step46EntryFvFresh) ((growRow 771 s2Step46EntryGvFresh ++ [])) s2Step46EntryFv_Incoming s2Step46EntryFv_checked h3 s2Step46EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step46EntryGBefore s2Step46EntryGAfter s2Step46EntryGvAfter
    s2Step46EntryGRow s2Step46EntryGOut 245 s2Step46EntryGFresh [(s2Step46EntryFvRow,36),(s2Step46EntryGvRow,36)] [s2Step46EntryFvFresh,s2Step46EntryGvFresh] [s2Step46EntryFvOut,s2Step46EntryGvOut]
    (growRow 769 s2Step46EntryGFresh) ((growRow 770 s2Step46EntryFvFresh ++ (growRow 771 s2Step46EntryGvFresh ++ []))) s2Step46EntryG_Incoming s2Step46EntryG_checked h2 s2Step46EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step46EntryFBefore s2Step46EntryFAfter s2Step46EntryGvAfter
    s2Step46EntryFRow s2Step46EntryFOut 245 s2Step46EntryFFresh [(s2Step46EntryGRow,245),(s2Step46EntryFvRow,36),(s2Step46EntryGvRow,36)] [s2Step46EntryGFresh,s2Step46EntryFvFresh,s2Step46EntryGvFresh] [s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut]
    (growRow 768 s2Step46EntryFFresh) ((growRow 769 s2Step46EntryGFresh ++ (growRow 770 s2Step46EntryFvFresh ++ (growRow 771 s2Step46EntryGvFresh ++ [])))) s2Step46EntryF_Incoming s2Step46EntryF_checked h1 s2Step46EntryF_Outgoing
  exact h0
theorem s2Step46EntryBank_checked : compileHmrBankResizeLog .entry s2Step46EntryFBefore ⟨s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow⟩ ⟨245,245,36,36⟩ [s2Step46EntryFFresh,s2Step46EntryGFresh,s2Step46EntryFvFresh,s2Step46EntryGvFresh]=
    some (s2Step46EntryGvAfter,⟨s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut⟩,(growRow 768 s2Step46EntryFFresh ++ (growRow 769 s2Step46EntryGFresh ++ (growRow 770 s2Step46EntryFvFresh ++ (growRow 771 s2Step46EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step46EntryBank_rows]
  rfl
def s2Step47EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step47EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step47EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step47EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩
theorem s2Step47EntryBank_incomingDistinct : ([s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47EntryBank_outgoingOwned : rowsOwned s2Step47EntryGvAfter [s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step47EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47EntryF_Incoming : rowsOwned s2Step47EntryFBefore [s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow] 0 s2Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47EntryF_Outgoing : rowsOwned s2Step47EntryGvAfter [s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] :=
  hmrRows_owned_drop s2Step47EntryGvAfter [s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] 0 s2Step47EntryBank_outgoingOwned
theorem s2Step47EntryG_Incoming : rowsOwned s2Step47EntryGBefore [s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow] 1 s2Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47EntryG_Outgoing : rowsOwned s2Step47EntryGvAfter [s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] :=
  hmrRows_owned_drop s2Step47EntryGvAfter [s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] 1 s2Step47EntryBank_outgoingOwned
theorem s2Step47EntryFv_Incoming : rowsOwned s2Step47EntryFvBefore [s2Step47EntryFvRow,s2Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow] 2 s2Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47EntryFv_Outgoing : rowsOwned s2Step47EntryGvAfter [s2Step47EntryFvOut,s2Step47EntryGvOut] :=
  hmrRows_owned_drop s2Step47EntryGvAfter [s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] 2 s2Step47EntryBank_outgoingOwned
theorem s2Step47EntryGv_Incoming : rowsOwned s2Step47EntryGvBefore [s2Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow] 3 s2Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47EntryGv_Outgoing : rowsOwned s2Step47EntryGvAfter [s2Step47EntryGvOut] :=
  hmrRows_owned_drop s2Step47EntryGvAfter [s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut] 3 s2Step47EntryBank_outgoingOwned
theorem s2Step47EntryBank_rows : planWindowRowsLog s2Step47EntryFBefore [(s2Step47EntryFRow,244),(s2Step47EntryGRow,244),(s2Step47EntryFvRow,36),(s2Step47EntryGvRow,36)] [s2Step47EntryFFresh,s2Step47EntryGFresh,s2Step47EntryFvFresh,s2Step47EntryGvFresh]=
    some (s2Step47EntryGvAfter,[s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut],(growRow 768 s2Step47EntryFFresh ++ (growRow 769 s2Step47EntryGFresh ++ (growRow 770 s2Step47EntryFvFresh ++ (growRow 771 s2Step47EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step47EntryGvAfter [] []=some (s2Step47EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step47EntryGvBefore s2Step47EntryGvAfter s2Step47EntryGvAfter
    s2Step47EntryGvRow s2Step47EntryGvOut 36 s2Step47EntryGvFresh [] [] []
    (growRow 771 s2Step47EntryGvFresh) ([]) s2Step47EntryGv_Incoming s2Step47EntryGv_checked h4 s2Step47EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step47EntryFvBefore s2Step47EntryFvAfter s2Step47EntryGvAfter
    s2Step47EntryFvRow s2Step47EntryFvOut 36 s2Step47EntryFvFresh [(s2Step47EntryGvRow,36)] [s2Step47EntryGvFresh] [s2Step47EntryGvOut]
    (growRow 770 s2Step47EntryFvFresh) ((growRow 771 s2Step47EntryGvFresh ++ [])) s2Step47EntryFv_Incoming s2Step47EntryFv_checked h3 s2Step47EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step47EntryGBefore s2Step47EntryGAfter s2Step47EntryGvAfter
    s2Step47EntryGRow s2Step47EntryGOut 244 s2Step47EntryGFresh [(s2Step47EntryFvRow,36),(s2Step47EntryGvRow,36)] [s2Step47EntryFvFresh,s2Step47EntryGvFresh] [s2Step47EntryFvOut,s2Step47EntryGvOut]
    (growRow 769 s2Step47EntryGFresh) ((growRow 770 s2Step47EntryFvFresh ++ (growRow 771 s2Step47EntryGvFresh ++ []))) s2Step47EntryG_Incoming s2Step47EntryG_checked h2 s2Step47EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step47EntryFBefore s2Step47EntryFAfter s2Step47EntryGvAfter
    s2Step47EntryFRow s2Step47EntryFOut 244 s2Step47EntryFFresh [(s2Step47EntryGRow,244),(s2Step47EntryFvRow,36),(s2Step47EntryGvRow,36)] [s2Step47EntryGFresh,s2Step47EntryFvFresh,s2Step47EntryGvFresh] [s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut]
    (growRow 768 s2Step47EntryFFresh) ((growRow 769 s2Step47EntryGFresh ++ (growRow 770 s2Step47EntryFvFresh ++ (growRow 771 s2Step47EntryGvFresh ++ [])))) s2Step47EntryF_Incoming s2Step47EntryF_checked h1 s2Step47EntryF_Outgoing
  exact h0
theorem s2Step47EntryBank_checked : compileHmrBankResizeLog .entry s2Step47EntryFBefore ⟨s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow⟩ ⟨244,244,36,36⟩ [s2Step47EntryFFresh,s2Step47EntryGFresh,s2Step47EntryFvFresh,s2Step47EntryGvFresh]=
    some (s2Step47EntryGvAfter,⟨s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut⟩,(growRow 768 s2Step47EntryFFresh ++ (growRow 769 s2Step47EntryGFresh ++ (growRow 770 s2Step47EntryFvFresh ++ (growRow 771 s2Step47EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step47EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
