import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step16HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step16HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780, 819],771⟩
def s2Step16HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩
theorem s2Step16HeadBank_incomingDistinct : ([s2Step16HeadGRow,s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16HeadBank_outgoingOwned : rowsOwned s2Step16HeadFvAfter [s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step16HeadFvAfter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16HeadG_Incoming : rowsOwned s2Step16HeadGBefore [s2Step16HeadGRow,s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16HeadGRow,s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow] 0 s2Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16HeadG_Outgoing : rowsOwned s2Step16HeadFvAfter [s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] :=
  hmrRows_owned_drop s2Step16HeadFvAfter [s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] 0 s2Step16HeadBank_outgoingOwned
theorem s2Step16HeadF_Incoming : rowsOwned s2Step16HeadFBefore [s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16HeadGRow,s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow] 1 s2Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16HeadF_Outgoing : rowsOwned s2Step16HeadFvAfter [s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] :=
  hmrRows_owned_drop s2Step16HeadFvAfter [s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] 1 s2Step16HeadBank_outgoingOwned
theorem s2Step16HeadGv_Incoming : rowsOwned s2Step16HeadGvBefore [s2Step16HeadGvRow,s2Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16HeadGRow,s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow] 2 s2Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16HeadGvBefore (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16HeadGv_Outgoing : rowsOwned s2Step16HeadFvAfter [s2Step16HeadGvOut,s2Step16HeadFvOut] :=
  hmrRows_owned_drop s2Step16HeadFvAfter [s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] 2 s2Step16HeadBank_outgoingOwned
theorem s2Step16HeadFv_Incoming : rowsOwned s2Step16HeadFvBefore [s2Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16HeadGRow,s2Step16HeadFRow,s2Step16HeadGvRow,s2Step16HeadFvRow] 3 s2Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16HeadFvBefore (fun q => (0≤q ∧ q<820) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16HeadFv_Outgoing : rowsOwned s2Step16HeadFvAfter [s2Step16HeadFvOut] :=
  hmrRows_owned_drop s2Step16HeadFvAfter [s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut] 3 s2Step16HeadBank_outgoingOwned
theorem s2Step16HeadBank_rows : planWindowRowsLog s2Step16HeadGBefore [(s2Step16HeadGRow,257),(s2Step16HeadFRow,257),(s2Step16HeadGvRow,18),(s2Step16HeadFvRow,18)] [s2Step16HeadGFresh,s2Step16HeadFFresh,s2Step16HeadGvFresh,s2Step16HeadFvFresh]=
    some (s2Step16HeadFvAfter,[s2Step16HeadGOut,s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut],(growRow 769 s2Step16HeadGFresh ++ (growRow 768 s2Step16HeadFFresh ++ (growRow 771 s2Step16HeadGvFresh ++ (growRow 770 s2Step16HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step16HeadFvAfter [] []=some (s2Step16HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step16HeadFvBefore s2Step16HeadFvAfter s2Step16HeadFvAfter
    s2Step16HeadFvRow s2Step16HeadFvOut 18 s2Step16HeadFvFresh [] [] []
    (growRow 770 s2Step16HeadFvFresh) ([]) s2Step16HeadFv_Incoming s2Step16HeadFv_checked h4 s2Step16HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step16HeadGvBefore s2Step16HeadGvAfter s2Step16HeadFvAfter
    s2Step16HeadGvRow s2Step16HeadGvOut 18 s2Step16HeadGvFresh [(s2Step16HeadFvRow,18)] [s2Step16HeadFvFresh] [s2Step16HeadFvOut]
    (growRow 771 s2Step16HeadGvFresh) ((growRow 770 s2Step16HeadFvFresh ++ [])) s2Step16HeadGv_Incoming s2Step16HeadGv_checked h3 s2Step16HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step16HeadFBefore s2Step16HeadFAfter s2Step16HeadFvAfter
    s2Step16HeadFRow s2Step16HeadFOut 257 s2Step16HeadFFresh [(s2Step16HeadGvRow,18),(s2Step16HeadFvRow,18)] [s2Step16HeadGvFresh,s2Step16HeadFvFresh] [s2Step16HeadGvOut,s2Step16HeadFvOut]
    (growRow 768 s2Step16HeadFFresh) ((growRow 771 s2Step16HeadGvFresh ++ (growRow 770 s2Step16HeadFvFresh ++ []))) s2Step16HeadF_Incoming s2Step16HeadF_checked h2 s2Step16HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step16HeadGBefore s2Step16HeadGAfter s2Step16HeadFvAfter
    s2Step16HeadGRow s2Step16HeadGOut 257 s2Step16HeadGFresh [(s2Step16HeadFRow,257),(s2Step16HeadGvRow,18),(s2Step16HeadFvRow,18)] [s2Step16HeadFFresh,s2Step16HeadGvFresh,s2Step16HeadFvFresh] [s2Step16HeadFOut,s2Step16HeadGvOut,s2Step16HeadFvOut]
    (growRow 769 s2Step16HeadGFresh) ((growRow 768 s2Step16HeadFFresh ++ (growRow 771 s2Step16HeadGvFresh ++ (growRow 770 s2Step16HeadFvFresh ++ [])))) s2Step16HeadG_Incoming s2Step16HeadG_checked h1 s2Step16HeadG_Outgoing
  exact h0
theorem s2Step16HeadBank_checked : compileHmrBankResizeLog .headroom s2Step16HeadGBefore ⟨s2Step16HeadFRow,s2Step16HeadGRow,s2Step16HeadFvRow,s2Step16HeadGvRow⟩ ⟨257,257,18,18⟩ [s2Step16HeadGFresh,s2Step16HeadFFresh,s2Step16HeadGvFresh,s2Step16HeadFvFresh]=
    some (s2Step16HeadFvAfter,⟨s2Step16HeadFOut,s2Step16HeadGOut,s2Step16HeadFvOut,s2Step16HeadGvOut⟩,(growRow 769 s2Step16HeadGFresh ++ (growRow 768 s2Step16HeadFFresh ++ (growRow 771 s2Step16HeadGvFresh ++ (growRow 770 s2Step16HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step16HeadBank_rows]
  rfl
def s2Step17HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step17HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step17HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780, 821],771⟩
def s2Step17HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩
theorem s2Step17HeadBank_incomingDistinct : ([s2Step17HeadGRow,s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17HeadBank_outgoingOwned : rowsOwned s2Step17HeadFvAfter [s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step17HeadFvAfter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17HeadG_Incoming : rowsOwned s2Step17HeadGBefore [s2Step17HeadGRow,s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17HeadGRow,s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow] 0 s2Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17HeadG_Outgoing : rowsOwned s2Step17HeadFvAfter [s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] :=
  hmrRows_owned_drop s2Step17HeadFvAfter [s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] 0 s2Step17HeadBank_outgoingOwned
theorem s2Step17HeadF_Incoming : rowsOwned s2Step17HeadFBefore [s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17HeadGRow,s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow] 1 s2Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17HeadF_Outgoing : rowsOwned s2Step17HeadFvAfter [s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] :=
  hmrRows_owned_drop s2Step17HeadFvAfter [s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] 1 s2Step17HeadBank_outgoingOwned
theorem s2Step17HeadGv_Incoming : rowsOwned s2Step17HeadGvBefore [s2Step17HeadGvRow,s2Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17HeadGRow,s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow] 2 s2Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17HeadGvBefore (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17HeadGv_Outgoing : rowsOwned s2Step17HeadFvAfter [s2Step17HeadGvOut,s2Step17HeadFvOut] :=
  hmrRows_owned_drop s2Step17HeadFvAfter [s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] 2 s2Step17HeadBank_outgoingOwned
theorem s2Step17HeadFv_Incoming : rowsOwned s2Step17HeadFvBefore [s2Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17HeadGRow,s2Step17HeadFRow,s2Step17HeadGvRow,s2Step17HeadFvRow] 3 s2Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17HeadFvBefore (fun q => (0≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17HeadFv_Outgoing : rowsOwned s2Step17HeadFvAfter [s2Step17HeadFvOut] :=
  hmrRows_owned_drop s2Step17HeadFvAfter [s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut] 3 s2Step17HeadBank_outgoingOwned
theorem s2Step17HeadBank_rows : planWindowRowsLog s2Step17HeadGBefore [(s2Step17HeadGRow,257),(s2Step17HeadFRow,257),(s2Step17HeadGvRow,19),(s2Step17HeadFvRow,19)] [s2Step17HeadGFresh,s2Step17HeadFFresh,s2Step17HeadGvFresh,s2Step17HeadFvFresh]=
    some (s2Step17HeadFvAfter,[s2Step17HeadGOut,s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut],(growRow 769 s2Step17HeadGFresh ++ (growRow 768 s2Step17HeadFFresh ++ (growRow 771 s2Step17HeadGvFresh ++ (growRow 770 s2Step17HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step17HeadFvAfter [] []=some (s2Step17HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step17HeadFvBefore s2Step17HeadFvAfter s2Step17HeadFvAfter
    s2Step17HeadFvRow s2Step17HeadFvOut 19 s2Step17HeadFvFresh [] [] []
    (growRow 770 s2Step17HeadFvFresh) ([]) s2Step17HeadFv_Incoming s2Step17HeadFv_checked h4 s2Step17HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step17HeadGvBefore s2Step17HeadGvAfter s2Step17HeadFvAfter
    s2Step17HeadGvRow s2Step17HeadGvOut 19 s2Step17HeadGvFresh [(s2Step17HeadFvRow,19)] [s2Step17HeadFvFresh] [s2Step17HeadFvOut]
    (growRow 771 s2Step17HeadGvFresh) ((growRow 770 s2Step17HeadFvFresh ++ [])) s2Step17HeadGv_Incoming s2Step17HeadGv_checked h3 s2Step17HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step17HeadFBefore s2Step17HeadFAfter s2Step17HeadFvAfter
    s2Step17HeadFRow s2Step17HeadFOut 257 s2Step17HeadFFresh [(s2Step17HeadGvRow,19),(s2Step17HeadFvRow,19)] [s2Step17HeadGvFresh,s2Step17HeadFvFresh] [s2Step17HeadGvOut,s2Step17HeadFvOut]
    (growRow 768 s2Step17HeadFFresh) ((growRow 771 s2Step17HeadGvFresh ++ (growRow 770 s2Step17HeadFvFresh ++ []))) s2Step17HeadF_Incoming s2Step17HeadF_checked h2 s2Step17HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step17HeadGBefore s2Step17HeadGAfter s2Step17HeadFvAfter
    s2Step17HeadGRow s2Step17HeadGOut 257 s2Step17HeadGFresh [(s2Step17HeadFRow,257),(s2Step17HeadGvRow,19),(s2Step17HeadFvRow,19)] [s2Step17HeadFFresh,s2Step17HeadGvFresh,s2Step17HeadFvFresh] [s2Step17HeadFOut,s2Step17HeadGvOut,s2Step17HeadFvOut]
    (growRow 769 s2Step17HeadGFresh) ((growRow 768 s2Step17HeadFFresh ++ (growRow 771 s2Step17HeadGvFresh ++ (growRow 770 s2Step17HeadFvFresh ++ [])))) s2Step17HeadG_Incoming s2Step17HeadG_checked h1 s2Step17HeadG_Outgoing
  exact h0
theorem s2Step17HeadBank_checked : compileHmrBankResizeLog .headroom s2Step17HeadGBefore ⟨s2Step17HeadFRow,s2Step17HeadGRow,s2Step17HeadFvRow,s2Step17HeadGvRow⟩ ⟨257,257,19,19⟩ [s2Step17HeadGFresh,s2Step17HeadFFresh,s2Step17HeadGvFresh,s2Step17HeadFvFresh]=
    some (s2Step17HeadFvAfter,⟨s2Step17HeadFOut,s2Step17HeadGOut,s2Step17HeadFvOut,s2Step17HeadGvOut⟩,(growRow 769 s2Step17HeadGFresh ++ (growRow 768 s2Step17HeadFFresh ++ (growRow 771 s2Step17HeadGvFresh ++ (growRow 770 s2Step17HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step17HeadBank_rows]
  rfl
def s2Step18HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step18HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step18HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780, 824],771⟩
def s2Step18HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩
theorem s2Step18HeadBank_incomingDistinct : ([s2Step18HeadGRow,s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18HeadBank_outgoingOwned : rowsOwned s2Step18HeadFvAfter [s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step18HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18HeadG_Incoming : rowsOwned s2Step18HeadGBefore [s2Step18HeadGRow,s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18HeadGRow,s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow] 0 s2Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18HeadG_Outgoing : rowsOwned s2Step18HeadFvAfter [s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] :=
  hmrRows_owned_drop s2Step18HeadFvAfter [s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] 0 s2Step18HeadBank_outgoingOwned
theorem s2Step18HeadF_Incoming : rowsOwned s2Step18HeadFBefore [s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18HeadGRow,s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow] 1 s2Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18HeadF_Outgoing : rowsOwned s2Step18HeadFvAfter [s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] :=
  hmrRows_owned_drop s2Step18HeadFvAfter [s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] 1 s2Step18HeadBank_outgoingOwned
theorem s2Step18HeadGv_Incoming : rowsOwned s2Step18HeadGvBefore [s2Step18HeadGvRow,s2Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18HeadGRow,s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow] 2 s2Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18HeadGvBefore (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18HeadGv_Outgoing : rowsOwned s2Step18HeadFvAfter [s2Step18HeadGvOut,s2Step18HeadFvOut] :=
  hmrRows_owned_drop s2Step18HeadFvAfter [s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] 2 s2Step18HeadBank_outgoingOwned
theorem s2Step18HeadFv_Incoming : rowsOwned s2Step18HeadFvBefore [s2Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18HeadGRow,s2Step18HeadFRow,s2Step18HeadGvRow,s2Step18HeadFvRow] 3 s2Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18HeadFvBefore (fun q => (0≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18HeadFv_Outgoing : rowsOwned s2Step18HeadFvAfter [s2Step18HeadFvOut] :=
  hmrRows_owned_drop s2Step18HeadFvAfter [s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut] 3 s2Step18HeadBank_outgoingOwned
theorem s2Step18HeadBank_rows : planWindowRowsLog s2Step18HeadGBefore [(s2Step18HeadGRow,257),(s2Step18HeadFRow,257),(s2Step18HeadGvRow,20),(s2Step18HeadFvRow,20)] [s2Step18HeadGFresh,s2Step18HeadFFresh,s2Step18HeadGvFresh,s2Step18HeadFvFresh]=
    some (s2Step18HeadFvAfter,[s2Step18HeadGOut,s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut],(growRow 769 s2Step18HeadGFresh ++ (growRow 768 s2Step18HeadFFresh ++ (growRow 771 s2Step18HeadGvFresh ++ (growRow 770 s2Step18HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step18HeadFvAfter [] []=some (s2Step18HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step18HeadFvBefore s2Step18HeadFvAfter s2Step18HeadFvAfter
    s2Step18HeadFvRow s2Step18HeadFvOut 20 s2Step18HeadFvFresh [] [] []
    (growRow 770 s2Step18HeadFvFresh) ([]) s2Step18HeadFv_Incoming s2Step18HeadFv_checked h4 s2Step18HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step18HeadGvBefore s2Step18HeadGvAfter s2Step18HeadFvAfter
    s2Step18HeadGvRow s2Step18HeadGvOut 20 s2Step18HeadGvFresh [(s2Step18HeadFvRow,20)] [s2Step18HeadFvFresh] [s2Step18HeadFvOut]
    (growRow 771 s2Step18HeadGvFresh) ((growRow 770 s2Step18HeadFvFresh ++ [])) s2Step18HeadGv_Incoming s2Step18HeadGv_checked h3 s2Step18HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step18HeadFBefore s2Step18HeadFAfter s2Step18HeadFvAfter
    s2Step18HeadFRow s2Step18HeadFOut 257 s2Step18HeadFFresh [(s2Step18HeadGvRow,20),(s2Step18HeadFvRow,20)] [s2Step18HeadGvFresh,s2Step18HeadFvFresh] [s2Step18HeadGvOut,s2Step18HeadFvOut]
    (growRow 768 s2Step18HeadFFresh) ((growRow 771 s2Step18HeadGvFresh ++ (growRow 770 s2Step18HeadFvFresh ++ []))) s2Step18HeadF_Incoming s2Step18HeadF_checked h2 s2Step18HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step18HeadGBefore s2Step18HeadGAfter s2Step18HeadFvAfter
    s2Step18HeadGRow s2Step18HeadGOut 257 s2Step18HeadGFresh [(s2Step18HeadFRow,257),(s2Step18HeadGvRow,20),(s2Step18HeadFvRow,20)] [s2Step18HeadFFresh,s2Step18HeadGvFresh,s2Step18HeadFvFresh] [s2Step18HeadFOut,s2Step18HeadGvOut,s2Step18HeadFvOut]
    (growRow 769 s2Step18HeadGFresh) ((growRow 768 s2Step18HeadFFresh ++ (growRow 771 s2Step18HeadGvFresh ++ (growRow 770 s2Step18HeadFvFresh ++ [])))) s2Step18HeadG_Incoming s2Step18HeadG_checked h1 s2Step18HeadG_Outgoing
  exact h0
theorem s2Step18HeadBank_checked : compileHmrBankResizeLog .headroom s2Step18HeadGBefore ⟨s2Step18HeadFRow,s2Step18HeadGRow,s2Step18HeadFvRow,s2Step18HeadGvRow⟩ ⟨257,257,20,20⟩ [s2Step18HeadGFresh,s2Step18HeadFFresh,s2Step18HeadGvFresh,s2Step18HeadFvFresh]=
    some (s2Step18HeadFvAfter,⟨s2Step18HeadFOut,s2Step18HeadGOut,s2Step18HeadFvOut,s2Step18HeadGvOut⟩,(growRow 769 s2Step18HeadGFresh ++ (growRow 768 s2Step18HeadFFresh ++ (growRow 771 s2Step18HeadGvFresh ++ (growRow 770 s2Step18HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step18HeadBank_rows]
  rfl
def s2Step19HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step19HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step19HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780, 826],771⟩
def s2Step19HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩
theorem s2Step19HeadBank_incomingDistinct : ([s2Step19HeadGRow,s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19HeadBank_outgoingOwned : rowsOwned s2Step19HeadFvAfter [s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step19HeadFvAfter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19HeadG_Incoming : rowsOwned s2Step19HeadGBefore [s2Step19HeadGRow,s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19HeadGRow,s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow] 0 s2Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19HeadG_Outgoing : rowsOwned s2Step19HeadFvAfter [s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] :=
  hmrRows_owned_drop s2Step19HeadFvAfter [s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] 0 s2Step19HeadBank_outgoingOwned
theorem s2Step19HeadF_Incoming : rowsOwned s2Step19HeadFBefore [s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19HeadGRow,s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow] 1 s2Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19HeadF_Outgoing : rowsOwned s2Step19HeadFvAfter [s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] :=
  hmrRows_owned_drop s2Step19HeadFvAfter [s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] 1 s2Step19HeadBank_outgoingOwned
theorem s2Step19HeadGv_Incoming : rowsOwned s2Step19HeadGvBefore [s2Step19HeadGvRow,s2Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19HeadGRow,s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow] 2 s2Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19HeadGv_Outgoing : rowsOwned s2Step19HeadFvAfter [s2Step19HeadGvOut,s2Step19HeadFvOut] :=
  hmrRows_owned_drop s2Step19HeadFvAfter [s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] 2 s2Step19HeadBank_outgoingOwned
theorem s2Step19HeadFv_Incoming : rowsOwned s2Step19HeadFvBefore [s2Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19HeadGRow,s2Step19HeadFRow,s2Step19HeadGvRow,s2Step19HeadFvRow] 3 s2Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19HeadFvBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19HeadFv_Outgoing : rowsOwned s2Step19HeadFvAfter [s2Step19HeadFvOut] :=
  hmrRows_owned_drop s2Step19HeadFvAfter [s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut] 3 s2Step19HeadBank_outgoingOwned
theorem s2Step19HeadBank_rows : planWindowRowsLog s2Step19HeadGBefore [(s2Step19HeadGRow,257),(s2Step19HeadFRow,257),(s2Step19HeadGvRow,21),(s2Step19HeadFvRow,21)] [s2Step19HeadGFresh,s2Step19HeadFFresh,s2Step19HeadGvFresh,s2Step19HeadFvFresh]=
    some (s2Step19HeadFvAfter,[s2Step19HeadGOut,s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut],(growRow 769 s2Step19HeadGFresh ++ (growRow 768 s2Step19HeadFFresh ++ (growRow 771 s2Step19HeadGvFresh ++ (growRow 770 s2Step19HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step19HeadFvAfter [] []=some (s2Step19HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step19HeadFvBefore s2Step19HeadFvAfter s2Step19HeadFvAfter
    s2Step19HeadFvRow s2Step19HeadFvOut 21 s2Step19HeadFvFresh [] [] []
    (growRow 770 s2Step19HeadFvFresh) ([]) s2Step19HeadFv_Incoming s2Step19HeadFv_checked h4 s2Step19HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step19HeadGvBefore s2Step19HeadGvAfter s2Step19HeadFvAfter
    s2Step19HeadGvRow s2Step19HeadGvOut 21 s2Step19HeadGvFresh [(s2Step19HeadFvRow,21)] [s2Step19HeadFvFresh] [s2Step19HeadFvOut]
    (growRow 771 s2Step19HeadGvFresh) ((growRow 770 s2Step19HeadFvFresh ++ [])) s2Step19HeadGv_Incoming s2Step19HeadGv_checked h3 s2Step19HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step19HeadFBefore s2Step19HeadFAfter s2Step19HeadFvAfter
    s2Step19HeadFRow s2Step19HeadFOut 257 s2Step19HeadFFresh [(s2Step19HeadGvRow,21),(s2Step19HeadFvRow,21)] [s2Step19HeadGvFresh,s2Step19HeadFvFresh] [s2Step19HeadGvOut,s2Step19HeadFvOut]
    (growRow 768 s2Step19HeadFFresh) ((growRow 771 s2Step19HeadGvFresh ++ (growRow 770 s2Step19HeadFvFresh ++ []))) s2Step19HeadF_Incoming s2Step19HeadF_checked h2 s2Step19HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step19HeadGBefore s2Step19HeadGAfter s2Step19HeadFvAfter
    s2Step19HeadGRow s2Step19HeadGOut 257 s2Step19HeadGFresh [(s2Step19HeadFRow,257),(s2Step19HeadGvRow,21),(s2Step19HeadFvRow,21)] [s2Step19HeadFFresh,s2Step19HeadGvFresh,s2Step19HeadFvFresh] [s2Step19HeadFOut,s2Step19HeadGvOut,s2Step19HeadFvOut]
    (growRow 769 s2Step19HeadGFresh) ((growRow 768 s2Step19HeadFFresh ++ (growRow 771 s2Step19HeadGvFresh ++ (growRow 770 s2Step19HeadFvFresh ++ [])))) s2Step19HeadG_Incoming s2Step19HeadG_checked h1 s2Step19HeadG_Outgoing
  exact h0
theorem s2Step19HeadBank_checked : compileHmrBankResizeLog .headroom s2Step19HeadGBefore ⟨s2Step19HeadFRow,s2Step19HeadGRow,s2Step19HeadFvRow,s2Step19HeadGvRow⟩ ⟨257,257,21,21⟩ [s2Step19HeadGFresh,s2Step19HeadFFresh,s2Step19HeadGvFresh,s2Step19HeadFvFresh]=
    some (s2Step19HeadFvAfter,⟨s2Step19HeadFOut,s2Step19HeadGOut,s2Step19HeadFvOut,s2Step19HeadGvOut⟩,(growRow 769 s2Step19HeadGFresh ++ (growRow 768 s2Step19HeadFFresh ++ (growRow 771 s2Step19HeadGvFresh ++ (growRow 770 s2Step19HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step19HeadBank_rows]
  rfl
def s2Step20HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step20HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step20HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780, 829],771⟩
def s2Step20HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩
theorem s2Step20HeadBank_incomingDistinct : ([s2Step20HeadGRow,s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20HeadBank_outgoingOwned : rowsOwned s2Step20HeadFvAfter [s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step20HeadFvAfter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20HeadG_Incoming : rowsOwned s2Step20HeadGBefore [s2Step20HeadGRow,s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20HeadGRow,s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow] 0 s2Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20HeadG_Outgoing : rowsOwned s2Step20HeadFvAfter [s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] :=
  hmrRows_owned_drop s2Step20HeadFvAfter [s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] 0 s2Step20HeadBank_outgoingOwned
theorem s2Step20HeadF_Incoming : rowsOwned s2Step20HeadFBefore [s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20HeadGRow,s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow] 1 s2Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20HeadF_Outgoing : rowsOwned s2Step20HeadFvAfter [s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] :=
  hmrRows_owned_drop s2Step20HeadFvAfter [s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] 1 s2Step20HeadBank_outgoingOwned
theorem s2Step20HeadGv_Incoming : rowsOwned s2Step20HeadGvBefore [s2Step20HeadGvRow,s2Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20HeadGRow,s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow] 2 s2Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20HeadGvBefore (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20HeadGv_Outgoing : rowsOwned s2Step20HeadFvAfter [s2Step20HeadGvOut,s2Step20HeadFvOut] :=
  hmrRows_owned_drop s2Step20HeadFvAfter [s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] 2 s2Step20HeadBank_outgoingOwned
theorem s2Step20HeadFv_Incoming : rowsOwned s2Step20HeadFvBefore [s2Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20HeadGRow,s2Step20HeadFRow,s2Step20HeadGvRow,s2Step20HeadFvRow] 3 s2Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20HeadFvBefore (fun q => (0≤q ∧ q<830) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20HeadFv_Outgoing : rowsOwned s2Step20HeadFvAfter [s2Step20HeadFvOut] :=
  hmrRows_owned_drop s2Step20HeadFvAfter [s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut] 3 s2Step20HeadBank_outgoingOwned
theorem s2Step20HeadBank_rows : planWindowRowsLog s2Step20HeadGBefore [(s2Step20HeadGRow,257),(s2Step20HeadFRow,257),(s2Step20HeadGvRow,22),(s2Step20HeadFvRow,22)] [s2Step20HeadGFresh,s2Step20HeadFFresh,s2Step20HeadGvFresh,s2Step20HeadFvFresh]=
    some (s2Step20HeadFvAfter,[s2Step20HeadGOut,s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut],(growRow 769 s2Step20HeadGFresh ++ (growRow 768 s2Step20HeadFFresh ++ (growRow 771 s2Step20HeadGvFresh ++ (growRow 770 s2Step20HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step20HeadFvAfter [] []=some (s2Step20HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step20HeadFvBefore s2Step20HeadFvAfter s2Step20HeadFvAfter
    s2Step20HeadFvRow s2Step20HeadFvOut 22 s2Step20HeadFvFresh [] [] []
    (growRow 770 s2Step20HeadFvFresh) ([]) s2Step20HeadFv_Incoming s2Step20HeadFv_checked h4 s2Step20HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step20HeadGvBefore s2Step20HeadGvAfter s2Step20HeadFvAfter
    s2Step20HeadGvRow s2Step20HeadGvOut 22 s2Step20HeadGvFresh [(s2Step20HeadFvRow,22)] [s2Step20HeadFvFresh] [s2Step20HeadFvOut]
    (growRow 771 s2Step20HeadGvFresh) ((growRow 770 s2Step20HeadFvFresh ++ [])) s2Step20HeadGv_Incoming s2Step20HeadGv_checked h3 s2Step20HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step20HeadFBefore s2Step20HeadFAfter s2Step20HeadFvAfter
    s2Step20HeadFRow s2Step20HeadFOut 257 s2Step20HeadFFresh [(s2Step20HeadGvRow,22),(s2Step20HeadFvRow,22)] [s2Step20HeadGvFresh,s2Step20HeadFvFresh] [s2Step20HeadGvOut,s2Step20HeadFvOut]
    (growRow 768 s2Step20HeadFFresh) ((growRow 771 s2Step20HeadGvFresh ++ (growRow 770 s2Step20HeadFvFresh ++ []))) s2Step20HeadF_Incoming s2Step20HeadF_checked h2 s2Step20HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step20HeadGBefore s2Step20HeadGAfter s2Step20HeadFvAfter
    s2Step20HeadGRow s2Step20HeadGOut 257 s2Step20HeadGFresh [(s2Step20HeadFRow,257),(s2Step20HeadGvRow,22),(s2Step20HeadFvRow,22)] [s2Step20HeadFFresh,s2Step20HeadGvFresh,s2Step20HeadFvFresh] [s2Step20HeadFOut,s2Step20HeadGvOut,s2Step20HeadFvOut]
    (growRow 769 s2Step20HeadGFresh) ((growRow 768 s2Step20HeadFFresh ++ (growRow 771 s2Step20HeadGvFresh ++ (growRow 770 s2Step20HeadFvFresh ++ [])))) s2Step20HeadG_Incoming s2Step20HeadG_checked h1 s2Step20HeadG_Outgoing
  exact h0
theorem s2Step20HeadBank_checked : compileHmrBankResizeLog .headroom s2Step20HeadGBefore ⟨s2Step20HeadFRow,s2Step20HeadGRow,s2Step20HeadFvRow,s2Step20HeadGvRow⟩ ⟨257,257,22,22⟩ [s2Step20HeadGFresh,s2Step20HeadFFresh,s2Step20HeadGvFresh,s2Step20HeadFvFresh]=
    some (s2Step20HeadFvAfter,⟨s2Step20HeadFOut,s2Step20HeadGOut,s2Step20HeadFvOut,s2Step20HeadGvOut⟩,(growRow 769 s2Step20HeadGFresh ++ (growRow 768 s2Step20HeadFFresh ++ (growRow 771 s2Step20HeadGvFresh ++ (growRow 770 s2Step20HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step20HeadBank_rows]
  rfl
def s2Step21HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step21HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step21HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780, 831],771⟩
def s2Step21HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩
theorem s2Step21HeadBank_incomingDistinct : ([s2Step21HeadGRow,s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21HeadBank_outgoingOwned : rowsOwned s2Step21HeadFvAfter [s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step21HeadFvAfter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21HeadG_Incoming : rowsOwned s2Step21HeadGBefore [s2Step21HeadGRow,s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21HeadGRow,s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow] 0 s2Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21HeadG_Outgoing : rowsOwned s2Step21HeadFvAfter [s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] :=
  hmrRows_owned_drop s2Step21HeadFvAfter [s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] 0 s2Step21HeadBank_outgoingOwned
theorem s2Step21HeadF_Incoming : rowsOwned s2Step21HeadFBefore [s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21HeadGRow,s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow] 1 s2Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21HeadF_Outgoing : rowsOwned s2Step21HeadFvAfter [s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] :=
  hmrRows_owned_drop s2Step21HeadFvAfter [s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] 1 s2Step21HeadBank_outgoingOwned
theorem s2Step21HeadGv_Incoming : rowsOwned s2Step21HeadGvBefore [s2Step21HeadGvRow,s2Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21HeadGRow,s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow] 2 s2Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21HeadGvBefore (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21HeadGv_Outgoing : rowsOwned s2Step21HeadFvAfter [s2Step21HeadGvOut,s2Step21HeadFvOut] :=
  hmrRows_owned_drop s2Step21HeadFvAfter [s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] 2 s2Step21HeadBank_outgoingOwned
theorem s2Step21HeadFv_Incoming : rowsOwned s2Step21HeadFvBefore [s2Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21HeadGRow,s2Step21HeadFRow,s2Step21HeadGvRow,s2Step21HeadFvRow] 3 s2Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21HeadFvBefore (fun q => (0≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21HeadFv_Outgoing : rowsOwned s2Step21HeadFvAfter [s2Step21HeadFvOut] :=
  hmrRows_owned_drop s2Step21HeadFvAfter [s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut] 3 s2Step21HeadBank_outgoingOwned
theorem s2Step21HeadBank_rows : planWindowRowsLog s2Step21HeadGBefore [(s2Step21HeadGRow,257),(s2Step21HeadFRow,257),(s2Step21HeadGvRow,23),(s2Step21HeadFvRow,23)] [s2Step21HeadGFresh,s2Step21HeadFFresh,s2Step21HeadGvFresh,s2Step21HeadFvFresh]=
    some (s2Step21HeadFvAfter,[s2Step21HeadGOut,s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut],(growRow 769 s2Step21HeadGFresh ++ (growRow 768 s2Step21HeadFFresh ++ (growRow 771 s2Step21HeadGvFresh ++ (growRow 770 s2Step21HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step21HeadFvAfter [] []=some (s2Step21HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step21HeadFvBefore s2Step21HeadFvAfter s2Step21HeadFvAfter
    s2Step21HeadFvRow s2Step21HeadFvOut 23 s2Step21HeadFvFresh [] [] []
    (growRow 770 s2Step21HeadFvFresh) ([]) s2Step21HeadFv_Incoming s2Step21HeadFv_checked h4 s2Step21HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step21HeadGvBefore s2Step21HeadGvAfter s2Step21HeadFvAfter
    s2Step21HeadGvRow s2Step21HeadGvOut 23 s2Step21HeadGvFresh [(s2Step21HeadFvRow,23)] [s2Step21HeadFvFresh] [s2Step21HeadFvOut]
    (growRow 771 s2Step21HeadGvFresh) ((growRow 770 s2Step21HeadFvFresh ++ [])) s2Step21HeadGv_Incoming s2Step21HeadGv_checked h3 s2Step21HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step21HeadFBefore s2Step21HeadFAfter s2Step21HeadFvAfter
    s2Step21HeadFRow s2Step21HeadFOut 257 s2Step21HeadFFresh [(s2Step21HeadGvRow,23),(s2Step21HeadFvRow,23)] [s2Step21HeadGvFresh,s2Step21HeadFvFresh] [s2Step21HeadGvOut,s2Step21HeadFvOut]
    (growRow 768 s2Step21HeadFFresh) ((growRow 771 s2Step21HeadGvFresh ++ (growRow 770 s2Step21HeadFvFresh ++ []))) s2Step21HeadF_Incoming s2Step21HeadF_checked h2 s2Step21HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step21HeadGBefore s2Step21HeadGAfter s2Step21HeadFvAfter
    s2Step21HeadGRow s2Step21HeadGOut 257 s2Step21HeadGFresh [(s2Step21HeadFRow,257),(s2Step21HeadGvRow,23),(s2Step21HeadFvRow,23)] [s2Step21HeadFFresh,s2Step21HeadGvFresh,s2Step21HeadFvFresh] [s2Step21HeadFOut,s2Step21HeadGvOut,s2Step21HeadFvOut]
    (growRow 769 s2Step21HeadGFresh) ((growRow 768 s2Step21HeadFFresh ++ (growRow 771 s2Step21HeadGvFresh ++ (growRow 770 s2Step21HeadFvFresh ++ [])))) s2Step21HeadG_Incoming s2Step21HeadG_checked h1 s2Step21HeadG_Outgoing
  exact h0
theorem s2Step21HeadBank_checked : compileHmrBankResizeLog .headroom s2Step21HeadGBefore ⟨s2Step21HeadFRow,s2Step21HeadGRow,s2Step21HeadFvRow,s2Step21HeadGvRow⟩ ⟨257,257,23,23⟩ [s2Step21HeadGFresh,s2Step21HeadFFresh,s2Step21HeadGvFresh,s2Step21HeadFvFresh]=
    some (s2Step21HeadFvAfter,⟨s2Step21HeadFOut,s2Step21HeadGOut,s2Step21HeadFvOut,s2Step21HeadGvOut⟩,(growRow 769 s2Step21HeadGFresh ++ (growRow 768 s2Step21HeadFFresh ++ (growRow 771 s2Step21HeadGvFresh ++ (growRow 770 s2Step21HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step21HeadBank_rows]
  rfl
def s2Step22HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step22HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step22HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780, 834],771⟩
def s2Step22HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩
theorem s2Step22HeadBank_incomingDistinct : ([s2Step22HeadGRow,s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22HeadBank_outgoingOwned : rowsOwned s2Step22HeadFvAfter [s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step22HeadFvAfter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22HeadG_Incoming : rowsOwned s2Step22HeadGBefore [s2Step22HeadGRow,s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22HeadGRow,s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow] 0 s2Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22HeadG_Outgoing : rowsOwned s2Step22HeadFvAfter [s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] :=
  hmrRows_owned_drop s2Step22HeadFvAfter [s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] 0 s2Step22HeadBank_outgoingOwned
theorem s2Step22HeadF_Incoming : rowsOwned s2Step22HeadFBefore [s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22HeadGRow,s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow] 1 s2Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22HeadF_Outgoing : rowsOwned s2Step22HeadFvAfter [s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] :=
  hmrRows_owned_drop s2Step22HeadFvAfter [s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] 1 s2Step22HeadBank_outgoingOwned
theorem s2Step22HeadGv_Incoming : rowsOwned s2Step22HeadGvBefore [s2Step22HeadGvRow,s2Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22HeadGRow,s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow] 2 s2Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22HeadGvBefore (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22HeadGv_Outgoing : rowsOwned s2Step22HeadFvAfter [s2Step22HeadGvOut,s2Step22HeadFvOut] :=
  hmrRows_owned_drop s2Step22HeadFvAfter [s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] 2 s2Step22HeadBank_outgoingOwned
theorem s2Step22HeadFv_Incoming : rowsOwned s2Step22HeadFvBefore [s2Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22HeadGRow,s2Step22HeadFRow,s2Step22HeadGvRow,s2Step22HeadFvRow] 3 s2Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22HeadFvBefore (fun q => (0≤q ∧ q<835) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22HeadFv_Outgoing : rowsOwned s2Step22HeadFvAfter [s2Step22HeadFvOut] :=
  hmrRows_owned_drop s2Step22HeadFvAfter [s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut] 3 s2Step22HeadBank_outgoingOwned
theorem s2Step22HeadBank_rows : planWindowRowsLog s2Step22HeadGBefore [(s2Step22HeadGRow,257),(s2Step22HeadFRow,257),(s2Step22HeadGvRow,24),(s2Step22HeadFvRow,24)] [s2Step22HeadGFresh,s2Step22HeadFFresh,s2Step22HeadGvFresh,s2Step22HeadFvFresh]=
    some (s2Step22HeadFvAfter,[s2Step22HeadGOut,s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut],(growRow 769 s2Step22HeadGFresh ++ (growRow 768 s2Step22HeadFFresh ++ (growRow 771 s2Step22HeadGvFresh ++ (growRow 770 s2Step22HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step22HeadFvAfter [] []=some (s2Step22HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step22HeadFvBefore s2Step22HeadFvAfter s2Step22HeadFvAfter
    s2Step22HeadFvRow s2Step22HeadFvOut 24 s2Step22HeadFvFresh [] [] []
    (growRow 770 s2Step22HeadFvFresh) ([]) s2Step22HeadFv_Incoming s2Step22HeadFv_checked h4 s2Step22HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step22HeadGvBefore s2Step22HeadGvAfter s2Step22HeadFvAfter
    s2Step22HeadGvRow s2Step22HeadGvOut 24 s2Step22HeadGvFresh [(s2Step22HeadFvRow,24)] [s2Step22HeadFvFresh] [s2Step22HeadFvOut]
    (growRow 771 s2Step22HeadGvFresh) ((growRow 770 s2Step22HeadFvFresh ++ [])) s2Step22HeadGv_Incoming s2Step22HeadGv_checked h3 s2Step22HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step22HeadFBefore s2Step22HeadFAfter s2Step22HeadFvAfter
    s2Step22HeadFRow s2Step22HeadFOut 257 s2Step22HeadFFresh [(s2Step22HeadGvRow,24),(s2Step22HeadFvRow,24)] [s2Step22HeadGvFresh,s2Step22HeadFvFresh] [s2Step22HeadGvOut,s2Step22HeadFvOut]
    (growRow 768 s2Step22HeadFFresh) ((growRow 771 s2Step22HeadGvFresh ++ (growRow 770 s2Step22HeadFvFresh ++ []))) s2Step22HeadF_Incoming s2Step22HeadF_checked h2 s2Step22HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step22HeadGBefore s2Step22HeadGAfter s2Step22HeadFvAfter
    s2Step22HeadGRow s2Step22HeadGOut 257 s2Step22HeadGFresh [(s2Step22HeadFRow,257),(s2Step22HeadGvRow,24),(s2Step22HeadFvRow,24)] [s2Step22HeadFFresh,s2Step22HeadGvFresh,s2Step22HeadFvFresh] [s2Step22HeadFOut,s2Step22HeadGvOut,s2Step22HeadFvOut]
    (growRow 769 s2Step22HeadGFresh) ((growRow 768 s2Step22HeadFFresh ++ (growRow 771 s2Step22HeadGvFresh ++ (growRow 770 s2Step22HeadFvFresh ++ [])))) s2Step22HeadG_Incoming s2Step22HeadG_checked h1 s2Step22HeadG_Outgoing
  exact h0
theorem s2Step22HeadBank_checked : compileHmrBankResizeLog .headroom s2Step22HeadGBefore ⟨s2Step22HeadFRow,s2Step22HeadGRow,s2Step22HeadFvRow,s2Step22HeadGvRow⟩ ⟨257,257,24,24⟩ [s2Step22HeadGFresh,s2Step22HeadFFresh,s2Step22HeadGvFresh,s2Step22HeadFvFresh]=
    some (s2Step22HeadFvAfter,⟨s2Step22HeadFOut,s2Step22HeadGOut,s2Step22HeadFvOut,s2Step22HeadGvOut⟩,(growRow 769 s2Step22HeadGFresh ++ (growRow 768 s2Step22HeadFFresh ++ (growRow 771 s2Step22HeadGvFresh ++ (growRow 770 s2Step22HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step22HeadBank_rows]
  rfl
def s2Step23HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step23HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step23HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780, 836],771⟩
def s2Step23HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
theorem s2Step23HeadBank_incomingDistinct : ([s2Step23HeadGRow,s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23HeadBank_outgoingOwned : rowsOwned s2Step23HeadFvAfter [s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step23HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23HeadG_Incoming : rowsOwned s2Step23HeadGBefore [s2Step23HeadGRow,s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23HeadGRow,s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow] 0 s2Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23HeadG_Outgoing : rowsOwned s2Step23HeadFvAfter [s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] :=
  hmrRows_owned_drop s2Step23HeadFvAfter [s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] 0 s2Step23HeadBank_outgoingOwned
theorem s2Step23HeadF_Incoming : rowsOwned s2Step23HeadFBefore [s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23HeadGRow,s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow] 1 s2Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23HeadF_Outgoing : rowsOwned s2Step23HeadFvAfter [s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] :=
  hmrRows_owned_drop s2Step23HeadFvAfter [s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] 1 s2Step23HeadBank_outgoingOwned
theorem s2Step23HeadGv_Incoming : rowsOwned s2Step23HeadGvBefore [s2Step23HeadGvRow,s2Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23HeadGRow,s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow] 2 s2Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23HeadGvBefore (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23HeadGv_Outgoing : rowsOwned s2Step23HeadFvAfter [s2Step23HeadGvOut,s2Step23HeadFvOut] :=
  hmrRows_owned_drop s2Step23HeadFvAfter [s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] 2 s2Step23HeadBank_outgoingOwned
theorem s2Step23HeadFv_Incoming : rowsOwned s2Step23HeadFvBefore [s2Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23HeadGRow,s2Step23HeadFRow,s2Step23HeadGvRow,s2Step23HeadFvRow] 3 s2Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23HeadFvBefore (fun q => (0≤q ∧ q<837) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23HeadFv_Outgoing : rowsOwned s2Step23HeadFvAfter [s2Step23HeadFvOut] :=
  hmrRows_owned_drop s2Step23HeadFvAfter [s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut] 3 s2Step23HeadBank_outgoingOwned
theorem s2Step23HeadBank_rows : planWindowRowsLog s2Step23HeadGBefore [(s2Step23HeadGRow,257),(s2Step23HeadFRow,257),(s2Step23HeadGvRow,25),(s2Step23HeadFvRow,25)] [s2Step23HeadGFresh,s2Step23HeadFFresh,s2Step23HeadGvFresh,s2Step23HeadFvFresh]=
    some (s2Step23HeadFvAfter,[s2Step23HeadGOut,s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut],(growRow 769 s2Step23HeadGFresh ++ (growRow 768 s2Step23HeadFFresh ++ (growRow 771 s2Step23HeadGvFresh ++ (growRow 770 s2Step23HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step23HeadFvAfter [] []=some (s2Step23HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step23HeadFvBefore s2Step23HeadFvAfter s2Step23HeadFvAfter
    s2Step23HeadFvRow s2Step23HeadFvOut 25 s2Step23HeadFvFresh [] [] []
    (growRow 770 s2Step23HeadFvFresh) ([]) s2Step23HeadFv_Incoming s2Step23HeadFv_checked h4 s2Step23HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step23HeadGvBefore s2Step23HeadGvAfter s2Step23HeadFvAfter
    s2Step23HeadGvRow s2Step23HeadGvOut 25 s2Step23HeadGvFresh [(s2Step23HeadFvRow,25)] [s2Step23HeadFvFresh] [s2Step23HeadFvOut]
    (growRow 771 s2Step23HeadGvFresh) ((growRow 770 s2Step23HeadFvFresh ++ [])) s2Step23HeadGv_Incoming s2Step23HeadGv_checked h3 s2Step23HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step23HeadFBefore s2Step23HeadFAfter s2Step23HeadFvAfter
    s2Step23HeadFRow s2Step23HeadFOut 257 s2Step23HeadFFresh [(s2Step23HeadGvRow,25),(s2Step23HeadFvRow,25)] [s2Step23HeadGvFresh,s2Step23HeadFvFresh] [s2Step23HeadGvOut,s2Step23HeadFvOut]
    (growRow 768 s2Step23HeadFFresh) ((growRow 771 s2Step23HeadGvFresh ++ (growRow 770 s2Step23HeadFvFresh ++ []))) s2Step23HeadF_Incoming s2Step23HeadF_checked h2 s2Step23HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step23HeadGBefore s2Step23HeadGAfter s2Step23HeadFvAfter
    s2Step23HeadGRow s2Step23HeadGOut 257 s2Step23HeadGFresh [(s2Step23HeadFRow,257),(s2Step23HeadGvRow,25),(s2Step23HeadFvRow,25)] [s2Step23HeadFFresh,s2Step23HeadGvFresh,s2Step23HeadFvFresh] [s2Step23HeadFOut,s2Step23HeadGvOut,s2Step23HeadFvOut]
    (growRow 769 s2Step23HeadGFresh) ((growRow 768 s2Step23HeadFFresh ++ (growRow 771 s2Step23HeadGvFresh ++ (growRow 770 s2Step23HeadFvFresh ++ [])))) s2Step23HeadG_Incoming s2Step23HeadG_checked h1 s2Step23HeadG_Outgoing
  exact h0
theorem s2Step23HeadBank_checked : compileHmrBankResizeLog .headroom s2Step23HeadGBefore ⟨s2Step23HeadFRow,s2Step23HeadGRow,s2Step23HeadFvRow,s2Step23HeadGvRow⟩ ⟨257,257,25,25⟩ [s2Step23HeadGFresh,s2Step23HeadFFresh,s2Step23HeadGvFresh,s2Step23HeadFvFresh]=
    some (s2Step23HeadFvAfter,⟨s2Step23HeadFOut,s2Step23HeadGOut,s2Step23HeadFvOut,s2Step23HeadGvOut⟩,(growRow 769 s2Step23HeadGFresh ++ (growRow 768 s2Step23HeadFFresh ++ (growRow 771 s2Step23HeadGvFresh ++ (growRow 770 s2Step23HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step23HeadBank_rows]
  rfl
def s2Step24HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step24HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step24HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780, 839],771⟩
def s2Step24HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 840],770⟩
theorem s2Step24HeadBank_incomingDistinct : ([s2Step24HeadGRow,s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24HeadBank_outgoingOwned : rowsOwned s2Step24HeadFvAfter [s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step24HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24HeadG_Incoming : rowsOwned s2Step24HeadGBefore [s2Step24HeadGRow,s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24HeadGRow,s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow] 0 s2Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24HeadG_Outgoing : rowsOwned s2Step24HeadFvAfter [s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] :=
  hmrRows_owned_drop s2Step24HeadFvAfter [s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] 0 s2Step24HeadBank_outgoingOwned
theorem s2Step24HeadF_Incoming : rowsOwned s2Step24HeadFBefore [s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24HeadGRow,s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow] 1 s2Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24HeadF_Outgoing : rowsOwned s2Step24HeadFvAfter [s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] :=
  hmrRows_owned_drop s2Step24HeadFvAfter [s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] 1 s2Step24HeadBank_outgoingOwned
theorem s2Step24HeadGv_Incoming : rowsOwned s2Step24HeadGvBefore [s2Step24HeadGvRow,s2Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24HeadGRow,s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow] 2 s2Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24HeadGvBefore (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24HeadGv_Outgoing : rowsOwned s2Step24HeadFvAfter [s2Step24HeadGvOut,s2Step24HeadFvOut] :=
  hmrRows_owned_drop s2Step24HeadFvAfter [s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] 2 s2Step24HeadBank_outgoingOwned
theorem s2Step24HeadFv_Incoming : rowsOwned s2Step24HeadFvBefore [s2Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24HeadGRow,s2Step24HeadFRow,s2Step24HeadGvRow,s2Step24HeadFvRow] 3 s2Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24HeadFvBefore (fun q => (0≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24HeadFv_Outgoing : rowsOwned s2Step24HeadFvAfter [s2Step24HeadFvOut] :=
  hmrRows_owned_drop s2Step24HeadFvAfter [s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut] 3 s2Step24HeadBank_outgoingOwned
theorem s2Step24HeadBank_rows : planWindowRowsLog s2Step24HeadGBefore [(s2Step24HeadGRow,257),(s2Step24HeadFRow,257),(s2Step24HeadGvRow,26),(s2Step24HeadFvRow,26)] [s2Step24HeadGFresh,s2Step24HeadFFresh,s2Step24HeadGvFresh,s2Step24HeadFvFresh]=
    some (s2Step24HeadFvAfter,[s2Step24HeadGOut,s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut],(growRow 769 s2Step24HeadGFresh ++ (growRow 768 s2Step24HeadFFresh ++ (growRow 771 s2Step24HeadGvFresh ++ (growRow 770 s2Step24HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step24HeadFvAfter [] []=some (s2Step24HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step24HeadFvBefore s2Step24HeadFvAfter s2Step24HeadFvAfter
    s2Step24HeadFvRow s2Step24HeadFvOut 26 s2Step24HeadFvFresh [] [] []
    (growRow 770 s2Step24HeadFvFresh) ([]) s2Step24HeadFv_Incoming s2Step24HeadFv_checked h4 s2Step24HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step24HeadGvBefore s2Step24HeadGvAfter s2Step24HeadFvAfter
    s2Step24HeadGvRow s2Step24HeadGvOut 26 s2Step24HeadGvFresh [(s2Step24HeadFvRow,26)] [s2Step24HeadFvFresh] [s2Step24HeadFvOut]
    (growRow 771 s2Step24HeadGvFresh) ((growRow 770 s2Step24HeadFvFresh ++ [])) s2Step24HeadGv_Incoming s2Step24HeadGv_checked h3 s2Step24HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step24HeadFBefore s2Step24HeadFAfter s2Step24HeadFvAfter
    s2Step24HeadFRow s2Step24HeadFOut 257 s2Step24HeadFFresh [(s2Step24HeadGvRow,26),(s2Step24HeadFvRow,26)] [s2Step24HeadGvFresh,s2Step24HeadFvFresh] [s2Step24HeadGvOut,s2Step24HeadFvOut]
    (growRow 768 s2Step24HeadFFresh) ((growRow 771 s2Step24HeadGvFresh ++ (growRow 770 s2Step24HeadFvFresh ++ []))) s2Step24HeadF_Incoming s2Step24HeadF_checked h2 s2Step24HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step24HeadGBefore s2Step24HeadGAfter s2Step24HeadFvAfter
    s2Step24HeadGRow s2Step24HeadGOut 257 s2Step24HeadGFresh [(s2Step24HeadFRow,257),(s2Step24HeadGvRow,26),(s2Step24HeadFvRow,26)] [s2Step24HeadFFresh,s2Step24HeadGvFresh,s2Step24HeadFvFresh] [s2Step24HeadFOut,s2Step24HeadGvOut,s2Step24HeadFvOut]
    (growRow 769 s2Step24HeadGFresh) ((growRow 768 s2Step24HeadFFresh ++ (growRow 771 s2Step24HeadGvFresh ++ (growRow 770 s2Step24HeadFvFresh ++ [])))) s2Step24HeadG_Incoming s2Step24HeadG_checked h1 s2Step24HeadG_Outgoing
  exact h0
theorem s2Step24HeadBank_checked : compileHmrBankResizeLog .headroom s2Step24HeadGBefore ⟨s2Step24HeadFRow,s2Step24HeadGRow,s2Step24HeadFvRow,s2Step24HeadGvRow⟩ ⟨257,257,26,26⟩ [s2Step24HeadGFresh,s2Step24HeadFFresh,s2Step24HeadGvFresh,s2Step24HeadFvFresh]=
    some (s2Step24HeadFvAfter,⟨s2Step24HeadFOut,s2Step24HeadGOut,s2Step24HeadFvOut,s2Step24HeadGvOut⟩,(growRow 769 s2Step24HeadGFresh ++ (growRow 768 s2Step24HeadFFresh ++ (growRow 771 s2Step24HeadGvFresh ++ (growRow 770 s2Step24HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step24HeadBank_rows]
  rfl
def s2Step25HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781, 780],769⟩
def s2Step25HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 839],768⟩
def s2Step25HeadGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840],771⟩
def s2Step25HeadFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩
theorem s2Step25HeadBank_incomingDistinct : ([s2Step25HeadGRow,s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25HeadBank_outgoingOwned : rowsOwned s2Step25HeadFvAfter [s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step25HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25HeadG_Incoming : rowsOwned s2Step25HeadGBefore [s2Step25HeadGRow,s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25HeadGRow,s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow] 0 s2Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25HeadG_Outgoing : rowsOwned s2Step25HeadFvAfter [s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] :=
  hmrRows_owned_drop s2Step25HeadFvAfter [s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] 0 s2Step25HeadBank_outgoingOwned
theorem s2Step25HeadF_Incoming : rowsOwned s2Step25HeadFBefore [s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25HeadGRow,s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow] 1 s2Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25HeadF_Outgoing : rowsOwned s2Step25HeadFvAfter [s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] :=
  hmrRows_owned_drop s2Step25HeadFvAfter [s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] 1 s2Step25HeadBank_outgoingOwned
theorem s2Step25HeadGv_Incoming : rowsOwned s2Step25HeadGvBefore [s2Step25HeadGvRow,s2Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25HeadGRow,s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow] 2 s2Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25HeadGv_Outgoing : rowsOwned s2Step25HeadFvAfter [s2Step25HeadGvOut,s2Step25HeadFvOut] :=
  hmrRows_owned_drop s2Step25HeadFvAfter [s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] 2 s2Step25HeadBank_outgoingOwned
theorem s2Step25HeadFv_Incoming : rowsOwned s2Step25HeadFvBefore [s2Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25HeadGRow,s2Step25HeadFRow,s2Step25HeadGvRow,s2Step25HeadFvRow] 3 s2Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25HeadFv_Outgoing : rowsOwned s2Step25HeadFvAfter [s2Step25HeadFvOut] :=
  hmrRows_owned_drop s2Step25HeadFvAfter [s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut] 3 s2Step25HeadBank_outgoingOwned
theorem s2Step25HeadBank_rows : planWindowRowsLog s2Step25HeadGBefore [(s2Step25HeadGRow,256),(s2Step25HeadFRow,256),(s2Step25HeadGvRow,26),(s2Step25HeadFvRow,26)] [s2Step25HeadGFresh,s2Step25HeadFFresh,s2Step25HeadGvFresh,s2Step25HeadFvFresh]=
    some (s2Step25HeadFvAfter,[s2Step25HeadGOut,s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut],(growRow 769 s2Step25HeadGFresh ++ (growRow 768 s2Step25HeadFFresh ++ (growRow 771 s2Step25HeadGvFresh ++ (growRow 770 s2Step25HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step25HeadFvAfter [] []=some (s2Step25HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step25HeadFvBefore s2Step25HeadFvAfter s2Step25HeadFvAfter
    s2Step25HeadFvRow s2Step25HeadFvOut 26 s2Step25HeadFvFresh [] [] []
    (growRow 770 s2Step25HeadFvFresh) ([]) s2Step25HeadFv_Incoming s2Step25HeadFv_checked h4 s2Step25HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step25HeadGvBefore s2Step25HeadGvAfter s2Step25HeadFvAfter
    s2Step25HeadGvRow s2Step25HeadGvOut 26 s2Step25HeadGvFresh [(s2Step25HeadFvRow,26)] [s2Step25HeadFvFresh] [s2Step25HeadFvOut]
    (growRow 771 s2Step25HeadGvFresh) ((growRow 770 s2Step25HeadFvFresh ++ [])) s2Step25HeadGv_Incoming s2Step25HeadGv_checked h3 s2Step25HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step25HeadFBefore s2Step25HeadFAfter s2Step25HeadFvAfter
    s2Step25HeadFRow s2Step25HeadFOut 256 s2Step25HeadFFresh [(s2Step25HeadGvRow,26),(s2Step25HeadFvRow,26)] [s2Step25HeadGvFresh,s2Step25HeadFvFresh] [s2Step25HeadGvOut,s2Step25HeadFvOut]
    (growRow 768 s2Step25HeadFFresh) ((growRow 771 s2Step25HeadGvFresh ++ (growRow 770 s2Step25HeadFvFresh ++ []))) s2Step25HeadF_Incoming s2Step25HeadF_checked h2 s2Step25HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step25HeadGBefore s2Step25HeadGAfter s2Step25HeadFvAfter
    s2Step25HeadGRow s2Step25HeadGOut 256 s2Step25HeadGFresh [(s2Step25HeadFRow,256),(s2Step25HeadGvRow,26),(s2Step25HeadFvRow,26)] [s2Step25HeadFFresh,s2Step25HeadGvFresh,s2Step25HeadFvFresh] [s2Step25HeadFOut,s2Step25HeadGvOut,s2Step25HeadFvOut]
    (growRow 769 s2Step25HeadGFresh) ((growRow 768 s2Step25HeadFFresh ++ (growRow 771 s2Step25HeadGvFresh ++ (growRow 770 s2Step25HeadFvFresh ++ [])))) s2Step25HeadG_Incoming s2Step25HeadG_checked h1 s2Step25HeadG_Outgoing
  exact h0
theorem s2Step25HeadBank_checked : compileHmrBankResizeLog .headroom s2Step25HeadGBefore ⟨s2Step25HeadFRow,s2Step25HeadGRow,s2Step25HeadFvRow,s2Step25HeadGvRow⟩ ⟨256,256,26,26⟩ [s2Step25HeadGFresh,s2Step25HeadFFresh,s2Step25HeadGvFresh,s2Step25HeadFvFresh]=
    some (s2Step25HeadFvAfter,⟨s2Step25HeadFOut,s2Step25HeadGOut,s2Step25HeadFvOut,s2Step25HeadGvOut⟩,(growRow 769 s2Step25HeadGFresh ++ (growRow 768 s2Step25HeadFFresh ++ (growRow 771 s2Step25HeadGvFresh ++ (growRow 770 s2Step25HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step25HeadBank_rows]
  rfl
def s2Step26HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785, 781],769⟩
def s2Step26HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 780],768⟩
def s2Step26HeadGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779, 783],771⟩
def s2Step26HeadFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩
theorem s2Step26HeadBank_incomingDistinct : ([s2Step26HeadGRow,s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26HeadBank_outgoingOwned : rowsOwned s2Step26HeadFvAfter [s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step26HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26HeadG_Incoming : rowsOwned s2Step26HeadGBefore [s2Step26HeadGRow,s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26HeadGRow,s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow] 0 s2Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26HeadG_Outgoing : rowsOwned s2Step26HeadFvAfter [s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] :=
  hmrRows_owned_drop s2Step26HeadFvAfter [s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] 0 s2Step26HeadBank_outgoingOwned
theorem s2Step26HeadF_Incoming : rowsOwned s2Step26HeadFBefore [s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26HeadGRow,s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow] 1 s2Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26HeadF_Outgoing : rowsOwned s2Step26HeadFvAfter [s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] :=
  hmrRows_owned_drop s2Step26HeadFvAfter [s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] 1 s2Step26HeadBank_outgoingOwned
theorem s2Step26HeadGv_Incoming : rowsOwned s2Step26HeadGvBefore [s2Step26HeadGvRow,s2Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26HeadGRow,s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow] 2 s2Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26HeadGv_Outgoing : rowsOwned s2Step26HeadFvAfter [s2Step26HeadGvOut,s2Step26HeadFvOut] :=
  hmrRows_owned_drop s2Step26HeadFvAfter [s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] 2 s2Step26HeadBank_outgoingOwned
theorem s2Step26HeadFv_Incoming : rowsOwned s2Step26HeadFvBefore [s2Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26HeadGRow,s2Step26HeadFRow,s2Step26HeadGvRow,s2Step26HeadFvRow] 3 s2Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26HeadFv_Outgoing : rowsOwned s2Step26HeadFvAfter [s2Step26HeadFvOut] :=
  hmrRows_owned_drop s2Step26HeadFvAfter [s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut] 3 s2Step26HeadBank_outgoingOwned
theorem s2Step26HeadBank_rows : planWindowRowsLog s2Step26HeadGBefore [(s2Step26HeadGRow,256),(s2Step26HeadFRow,256),(s2Step26HeadGvRow,27),(s2Step26HeadFvRow,27)] [s2Step26HeadGFresh,s2Step26HeadFFresh,s2Step26HeadGvFresh,s2Step26HeadFvFresh]=
    some (s2Step26HeadFvAfter,[s2Step26HeadGOut,s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut],(growRow 769 s2Step26HeadGFresh ++ (growRow 768 s2Step26HeadFFresh ++ (growRow 771 s2Step26HeadGvFresh ++ (growRow 770 s2Step26HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step26HeadFvAfter [] []=some (s2Step26HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step26HeadFvBefore s2Step26HeadFvAfter s2Step26HeadFvAfter
    s2Step26HeadFvRow s2Step26HeadFvOut 27 s2Step26HeadFvFresh [] [] []
    (growRow 770 s2Step26HeadFvFresh) ([]) s2Step26HeadFv_Incoming s2Step26HeadFv_checked h4 s2Step26HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step26HeadGvBefore s2Step26HeadGvAfter s2Step26HeadFvAfter
    s2Step26HeadGvRow s2Step26HeadGvOut 27 s2Step26HeadGvFresh [(s2Step26HeadFvRow,27)] [s2Step26HeadFvFresh] [s2Step26HeadFvOut]
    (growRow 771 s2Step26HeadGvFresh) ((growRow 770 s2Step26HeadFvFresh ++ [])) s2Step26HeadGv_Incoming s2Step26HeadGv_checked h3 s2Step26HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step26HeadFBefore s2Step26HeadFAfter s2Step26HeadFvAfter
    s2Step26HeadFRow s2Step26HeadFOut 256 s2Step26HeadFFresh [(s2Step26HeadGvRow,27),(s2Step26HeadFvRow,27)] [s2Step26HeadGvFresh,s2Step26HeadFvFresh] [s2Step26HeadGvOut,s2Step26HeadFvOut]
    (growRow 768 s2Step26HeadFFresh) ((growRow 771 s2Step26HeadGvFresh ++ (growRow 770 s2Step26HeadFvFresh ++ []))) s2Step26HeadF_Incoming s2Step26HeadF_checked h2 s2Step26HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step26HeadGBefore s2Step26HeadGAfter s2Step26HeadFvAfter
    s2Step26HeadGRow s2Step26HeadGOut 256 s2Step26HeadGFresh [(s2Step26HeadFRow,256),(s2Step26HeadGvRow,27),(s2Step26HeadFvRow,27)] [s2Step26HeadFFresh,s2Step26HeadGvFresh,s2Step26HeadFvFresh] [s2Step26HeadFOut,s2Step26HeadGvOut,s2Step26HeadFvOut]
    (growRow 769 s2Step26HeadGFresh) ((growRow 768 s2Step26HeadFFresh ++ (growRow 771 s2Step26HeadGvFresh ++ (growRow 770 s2Step26HeadFvFresh ++ [])))) s2Step26HeadG_Incoming s2Step26HeadG_checked h1 s2Step26HeadG_Outgoing
  exact h0
theorem s2Step26HeadBank_checked : compileHmrBankResizeLog .headroom s2Step26HeadGBefore ⟨s2Step26HeadFRow,s2Step26HeadGRow,s2Step26HeadFvRow,s2Step26HeadGvRow⟩ ⟨256,256,27,27⟩ [s2Step26HeadGFresh,s2Step26HeadFFresh,s2Step26HeadGvFresh,s2Step26HeadFvFresh]=
    some (s2Step26HeadFvAfter,⟨s2Step26HeadFOut,s2Step26HeadGOut,s2Step26HeadFvOut,s2Step26HeadGvOut⟩,(growRow 769 s2Step26HeadGFresh ++ (growRow 768 s2Step26HeadFFresh ++ (growRow 771 s2Step26HeadGvFresh ++ (growRow 770 s2Step26HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step26HeadBank_rows]
  rfl
def s2Step27HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839, 785],769⟩
def s2Step27HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 781],768⟩
def s2Step27HeadGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779, 841],771⟩
def s2Step27HeadFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
theorem s2Step27HeadBank_incomingDistinct : ([s2Step27HeadGRow,s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27HeadBank_outgoingOwned : rowsOwned s2Step27HeadFvAfter [s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step27HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27HeadG_Incoming : rowsOwned s2Step27HeadGBefore [s2Step27HeadGRow,s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27HeadGRow,s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow] 0 s2Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27HeadG_Outgoing : rowsOwned s2Step27HeadFvAfter [s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] :=
  hmrRows_owned_drop s2Step27HeadFvAfter [s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] 0 s2Step27HeadBank_outgoingOwned
theorem s2Step27HeadF_Incoming : rowsOwned s2Step27HeadFBefore [s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27HeadGRow,s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow] 1 s2Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27HeadF_Outgoing : rowsOwned s2Step27HeadFvAfter [s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] :=
  hmrRows_owned_drop s2Step27HeadFvAfter [s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] 1 s2Step27HeadBank_outgoingOwned
theorem s2Step27HeadGv_Incoming : rowsOwned s2Step27HeadGvBefore [s2Step27HeadGvRow,s2Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27HeadGRow,s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow] 2 s2Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27HeadGvBefore (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27HeadGv_Outgoing : rowsOwned s2Step27HeadFvAfter [s2Step27HeadGvOut,s2Step27HeadFvOut] :=
  hmrRows_owned_drop s2Step27HeadFvAfter [s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] 2 s2Step27HeadBank_outgoingOwned
theorem s2Step27HeadFv_Incoming : rowsOwned s2Step27HeadFvBefore [s2Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27HeadGRow,s2Step27HeadFRow,s2Step27HeadGvRow,s2Step27HeadFvRow] 3 s2Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27HeadFvBefore (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27HeadFv_Outgoing : rowsOwned s2Step27HeadFvAfter [s2Step27HeadFvOut] :=
  hmrRows_owned_drop s2Step27HeadFvAfter [s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut] 3 s2Step27HeadBank_outgoingOwned
theorem s2Step27HeadBank_rows : planWindowRowsLog s2Step27HeadGBefore [(s2Step27HeadGRow,256),(s2Step27HeadFRow,256),(s2Step27HeadGvRow,28),(s2Step27HeadFvRow,28)] [s2Step27HeadGFresh,s2Step27HeadFFresh,s2Step27HeadGvFresh,s2Step27HeadFvFresh]=
    some (s2Step27HeadFvAfter,[s2Step27HeadGOut,s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut],(growRow 769 s2Step27HeadGFresh ++ (growRow 768 s2Step27HeadFFresh ++ (growRow 771 s2Step27HeadGvFresh ++ (growRow 770 s2Step27HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step27HeadFvAfter [] []=some (s2Step27HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step27HeadFvBefore s2Step27HeadFvAfter s2Step27HeadFvAfter
    s2Step27HeadFvRow s2Step27HeadFvOut 28 s2Step27HeadFvFresh [] [] []
    (growRow 770 s2Step27HeadFvFresh) ([]) s2Step27HeadFv_Incoming s2Step27HeadFv_checked h4 s2Step27HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step27HeadGvBefore s2Step27HeadGvAfter s2Step27HeadFvAfter
    s2Step27HeadGvRow s2Step27HeadGvOut 28 s2Step27HeadGvFresh [(s2Step27HeadFvRow,28)] [s2Step27HeadFvFresh] [s2Step27HeadFvOut]
    (growRow 771 s2Step27HeadGvFresh) ((growRow 770 s2Step27HeadFvFresh ++ [])) s2Step27HeadGv_Incoming s2Step27HeadGv_checked h3 s2Step27HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step27HeadFBefore s2Step27HeadFAfter s2Step27HeadFvAfter
    s2Step27HeadFRow s2Step27HeadFOut 256 s2Step27HeadFFresh [(s2Step27HeadGvRow,28),(s2Step27HeadFvRow,28)] [s2Step27HeadGvFresh,s2Step27HeadFvFresh] [s2Step27HeadGvOut,s2Step27HeadFvOut]
    (growRow 768 s2Step27HeadFFresh) ((growRow 771 s2Step27HeadGvFresh ++ (growRow 770 s2Step27HeadFvFresh ++ []))) s2Step27HeadF_Incoming s2Step27HeadF_checked h2 s2Step27HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step27HeadGBefore s2Step27HeadGAfter s2Step27HeadFvAfter
    s2Step27HeadGRow s2Step27HeadGOut 256 s2Step27HeadGFresh [(s2Step27HeadFRow,256),(s2Step27HeadGvRow,28),(s2Step27HeadFvRow,28)] [s2Step27HeadFFresh,s2Step27HeadGvFresh,s2Step27HeadFvFresh] [s2Step27HeadFOut,s2Step27HeadGvOut,s2Step27HeadFvOut]
    (growRow 769 s2Step27HeadGFresh) ((growRow 768 s2Step27HeadFFresh ++ (growRow 771 s2Step27HeadGvFresh ++ (growRow 770 s2Step27HeadFvFresh ++ [])))) s2Step27HeadG_Incoming s2Step27HeadG_checked h1 s2Step27HeadG_Outgoing
  exact h0
theorem s2Step27HeadBank_checked : compileHmrBankResizeLog .headroom s2Step27HeadGBefore ⟨s2Step27HeadFRow,s2Step27HeadGRow,s2Step27HeadFvRow,s2Step27HeadGvRow⟩ ⟨256,256,28,28⟩ [s2Step27HeadGFresh,s2Step27HeadFFresh,s2Step27HeadGvFresh,s2Step27HeadFvFresh]=
    some (s2Step27HeadFvAfter,⟨s2Step27HeadFOut,s2Step27HeadGOut,s2Step27HeadFvOut,s2Step27HeadGvOut⟩,(growRow 769 s2Step27HeadGFresh ++ (growRow 768 s2Step27HeadFFresh ++ (growRow 771 s2Step27HeadGvFresh ++ (growRow 770 s2Step27HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step27HeadBank_rows]
  rfl
def s2Step28HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780, 841],769⟩
def s2Step28HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩
def s2Step28HeadGvOut : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩
def s2Step28HeadFvOut : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 785],770⟩
theorem s2Step28HeadBank_incomingDistinct : ([s2Step28HeadGRow,s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28HeadBank_outgoingOwned : rowsOwned s2Step28HeadFvAfter [s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step28HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28HeadG_Incoming : rowsOwned s2Step28HeadGBefore [s2Step28HeadGRow,s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28HeadGRow,s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow] 0 s2Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28HeadG_Outgoing : rowsOwned s2Step28HeadFvAfter [s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] :=
  hmrRows_owned_drop s2Step28HeadFvAfter [s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] 0 s2Step28HeadBank_outgoingOwned
theorem s2Step28HeadF_Incoming : rowsOwned s2Step28HeadFBefore [s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28HeadGRow,s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow] 1 s2Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28HeadF_Outgoing : rowsOwned s2Step28HeadFvAfter [s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] :=
  hmrRows_owned_drop s2Step28HeadFvAfter [s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] 1 s2Step28HeadBank_outgoingOwned
theorem s2Step28HeadGv_Incoming : rowsOwned s2Step28HeadGvBefore [s2Step28HeadGvRow,s2Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28HeadGRow,s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow] 2 s2Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28HeadGv_Outgoing : rowsOwned s2Step28HeadFvAfter [s2Step28HeadGvOut,s2Step28HeadFvOut] :=
  hmrRows_owned_drop s2Step28HeadFvAfter [s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] 2 s2Step28HeadBank_outgoingOwned
theorem s2Step28HeadFv_Incoming : rowsOwned s2Step28HeadFvBefore [s2Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28HeadGRow,s2Step28HeadFRow,s2Step28HeadGvRow,s2Step28HeadFvRow] 3 s2Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28HeadFv_Outgoing : rowsOwned s2Step28HeadFvAfter [s2Step28HeadFvOut] :=
  hmrRows_owned_drop s2Step28HeadFvAfter [s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut] 3 s2Step28HeadBank_outgoingOwned
theorem s2Step28HeadBank_rows : planWindowRowsLog s2Step28HeadGBefore [(s2Step28HeadGRow,255),(s2Step28HeadFRow,255),(s2Step28HeadGvRow,29),(s2Step28HeadFvRow,29)] [s2Step28HeadGFresh,s2Step28HeadFFresh,s2Step28HeadGvFresh,s2Step28HeadFvFresh]=
    some (s2Step28HeadFvAfter,[s2Step28HeadGOut,s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut],(growRow 769 s2Step28HeadGFresh ++ (growRow 768 s2Step28HeadFFresh ++ (growRow 771 s2Step28HeadGvFresh ++ (growRow 770 s2Step28HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step28HeadFvAfter [] []=some (s2Step28HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step28HeadFvBefore s2Step28HeadFvAfter s2Step28HeadFvAfter
    s2Step28HeadFvRow s2Step28HeadFvOut 29 s2Step28HeadFvFresh [] [] []
    (growRow 770 s2Step28HeadFvFresh) ([]) s2Step28HeadFv_Incoming s2Step28HeadFv_checked h4 s2Step28HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step28HeadGvBefore s2Step28HeadGvAfter s2Step28HeadFvAfter
    s2Step28HeadGvRow s2Step28HeadGvOut 29 s2Step28HeadGvFresh [(s2Step28HeadFvRow,29)] [s2Step28HeadFvFresh] [s2Step28HeadFvOut]
    (growRow 771 s2Step28HeadGvFresh) ((growRow 770 s2Step28HeadFvFresh ++ [])) s2Step28HeadGv_Incoming s2Step28HeadGv_checked h3 s2Step28HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step28HeadFBefore s2Step28HeadFAfter s2Step28HeadFvAfter
    s2Step28HeadFRow s2Step28HeadFOut 255 s2Step28HeadFFresh [(s2Step28HeadGvRow,29),(s2Step28HeadFvRow,29)] [s2Step28HeadGvFresh,s2Step28HeadFvFresh] [s2Step28HeadGvOut,s2Step28HeadFvOut]
    (growRow 768 s2Step28HeadFFresh) ((growRow 771 s2Step28HeadGvFresh ++ (growRow 770 s2Step28HeadFvFresh ++ []))) s2Step28HeadF_Incoming s2Step28HeadF_checked h2 s2Step28HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step28HeadGBefore s2Step28HeadGAfter s2Step28HeadFvAfter
    s2Step28HeadGRow s2Step28HeadGOut 255 s2Step28HeadGFresh [(s2Step28HeadFRow,255),(s2Step28HeadGvRow,29),(s2Step28HeadFvRow,29)] [s2Step28HeadFFresh,s2Step28HeadGvFresh,s2Step28HeadFvFresh] [s2Step28HeadFOut,s2Step28HeadGvOut,s2Step28HeadFvOut]
    (growRow 769 s2Step28HeadGFresh) ((growRow 768 s2Step28HeadFFresh ++ (growRow 771 s2Step28HeadGvFresh ++ (growRow 770 s2Step28HeadFvFresh ++ [])))) s2Step28HeadG_Incoming s2Step28HeadG_checked h1 s2Step28HeadG_Outgoing
  exact h0
theorem s2Step28HeadBank_checked : compileHmrBankResizeLog .headroom s2Step28HeadGBefore ⟨s2Step28HeadFRow,s2Step28HeadGRow,s2Step28HeadFvRow,s2Step28HeadGvRow⟩ ⟨255,255,29,29⟩ [s2Step28HeadGFresh,s2Step28HeadFFresh,s2Step28HeadGvFresh,s2Step28HeadFvFresh]=
    some (s2Step28HeadFvAfter,⟨s2Step28HeadFOut,s2Step28HeadGOut,s2Step28HeadFvOut,s2Step28HeadGvOut⟩,(growRow 769 s2Step28HeadGFresh ++ (growRow 768 s2Step28HeadFFresh ++ (growRow 771 s2Step28HeadGvFresh ++ (growRow 770 s2Step28HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step28HeadBank_rows]
  rfl
def s2Step29HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779, 785],769⟩
def s2Step29HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩
def s2Step29HeadGvOut : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787, 780],771⟩
def s2Step29HeadFvOut : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
theorem s2Step29HeadBank_incomingDistinct : ([s2Step29HeadGRow,s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29HeadBank_outgoingOwned : rowsOwned s2Step29HeadFvAfter [s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step29HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29HeadG_Incoming : rowsOwned s2Step29HeadGBefore [s2Step29HeadGRow,s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29HeadGRow,s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow] 0 s2Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29HeadG_Outgoing : rowsOwned s2Step29HeadFvAfter [s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] :=
  hmrRows_owned_drop s2Step29HeadFvAfter [s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] 0 s2Step29HeadBank_outgoingOwned
theorem s2Step29HeadF_Incoming : rowsOwned s2Step29HeadFBefore [s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29HeadGRow,s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow] 1 s2Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29HeadF_Outgoing : rowsOwned s2Step29HeadFvAfter [s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] :=
  hmrRows_owned_drop s2Step29HeadFvAfter [s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] 1 s2Step29HeadBank_outgoingOwned
theorem s2Step29HeadGv_Incoming : rowsOwned s2Step29HeadGvBefore [s2Step29HeadGvRow,s2Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29HeadGRow,s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow] 2 s2Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29HeadGv_Outgoing : rowsOwned s2Step29HeadFvAfter [s2Step29HeadGvOut,s2Step29HeadFvOut] :=
  hmrRows_owned_drop s2Step29HeadFvAfter [s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] 2 s2Step29HeadBank_outgoingOwned
theorem s2Step29HeadFv_Incoming : rowsOwned s2Step29HeadFvBefore [s2Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29HeadGRow,s2Step29HeadFRow,s2Step29HeadGvRow,s2Step29HeadFvRow] 3 s2Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29HeadFvBefore (fun q => (0≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29HeadFv_Outgoing : rowsOwned s2Step29HeadFvAfter [s2Step29HeadFvOut] :=
  hmrRows_owned_drop s2Step29HeadFvAfter [s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut] 3 s2Step29HeadBank_outgoingOwned
theorem s2Step29HeadBank_rows : planWindowRowsLog s2Step29HeadGBefore [(s2Step29HeadGRow,255),(s2Step29HeadFRow,255),(s2Step29HeadGvRow,29),(s2Step29HeadFvRow,29)] [s2Step29HeadGFresh,s2Step29HeadFFresh,s2Step29HeadGvFresh,s2Step29HeadFvFresh]=
    some (s2Step29HeadFvAfter,[s2Step29HeadGOut,s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut],(growRow 769 s2Step29HeadGFresh ++ (growRow 768 s2Step29HeadFFresh ++ (growRow 771 s2Step29HeadGvFresh ++ (growRow 770 s2Step29HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step29HeadFvAfter [] []=some (s2Step29HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step29HeadFvBefore s2Step29HeadFvAfter s2Step29HeadFvAfter
    s2Step29HeadFvRow s2Step29HeadFvOut 29 s2Step29HeadFvFresh [] [] []
    (growRow 770 s2Step29HeadFvFresh) ([]) s2Step29HeadFv_Incoming s2Step29HeadFv_checked h4 s2Step29HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step29HeadGvBefore s2Step29HeadGvAfter s2Step29HeadFvAfter
    s2Step29HeadGvRow s2Step29HeadGvOut 29 s2Step29HeadGvFresh [(s2Step29HeadFvRow,29)] [s2Step29HeadFvFresh] [s2Step29HeadFvOut]
    (growRow 771 s2Step29HeadGvFresh) ((growRow 770 s2Step29HeadFvFresh ++ [])) s2Step29HeadGv_Incoming s2Step29HeadGv_checked h3 s2Step29HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step29HeadFBefore s2Step29HeadFAfter s2Step29HeadFvAfter
    s2Step29HeadFRow s2Step29HeadFOut 255 s2Step29HeadFFresh [(s2Step29HeadGvRow,29),(s2Step29HeadFvRow,29)] [s2Step29HeadGvFresh,s2Step29HeadFvFresh] [s2Step29HeadGvOut,s2Step29HeadFvOut]
    (growRow 768 s2Step29HeadFFresh) ((growRow 771 s2Step29HeadGvFresh ++ (growRow 770 s2Step29HeadFvFresh ++ []))) s2Step29HeadF_Incoming s2Step29HeadF_checked h2 s2Step29HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step29HeadGBefore s2Step29HeadGAfter s2Step29HeadFvAfter
    s2Step29HeadGRow s2Step29HeadGOut 255 s2Step29HeadGFresh [(s2Step29HeadFRow,255),(s2Step29HeadGvRow,29),(s2Step29HeadFvRow,29)] [s2Step29HeadFFresh,s2Step29HeadGvFresh,s2Step29HeadFvFresh] [s2Step29HeadFOut,s2Step29HeadGvOut,s2Step29HeadFvOut]
    (growRow 769 s2Step29HeadGFresh) ((growRow 768 s2Step29HeadFFresh ++ (growRow 771 s2Step29HeadGvFresh ++ (growRow 770 s2Step29HeadFvFresh ++ [])))) s2Step29HeadG_Incoming s2Step29HeadG_checked h1 s2Step29HeadG_Outgoing
  exact h0
theorem s2Step29HeadBank_checked : compileHmrBankResizeLog .headroom s2Step29HeadGBefore ⟨s2Step29HeadFRow,s2Step29HeadGRow,s2Step29HeadFvRow,s2Step29HeadGvRow⟩ ⟨255,255,29,29⟩ [s2Step29HeadGFresh,s2Step29HeadFFresh,s2Step29HeadGvFresh,s2Step29HeadFvFresh]=
    some (s2Step29HeadFvAfter,⟨s2Step29HeadFOut,s2Step29HeadGOut,s2Step29HeadFvOut,s2Step29HeadGvOut⟩,(growRow 769 s2Step29HeadGFresh ++ (growRow 768 s2Step29HeadFFresh ++ (growRow 771 s2Step29HeadGvFresh ++ (growRow 770 s2Step29HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step29HeadBank_rows]
  rfl
def s2Step30HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839, 780],769⟩
def s2Step30HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩
def s2Step30HeadGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786, 779],771⟩
def s2Step30HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩
theorem s2Step30HeadBank_incomingDistinct : ([s2Step30HeadGRow,s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30HeadBank_outgoingOwned : rowsOwned s2Step30HeadFvAfter [s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step30HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30HeadG_Incoming : rowsOwned s2Step30HeadGBefore [s2Step30HeadGRow,s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30HeadGRow,s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow] 0 s2Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30HeadG_Outgoing : rowsOwned s2Step30HeadFvAfter [s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] :=
  hmrRows_owned_drop s2Step30HeadFvAfter [s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] 0 s2Step30HeadBank_outgoingOwned
theorem s2Step30HeadF_Incoming : rowsOwned s2Step30HeadFBefore [s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30HeadGRow,s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow] 1 s2Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30HeadF_Outgoing : rowsOwned s2Step30HeadFvAfter [s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] :=
  hmrRows_owned_drop s2Step30HeadFvAfter [s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] 1 s2Step30HeadBank_outgoingOwned
theorem s2Step30HeadGv_Incoming : rowsOwned s2Step30HeadGvBefore [s2Step30HeadGvRow,s2Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30HeadGRow,s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow] 2 s2Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30HeadGv_Outgoing : rowsOwned s2Step30HeadFvAfter [s2Step30HeadGvOut,s2Step30HeadFvOut] :=
  hmrRows_owned_drop s2Step30HeadFvAfter [s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] 2 s2Step30HeadBank_outgoingOwned
theorem s2Step30HeadFv_Incoming : rowsOwned s2Step30HeadFvBefore [s2Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30HeadGRow,s2Step30HeadFRow,s2Step30HeadGvRow,s2Step30HeadFvRow] 3 s2Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30HeadFv_Outgoing : rowsOwned s2Step30HeadFvAfter [s2Step30HeadFvOut] :=
  hmrRows_owned_drop s2Step30HeadFvAfter [s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut] 3 s2Step30HeadBank_outgoingOwned
theorem s2Step30HeadBank_rows : planWindowRowsLog s2Step30HeadGBefore [(s2Step30HeadGRow,254),(s2Step30HeadFRow,254),(s2Step30HeadGvRow,30),(s2Step30HeadFvRow,30)] [s2Step30HeadGFresh,s2Step30HeadFFresh,s2Step30HeadGvFresh,s2Step30HeadFvFresh]=
    some (s2Step30HeadFvAfter,[s2Step30HeadGOut,s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut],(growRow 769 s2Step30HeadGFresh ++ (growRow 768 s2Step30HeadFFresh ++ (growRow 771 s2Step30HeadGvFresh ++ (growRow 770 s2Step30HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step30HeadFvAfter [] []=some (s2Step30HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step30HeadFvBefore s2Step30HeadFvAfter s2Step30HeadFvAfter
    s2Step30HeadFvRow s2Step30HeadFvOut 30 s2Step30HeadFvFresh [] [] []
    (growRow 770 s2Step30HeadFvFresh) ([]) s2Step30HeadFv_Incoming s2Step30HeadFv_checked h4 s2Step30HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step30HeadGvBefore s2Step30HeadGvAfter s2Step30HeadFvAfter
    s2Step30HeadGvRow s2Step30HeadGvOut 30 s2Step30HeadGvFresh [(s2Step30HeadFvRow,30)] [s2Step30HeadFvFresh] [s2Step30HeadFvOut]
    (growRow 771 s2Step30HeadGvFresh) ((growRow 770 s2Step30HeadFvFresh ++ [])) s2Step30HeadGv_Incoming s2Step30HeadGv_checked h3 s2Step30HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step30HeadFBefore s2Step30HeadFAfter s2Step30HeadFvAfter
    s2Step30HeadFRow s2Step30HeadFOut 254 s2Step30HeadFFresh [(s2Step30HeadGvRow,30),(s2Step30HeadFvRow,30)] [s2Step30HeadGvFresh,s2Step30HeadFvFresh] [s2Step30HeadGvOut,s2Step30HeadFvOut]
    (growRow 768 s2Step30HeadFFresh) ((growRow 771 s2Step30HeadGvFresh ++ (growRow 770 s2Step30HeadFvFresh ++ []))) s2Step30HeadF_Incoming s2Step30HeadF_checked h2 s2Step30HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step30HeadGBefore s2Step30HeadGAfter s2Step30HeadFvAfter
    s2Step30HeadGRow s2Step30HeadGOut 254 s2Step30HeadGFresh [(s2Step30HeadFRow,254),(s2Step30HeadGvRow,30),(s2Step30HeadFvRow,30)] [s2Step30HeadFFresh,s2Step30HeadGvFresh,s2Step30HeadFvFresh] [s2Step30HeadFOut,s2Step30HeadGvOut,s2Step30HeadFvOut]
    (growRow 769 s2Step30HeadGFresh) ((growRow 768 s2Step30HeadFFresh ++ (growRow 771 s2Step30HeadGvFresh ++ (growRow 770 s2Step30HeadFvFresh ++ [])))) s2Step30HeadG_Incoming s2Step30HeadG_checked h1 s2Step30HeadG_Outgoing
  exact h0
theorem s2Step30HeadBank_checked : compileHmrBankResizeLog .headroom s2Step30HeadGBefore ⟨s2Step30HeadFRow,s2Step30HeadGRow,s2Step30HeadFvRow,s2Step30HeadGvRow⟩ ⟨254,254,30,30⟩ [s2Step30HeadGFresh,s2Step30HeadFFresh,s2Step30HeadGvFresh,s2Step30HeadFvFresh]=
    some (s2Step30HeadFvAfter,⟨s2Step30HeadFOut,s2Step30HeadGOut,s2Step30HeadFvOut,s2Step30HeadGvOut⟩,(growRow 769 s2Step30HeadGFresh ++ (growRow 768 s2Step30HeadFFresh ++ (growRow 771 s2Step30HeadGvFresh ++ (growRow 770 s2Step30HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step30HeadBank_rows]
  rfl
def s2Step31HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787, 785],769⟩
def s2Step31HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩
def s2Step31HeadGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789, 839],771⟩
def s2Step31HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 780],770⟩
theorem s2Step31HeadBank_incomingDistinct : ([s2Step31HeadGRow,s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31HeadBank_outgoingOwned : rowsOwned s2Step31HeadFvAfter [s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step31HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31HeadG_Incoming : rowsOwned s2Step31HeadGBefore [s2Step31HeadGRow,s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31HeadGRow,s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow] 0 s2Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31HeadG_Outgoing : rowsOwned s2Step31HeadFvAfter [s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] :=
  hmrRows_owned_drop s2Step31HeadFvAfter [s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] 0 s2Step31HeadBank_outgoingOwned
theorem s2Step31HeadF_Incoming : rowsOwned s2Step31HeadFBefore [s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31HeadGRow,s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow] 1 s2Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31HeadF_Outgoing : rowsOwned s2Step31HeadFvAfter [s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] :=
  hmrRows_owned_drop s2Step31HeadFvAfter [s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] 1 s2Step31HeadBank_outgoingOwned
theorem s2Step31HeadGv_Incoming : rowsOwned s2Step31HeadGvBefore [s2Step31HeadGvRow,s2Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31HeadGRow,s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow] 2 s2Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31HeadGv_Outgoing : rowsOwned s2Step31HeadFvAfter [s2Step31HeadGvOut,s2Step31HeadFvOut] :=
  hmrRows_owned_drop s2Step31HeadFvAfter [s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] 2 s2Step31HeadBank_outgoingOwned
theorem s2Step31HeadFv_Incoming : rowsOwned s2Step31HeadFvBefore [s2Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31HeadGRow,s2Step31HeadFRow,s2Step31HeadGvRow,s2Step31HeadFvRow] 3 s2Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31HeadFv_Outgoing : rowsOwned s2Step31HeadFvAfter [s2Step31HeadFvOut] :=
  hmrRows_owned_drop s2Step31HeadFvAfter [s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut] 3 s2Step31HeadBank_outgoingOwned
theorem s2Step31HeadBank_rows : planWindowRowsLog s2Step31HeadGBefore [(s2Step31HeadGRow,254),(s2Step31HeadFRow,254),(s2Step31HeadGvRow,30),(s2Step31HeadFvRow,30)] [s2Step31HeadGFresh,s2Step31HeadFFresh,s2Step31HeadGvFresh,s2Step31HeadFvFresh]=
    some (s2Step31HeadFvAfter,[s2Step31HeadGOut,s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut],(growRow 769 s2Step31HeadGFresh ++ (growRow 768 s2Step31HeadFFresh ++ (growRow 771 s2Step31HeadGvFresh ++ (growRow 770 s2Step31HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step31HeadFvAfter [] []=some (s2Step31HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step31HeadFvBefore s2Step31HeadFvAfter s2Step31HeadFvAfter
    s2Step31HeadFvRow s2Step31HeadFvOut 30 s2Step31HeadFvFresh [] [] []
    (growRow 770 s2Step31HeadFvFresh) ([]) s2Step31HeadFv_Incoming s2Step31HeadFv_checked h4 s2Step31HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step31HeadGvBefore s2Step31HeadGvAfter s2Step31HeadFvAfter
    s2Step31HeadGvRow s2Step31HeadGvOut 30 s2Step31HeadGvFresh [(s2Step31HeadFvRow,30)] [s2Step31HeadFvFresh] [s2Step31HeadFvOut]
    (growRow 771 s2Step31HeadGvFresh) ((growRow 770 s2Step31HeadFvFresh ++ [])) s2Step31HeadGv_Incoming s2Step31HeadGv_checked h3 s2Step31HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step31HeadFBefore s2Step31HeadFAfter s2Step31HeadFvAfter
    s2Step31HeadFRow s2Step31HeadFOut 254 s2Step31HeadFFresh [(s2Step31HeadGvRow,30),(s2Step31HeadFvRow,30)] [s2Step31HeadGvFresh,s2Step31HeadFvFresh] [s2Step31HeadGvOut,s2Step31HeadFvOut]
    (growRow 768 s2Step31HeadFFresh) ((growRow 771 s2Step31HeadGvFresh ++ (growRow 770 s2Step31HeadFvFresh ++ []))) s2Step31HeadF_Incoming s2Step31HeadF_checked h2 s2Step31HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step31HeadGBefore s2Step31HeadGAfter s2Step31HeadFvAfter
    s2Step31HeadGRow s2Step31HeadGOut 254 s2Step31HeadGFresh [(s2Step31HeadFRow,254),(s2Step31HeadGvRow,30),(s2Step31HeadFvRow,30)] [s2Step31HeadFFresh,s2Step31HeadGvFresh,s2Step31HeadFvFresh] [s2Step31HeadFOut,s2Step31HeadGvOut,s2Step31HeadFvOut]
    (growRow 769 s2Step31HeadGFresh) ((growRow 768 s2Step31HeadFFresh ++ (growRow 771 s2Step31HeadGvFresh ++ (growRow 770 s2Step31HeadFvFresh ++ [])))) s2Step31HeadG_Incoming s2Step31HeadG_checked h1 s2Step31HeadG_Outgoing
  exact h0
theorem s2Step31HeadBank_checked : compileHmrBankResizeLog .headroom s2Step31HeadGBefore ⟨s2Step31HeadFRow,s2Step31HeadGRow,s2Step31HeadFvRow,s2Step31HeadGvRow⟩ ⟨254,254,30,30⟩ [s2Step31HeadGFresh,s2Step31HeadFFresh,s2Step31HeadGvFresh,s2Step31HeadFvFresh]=
    some (s2Step31HeadFvAfter,⟨s2Step31HeadFOut,s2Step31HeadGOut,s2Step31HeadFvOut,s2Step31HeadGvOut⟩,(growRow 769 s2Step31HeadGFresh ++ (growRow 768 s2Step31HeadFFresh ++ (growRow 771 s2Step31HeadGvFresh ++ (growRow 770 s2Step31HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step31HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
