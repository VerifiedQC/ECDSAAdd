import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 782],769⟩
def s2Step0HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step0HeadGvOut : WindowRow := ⟨[779, 784],771⟩
def s2Step0HeadFvOut : WindowRow := ⟨[778, 785],770⟩
theorem s2Step0HeadBank_incomingDistinct : ([s2Step0HeadGRow,s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0HeadBank_outgoingOwned : rowsOwned s2Step0HeadFvAfter [s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0HeadFvAfter (fun q => (0≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0HeadG_Incoming : rowsOwned s2Step0HeadGBefore [s2Step0HeadGRow,s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0HeadGRow,s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow] 0 s2Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0HeadGBefore (fun q => (0≤q ∧ q<782)) rfl
    decide +kernel
theorem s2Step0HeadG_Outgoing : rowsOwned s2Step0HeadFvAfter [s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] :=
  hmrRows_owned_drop s2Step0HeadFvAfter [s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] 0 s2Step0HeadBank_outgoingOwned
theorem s2Step0HeadF_Incoming : rowsOwned s2Step0HeadFBefore [s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0HeadGRow,s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow] 1 s2Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0HeadFBefore (fun q => (0≤q ∧ q<783)) rfl
    decide +kernel
theorem s2Step0HeadF_Outgoing : rowsOwned s2Step0HeadFvAfter [s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] :=
  hmrRows_owned_drop s2Step0HeadFvAfter [s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] 1 s2Step0HeadBank_outgoingOwned
theorem s2Step0HeadGv_Incoming : rowsOwned s2Step0HeadGvBefore [s2Step0HeadGvRow,s2Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0HeadGRow,s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow] 2 s2Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0HeadGvBefore (fun q => (0≤q ∧ q<784)) rfl
    decide +kernel
theorem s2Step0HeadGv_Outgoing : rowsOwned s2Step0HeadFvAfter [s2Step0HeadGvOut,s2Step0HeadFvOut] :=
  hmrRows_owned_drop s2Step0HeadFvAfter [s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] 2 s2Step0HeadBank_outgoingOwned
theorem s2Step0HeadFv_Incoming : rowsOwned s2Step0HeadFvBefore [s2Step0HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0HeadGRow,s2Step0HeadFRow,s2Step0HeadGvRow,s2Step0HeadFvRow] 3 s2Step0HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0HeadFvBefore (fun q => (0≤q ∧ q<785)) rfl
    decide +kernel
theorem s2Step0HeadFv_Outgoing : rowsOwned s2Step0HeadFvAfter [s2Step0HeadFvOut] :=
  hmrRows_owned_drop s2Step0HeadFvAfter [s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut] 3 s2Step0HeadBank_outgoingOwned
theorem s2Step0HeadBank_rows : planWindowRowsLog s2Step0HeadGBefore [(s2Step0HeadGRow,257),(s2Step0HeadFRow,257),(s2Step0HeadGvRow,2),(s2Step0HeadFvRow,2)] [s2Step0HeadGFresh,s2Step0HeadFFresh,s2Step0HeadGvFresh,s2Step0HeadFvFresh]=
    some (s2Step0HeadFvAfter,[s2Step0HeadGOut,s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut],(growRow 769 s2Step0HeadGFresh ++ (growRow 768 s2Step0HeadFFresh ++ (growRow 771 s2Step0HeadGvFresh ++ (growRow 770 s2Step0HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step0HeadFvAfter [] []=some (s2Step0HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step0HeadFvBefore s2Step0HeadFvAfter s2Step0HeadFvAfter
    s2Step0HeadFvRow s2Step0HeadFvOut 2 s2Step0HeadFvFresh [] [] []
    (growRow 770 s2Step0HeadFvFresh) ([]) s2Step0HeadFv_Incoming s2Step0HeadFv_checked h4 s2Step0HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step0HeadGvBefore s2Step0HeadGvAfter s2Step0HeadFvAfter
    s2Step0HeadGvRow s2Step0HeadGvOut 2 s2Step0HeadGvFresh [(s2Step0HeadFvRow,2)] [s2Step0HeadFvFresh] [s2Step0HeadFvOut]
    (growRow 771 s2Step0HeadGvFresh) ((growRow 770 s2Step0HeadFvFresh ++ [])) s2Step0HeadGv_Incoming s2Step0HeadGv_checked h3 s2Step0HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step0HeadFBefore s2Step0HeadFAfter s2Step0HeadFvAfter
    s2Step0HeadFRow s2Step0HeadFOut 257 s2Step0HeadFFresh [(s2Step0HeadGvRow,2),(s2Step0HeadFvRow,2)] [s2Step0HeadGvFresh,s2Step0HeadFvFresh] [s2Step0HeadGvOut,s2Step0HeadFvOut]
    (growRow 768 s2Step0HeadFFresh) ((growRow 771 s2Step0HeadGvFresh ++ (growRow 770 s2Step0HeadFvFresh ++ []))) s2Step0HeadF_Incoming s2Step0HeadF_checked h2 s2Step0HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step0HeadGBefore s2Step0HeadGAfter s2Step0HeadFvAfter
    s2Step0HeadGRow s2Step0HeadGOut 257 s2Step0HeadGFresh [(s2Step0HeadFRow,257),(s2Step0HeadGvRow,2),(s2Step0HeadFvRow,2)] [s2Step0HeadFFresh,s2Step0HeadGvFresh,s2Step0HeadFvFresh] [s2Step0HeadFOut,s2Step0HeadGvOut,s2Step0HeadFvOut]
    (growRow 769 s2Step0HeadGFresh) ((growRow 768 s2Step0HeadFFresh ++ (growRow 771 s2Step0HeadGvFresh ++ (growRow 770 s2Step0HeadFvFresh ++ [])))) s2Step0HeadG_Incoming s2Step0HeadG_checked h1 s2Step0HeadG_Outgoing
  exact h0
theorem s2Step0HeadBank_checked : compileHmrBankResizeLog .headroom s2Step0HeadGBefore ⟨s2Step0HeadFRow,s2Step0HeadGRow,s2Step0HeadFvRow,s2Step0HeadGvRow⟩ ⟨257,257,2,2⟩ [s2Step0HeadGFresh,s2Step0HeadFFresh,s2Step0HeadGvFresh,s2Step0HeadFvFresh]=
    some (s2Step0HeadFvAfter,⟨s2Step0HeadFOut,s2Step0HeadGOut,s2Step0HeadFvOut,s2Step0HeadGvOut⟩,(growRow 769 s2Step0HeadGFresh ++ (growRow 768 s2Step0HeadFFresh ++ (growRow 771 s2Step0HeadGvFresh ++ (growRow 770 s2Step0HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step0HeadBank_rows]
  rfl
def s2Step1HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step1HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step1HeadGvOut : WindowRow := ⟨[779, 780, 786],771⟩
def s2Step1HeadFvOut : WindowRow := ⟨[255, 785, 787],770⟩
theorem s2Step1HeadBank_incomingDistinct : ([s2Step1HeadGRow,s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1HeadBank_outgoingOwned : rowsOwned s2Step1HeadFvAfter [s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step1HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1HeadG_Incoming : rowsOwned s2Step1HeadGBefore [s2Step1HeadGRow,s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1HeadGRow,s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow] 0 s2Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1HeadG_Outgoing : rowsOwned s2Step1HeadFvAfter [s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] :=
  hmrRows_owned_drop s2Step1HeadFvAfter [s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] 0 s2Step1HeadBank_outgoingOwned
theorem s2Step1HeadF_Incoming : rowsOwned s2Step1HeadFBefore [s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1HeadGRow,s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow] 1 s2Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1HeadF_Outgoing : rowsOwned s2Step1HeadFvAfter [s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] :=
  hmrRows_owned_drop s2Step1HeadFvAfter [s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] 1 s2Step1HeadBank_outgoingOwned
theorem s2Step1HeadGv_Incoming : rowsOwned s2Step1HeadGvBefore [s2Step1HeadGvRow,s2Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1HeadGRow,s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow] 2 s2Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1HeadGvBefore (fun q => (0≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1HeadGv_Outgoing : rowsOwned s2Step1HeadFvAfter [s2Step1HeadGvOut,s2Step1HeadFvOut] :=
  hmrRows_owned_drop s2Step1HeadFvAfter [s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] 2 s2Step1HeadBank_outgoingOwned
theorem s2Step1HeadFv_Incoming : rowsOwned s2Step1HeadFvBefore [s2Step1HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1HeadGRow,s2Step1HeadFRow,s2Step1HeadGvRow,s2Step1HeadFvRow] 3 s2Step1HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1HeadFv_Outgoing : rowsOwned s2Step1HeadFvAfter [s2Step1HeadFvOut] :=
  hmrRows_owned_drop s2Step1HeadFvAfter [s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut] 3 s2Step1HeadBank_outgoingOwned
theorem s2Step1HeadBank_rows : planWindowRowsLog s2Step1HeadGBefore [(s2Step1HeadGRow,257),(s2Step1HeadFRow,257),(s2Step1HeadGvRow,3),(s2Step1HeadFvRow,3)] [s2Step1HeadGFresh,s2Step1HeadFFresh,s2Step1HeadGvFresh,s2Step1HeadFvFresh]=
    some (s2Step1HeadFvAfter,[s2Step1HeadGOut,s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut],(growRow 769 s2Step1HeadGFresh ++ (growRow 768 s2Step1HeadFFresh ++ (growRow 771 s2Step1HeadGvFresh ++ (growRow 770 s2Step1HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step1HeadFvAfter [] []=some (s2Step1HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step1HeadFvBefore s2Step1HeadFvAfter s2Step1HeadFvAfter
    s2Step1HeadFvRow s2Step1HeadFvOut 3 s2Step1HeadFvFresh [] [] []
    (growRow 770 s2Step1HeadFvFresh) ([]) s2Step1HeadFv_Incoming s2Step1HeadFv_checked h4 s2Step1HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step1HeadGvBefore s2Step1HeadGvAfter s2Step1HeadFvAfter
    s2Step1HeadGvRow s2Step1HeadGvOut 3 s2Step1HeadGvFresh [(s2Step1HeadFvRow,3)] [s2Step1HeadFvFresh] [s2Step1HeadFvOut]
    (growRow 771 s2Step1HeadGvFresh) ((growRow 770 s2Step1HeadFvFresh ++ [])) s2Step1HeadGv_Incoming s2Step1HeadGv_checked h3 s2Step1HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step1HeadFBefore s2Step1HeadFAfter s2Step1HeadFvAfter
    s2Step1HeadFRow s2Step1HeadFOut 257 s2Step1HeadFFresh [(s2Step1HeadGvRow,3),(s2Step1HeadFvRow,3)] [s2Step1HeadGvFresh,s2Step1HeadFvFresh] [s2Step1HeadGvOut,s2Step1HeadFvOut]
    (growRow 768 s2Step1HeadFFresh) ((growRow 771 s2Step1HeadGvFresh ++ (growRow 770 s2Step1HeadFvFresh ++ []))) s2Step1HeadF_Incoming s2Step1HeadF_checked h2 s2Step1HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step1HeadGBefore s2Step1HeadGAfter s2Step1HeadFvAfter
    s2Step1HeadGRow s2Step1HeadGOut 257 s2Step1HeadGFresh [(s2Step1HeadFRow,257),(s2Step1HeadGvRow,3),(s2Step1HeadFvRow,3)] [s2Step1HeadFFresh,s2Step1HeadGvFresh,s2Step1HeadFvFresh] [s2Step1HeadFOut,s2Step1HeadGvOut,s2Step1HeadFvOut]
    (growRow 769 s2Step1HeadGFresh) ((growRow 768 s2Step1HeadFFresh ++ (growRow 771 s2Step1HeadGvFresh ++ (growRow 770 s2Step1HeadFvFresh ++ [])))) s2Step1HeadG_Incoming s2Step1HeadG_checked h1 s2Step1HeadG_Outgoing
  exact h0
theorem s2Step1HeadBank_checked : compileHmrBankResizeLog .headroom s2Step1HeadGBefore ⟨s2Step1HeadFRow,s2Step1HeadGRow,s2Step1HeadFvRow,s2Step1HeadGvRow⟩ ⟨257,257,3,3⟩ [s2Step1HeadGFresh,s2Step1HeadFFresh,s2Step1HeadGvFresh,s2Step1HeadFvFresh]=
    some (s2Step1HeadFvAfter,⟨s2Step1HeadFOut,s2Step1HeadGOut,s2Step1HeadFvOut,s2Step1HeadGvOut⟩,(growRow 769 s2Step1HeadGFresh ++ (growRow 768 s2Step1HeadFFresh ++ (growRow 771 s2Step1HeadGvFresh ++ (growRow 770 s2Step1HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step1HeadBank_rows]
  rfl
def s2Step2HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step2HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step2HeadGvOut : WindowRow := ⟨[779, 778, 780, 788],771⟩
def s2Step2HeadFvOut : WindowRow := ⟨[255, 785, 787, 789],770⟩
theorem s2Step2HeadBank_incomingDistinct : ([s2Step2HeadGRow,s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2HeadBank_outgoingOwned : rowsOwned s2Step2HeadFvAfter [s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step2HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2HeadG_Incoming : rowsOwned s2Step2HeadGBefore [s2Step2HeadGRow,s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2HeadGRow,s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow] 0 s2Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2HeadG_Outgoing : rowsOwned s2Step2HeadFvAfter [s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] :=
  hmrRows_owned_drop s2Step2HeadFvAfter [s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] 0 s2Step2HeadBank_outgoingOwned
theorem s2Step2HeadF_Incoming : rowsOwned s2Step2HeadFBefore [s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2HeadGRow,s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow] 1 s2Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2HeadF_Outgoing : rowsOwned s2Step2HeadFvAfter [s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] :=
  hmrRows_owned_drop s2Step2HeadFvAfter [s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] 1 s2Step2HeadBank_outgoingOwned
theorem s2Step2HeadGv_Incoming : rowsOwned s2Step2HeadGvBefore [s2Step2HeadGvRow,s2Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2HeadGRow,s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow] 2 s2Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2HeadGv_Outgoing : rowsOwned s2Step2HeadFvAfter [s2Step2HeadGvOut,s2Step2HeadFvOut] :=
  hmrRows_owned_drop s2Step2HeadFvAfter [s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] 2 s2Step2HeadBank_outgoingOwned
theorem s2Step2HeadFv_Incoming : rowsOwned s2Step2HeadFvBefore [s2Step2HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2HeadGRow,s2Step2HeadFRow,s2Step2HeadGvRow,s2Step2HeadFvRow] 3 s2Step2HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2HeadFv_Outgoing : rowsOwned s2Step2HeadFvAfter [s2Step2HeadFvOut] :=
  hmrRows_owned_drop s2Step2HeadFvAfter [s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut] 3 s2Step2HeadBank_outgoingOwned
theorem s2Step2HeadBank_rows : planWindowRowsLog s2Step2HeadGBefore [(s2Step2HeadGRow,257),(s2Step2HeadFRow,257),(s2Step2HeadGvRow,4),(s2Step2HeadFvRow,4)] [s2Step2HeadGFresh,s2Step2HeadFFresh,s2Step2HeadGvFresh,s2Step2HeadFvFresh]=
    some (s2Step2HeadFvAfter,[s2Step2HeadGOut,s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut],(growRow 769 s2Step2HeadGFresh ++ (growRow 768 s2Step2HeadFFresh ++ (growRow 771 s2Step2HeadGvFresh ++ (growRow 770 s2Step2HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step2HeadFvAfter [] []=some (s2Step2HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step2HeadFvBefore s2Step2HeadFvAfter s2Step2HeadFvAfter
    s2Step2HeadFvRow s2Step2HeadFvOut 4 s2Step2HeadFvFresh [] [] []
    (growRow 770 s2Step2HeadFvFresh) ([]) s2Step2HeadFv_Incoming s2Step2HeadFv_checked h4 s2Step2HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step2HeadGvBefore s2Step2HeadGvAfter s2Step2HeadFvAfter
    s2Step2HeadGvRow s2Step2HeadGvOut 4 s2Step2HeadGvFresh [(s2Step2HeadFvRow,4)] [s2Step2HeadFvFresh] [s2Step2HeadFvOut]
    (growRow 771 s2Step2HeadGvFresh) ((growRow 770 s2Step2HeadFvFresh ++ [])) s2Step2HeadGv_Incoming s2Step2HeadGv_checked h3 s2Step2HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step2HeadFBefore s2Step2HeadFAfter s2Step2HeadFvAfter
    s2Step2HeadFRow s2Step2HeadFOut 257 s2Step2HeadFFresh [(s2Step2HeadGvRow,4),(s2Step2HeadFvRow,4)] [s2Step2HeadGvFresh,s2Step2HeadFvFresh] [s2Step2HeadGvOut,s2Step2HeadFvOut]
    (growRow 768 s2Step2HeadFFresh) ((growRow 771 s2Step2HeadGvFresh ++ (growRow 770 s2Step2HeadFvFresh ++ []))) s2Step2HeadF_Incoming s2Step2HeadF_checked h2 s2Step2HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step2HeadGBefore s2Step2HeadGAfter s2Step2HeadFvAfter
    s2Step2HeadGRow s2Step2HeadGOut 257 s2Step2HeadGFresh [(s2Step2HeadFRow,257),(s2Step2HeadGvRow,4),(s2Step2HeadFvRow,4)] [s2Step2HeadFFresh,s2Step2HeadGvFresh,s2Step2HeadFvFresh] [s2Step2HeadFOut,s2Step2HeadGvOut,s2Step2HeadFvOut]
    (growRow 769 s2Step2HeadGFresh) ((growRow 768 s2Step2HeadFFresh ++ (growRow 771 s2Step2HeadGvFresh ++ (growRow 770 s2Step2HeadFvFresh ++ [])))) s2Step2HeadG_Incoming s2Step2HeadG_checked h1 s2Step2HeadG_Outgoing
  exact h0
theorem s2Step2HeadBank_checked : compileHmrBankResizeLog .headroom s2Step2HeadGBefore ⟨s2Step2HeadFRow,s2Step2HeadGRow,s2Step2HeadFvRow,s2Step2HeadGvRow⟩ ⟨257,257,4,4⟩ [s2Step2HeadGFresh,s2Step2HeadFFresh,s2Step2HeadGvFresh,s2Step2HeadFvFresh]=
    some (s2Step2HeadFvAfter,⟨s2Step2HeadFOut,s2Step2HeadGOut,s2Step2HeadFvOut,s2Step2HeadGvOut⟩,(growRow 769 s2Step2HeadGFresh ++ (growRow 768 s2Step2HeadFFresh ++ (growRow 771 s2Step2HeadGvFresh ++ (growRow 770 s2Step2HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step2HeadBank_rows]
  rfl
def s2Step3HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step3HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step3HeadGvOut : WindowRow := ⟨[779, 778, 786, 780, 790],771⟩
def s2Step3HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791],770⟩
theorem s2Step3HeadBank_incomingDistinct : ([s2Step3HeadGRow,s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3HeadBank_outgoingOwned : rowsOwned s2Step3HeadFvAfter [s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step3HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3HeadG_Incoming : rowsOwned s2Step3HeadGBefore [s2Step3HeadGRow,s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3HeadGRow,s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow] 0 s2Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3HeadG_Outgoing : rowsOwned s2Step3HeadFvAfter [s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] :=
  hmrRows_owned_drop s2Step3HeadFvAfter [s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] 0 s2Step3HeadBank_outgoingOwned
theorem s2Step3HeadF_Incoming : rowsOwned s2Step3HeadFBefore [s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3HeadGRow,s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow] 1 s2Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3HeadF_Outgoing : rowsOwned s2Step3HeadFvAfter [s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] :=
  hmrRows_owned_drop s2Step3HeadFvAfter [s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] 1 s2Step3HeadBank_outgoingOwned
theorem s2Step3HeadGv_Incoming : rowsOwned s2Step3HeadGvBefore [s2Step3HeadGvRow,s2Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3HeadGRow,s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow] 2 s2Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3HeadGv_Outgoing : rowsOwned s2Step3HeadFvAfter [s2Step3HeadGvOut,s2Step3HeadFvOut] :=
  hmrRows_owned_drop s2Step3HeadFvAfter [s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] 2 s2Step3HeadBank_outgoingOwned
theorem s2Step3HeadFv_Incoming : rowsOwned s2Step3HeadFvBefore [s2Step3HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3HeadGRow,s2Step3HeadFRow,s2Step3HeadGvRow,s2Step3HeadFvRow] 3 s2Step3HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3HeadFv_Outgoing : rowsOwned s2Step3HeadFvAfter [s2Step3HeadFvOut] :=
  hmrRows_owned_drop s2Step3HeadFvAfter [s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut] 3 s2Step3HeadBank_outgoingOwned
theorem s2Step3HeadBank_rows : planWindowRowsLog s2Step3HeadGBefore [(s2Step3HeadGRow,257),(s2Step3HeadFRow,257),(s2Step3HeadGvRow,5),(s2Step3HeadFvRow,5)] [s2Step3HeadGFresh,s2Step3HeadFFresh,s2Step3HeadGvFresh,s2Step3HeadFvFresh]=
    some (s2Step3HeadFvAfter,[s2Step3HeadGOut,s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut],(growRow 769 s2Step3HeadGFresh ++ (growRow 768 s2Step3HeadFFresh ++ (growRow 771 s2Step3HeadGvFresh ++ (growRow 770 s2Step3HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step3HeadFvAfter [] []=some (s2Step3HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step3HeadFvBefore s2Step3HeadFvAfter s2Step3HeadFvAfter
    s2Step3HeadFvRow s2Step3HeadFvOut 5 s2Step3HeadFvFresh [] [] []
    (growRow 770 s2Step3HeadFvFresh) ([]) s2Step3HeadFv_Incoming s2Step3HeadFv_checked h4 s2Step3HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step3HeadGvBefore s2Step3HeadGvAfter s2Step3HeadFvAfter
    s2Step3HeadGvRow s2Step3HeadGvOut 5 s2Step3HeadGvFresh [(s2Step3HeadFvRow,5)] [s2Step3HeadFvFresh] [s2Step3HeadFvOut]
    (growRow 771 s2Step3HeadGvFresh) ((growRow 770 s2Step3HeadFvFresh ++ [])) s2Step3HeadGv_Incoming s2Step3HeadGv_checked h3 s2Step3HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step3HeadFBefore s2Step3HeadFAfter s2Step3HeadFvAfter
    s2Step3HeadFRow s2Step3HeadFOut 257 s2Step3HeadFFresh [(s2Step3HeadGvRow,5),(s2Step3HeadFvRow,5)] [s2Step3HeadGvFresh,s2Step3HeadFvFresh] [s2Step3HeadGvOut,s2Step3HeadFvOut]
    (growRow 768 s2Step3HeadFFresh) ((growRow 771 s2Step3HeadGvFresh ++ (growRow 770 s2Step3HeadFvFresh ++ []))) s2Step3HeadF_Incoming s2Step3HeadF_checked h2 s2Step3HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step3HeadGBefore s2Step3HeadGAfter s2Step3HeadFvAfter
    s2Step3HeadGRow s2Step3HeadGOut 257 s2Step3HeadGFresh [(s2Step3HeadFRow,257),(s2Step3HeadGvRow,5),(s2Step3HeadFvRow,5)] [s2Step3HeadFFresh,s2Step3HeadGvFresh,s2Step3HeadFvFresh] [s2Step3HeadFOut,s2Step3HeadGvOut,s2Step3HeadFvOut]
    (growRow 769 s2Step3HeadGFresh) ((growRow 768 s2Step3HeadFFresh ++ (growRow 771 s2Step3HeadGvFresh ++ (growRow 770 s2Step3HeadFvFresh ++ [])))) s2Step3HeadG_Incoming s2Step3HeadG_checked h1 s2Step3HeadG_Outgoing
  exact h0
theorem s2Step3HeadBank_checked : compileHmrBankResizeLog .headroom s2Step3HeadGBefore ⟨s2Step3HeadFRow,s2Step3HeadGRow,s2Step3HeadFvRow,s2Step3HeadGvRow⟩ ⟨257,257,5,5⟩ [s2Step3HeadGFresh,s2Step3HeadFFresh,s2Step3HeadGvFresh,s2Step3HeadFvFresh]=
    some (s2Step3HeadFvAfter,⟨s2Step3HeadFOut,s2Step3HeadGOut,s2Step3HeadFvOut,s2Step3HeadGvOut⟩,(growRow 769 s2Step3HeadGFresh ++ (growRow 768 s2Step3HeadFFresh ++ (growRow 771 s2Step3HeadGvFresh ++ (growRow 770 s2Step3HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step3HeadBank_rows]
  rfl
def s2Step4HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step4HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step4HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 780, 792],771⟩
def s2Step4HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793],770⟩
theorem s2Step4HeadBank_incomingDistinct : ([s2Step4HeadGRow,s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4HeadBank_outgoingOwned : rowsOwned s2Step4HeadFvAfter [s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step4HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4HeadG_Incoming : rowsOwned s2Step4HeadGBefore [s2Step4HeadGRow,s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4HeadGRow,s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow] 0 s2Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4HeadG_Outgoing : rowsOwned s2Step4HeadFvAfter [s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] :=
  hmrRows_owned_drop s2Step4HeadFvAfter [s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] 0 s2Step4HeadBank_outgoingOwned
theorem s2Step4HeadF_Incoming : rowsOwned s2Step4HeadFBefore [s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4HeadGRow,s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow] 1 s2Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4HeadF_Outgoing : rowsOwned s2Step4HeadFvAfter [s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] :=
  hmrRows_owned_drop s2Step4HeadFvAfter [s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] 1 s2Step4HeadBank_outgoingOwned
theorem s2Step4HeadGv_Incoming : rowsOwned s2Step4HeadGvBefore [s2Step4HeadGvRow,s2Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4HeadGRow,s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow] 2 s2Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4HeadGv_Outgoing : rowsOwned s2Step4HeadFvAfter [s2Step4HeadGvOut,s2Step4HeadFvOut] :=
  hmrRows_owned_drop s2Step4HeadFvAfter [s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] 2 s2Step4HeadBank_outgoingOwned
theorem s2Step4HeadFv_Incoming : rowsOwned s2Step4HeadFvBefore [s2Step4HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4HeadGRow,s2Step4HeadFRow,s2Step4HeadGvRow,s2Step4HeadFvRow] 3 s2Step4HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4HeadFv_Outgoing : rowsOwned s2Step4HeadFvAfter [s2Step4HeadFvOut] :=
  hmrRows_owned_drop s2Step4HeadFvAfter [s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut] 3 s2Step4HeadBank_outgoingOwned
theorem s2Step4HeadBank_rows : planWindowRowsLog s2Step4HeadGBefore [(s2Step4HeadGRow,257),(s2Step4HeadFRow,257),(s2Step4HeadGvRow,6),(s2Step4HeadFvRow,6)] [s2Step4HeadGFresh,s2Step4HeadFFresh,s2Step4HeadGvFresh,s2Step4HeadFvFresh]=
    some (s2Step4HeadFvAfter,[s2Step4HeadGOut,s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut],(growRow 769 s2Step4HeadGFresh ++ (growRow 768 s2Step4HeadFFresh ++ (growRow 771 s2Step4HeadGvFresh ++ (growRow 770 s2Step4HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step4HeadFvAfter [] []=some (s2Step4HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step4HeadFvBefore s2Step4HeadFvAfter s2Step4HeadFvAfter
    s2Step4HeadFvRow s2Step4HeadFvOut 6 s2Step4HeadFvFresh [] [] []
    (growRow 770 s2Step4HeadFvFresh) ([]) s2Step4HeadFv_Incoming s2Step4HeadFv_checked h4 s2Step4HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step4HeadGvBefore s2Step4HeadGvAfter s2Step4HeadFvAfter
    s2Step4HeadGvRow s2Step4HeadGvOut 6 s2Step4HeadGvFresh [(s2Step4HeadFvRow,6)] [s2Step4HeadFvFresh] [s2Step4HeadFvOut]
    (growRow 771 s2Step4HeadGvFresh) ((growRow 770 s2Step4HeadFvFresh ++ [])) s2Step4HeadGv_Incoming s2Step4HeadGv_checked h3 s2Step4HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step4HeadFBefore s2Step4HeadFAfter s2Step4HeadFvAfter
    s2Step4HeadFRow s2Step4HeadFOut 257 s2Step4HeadFFresh [(s2Step4HeadGvRow,6),(s2Step4HeadFvRow,6)] [s2Step4HeadGvFresh,s2Step4HeadFvFresh] [s2Step4HeadGvOut,s2Step4HeadFvOut]
    (growRow 768 s2Step4HeadFFresh) ((growRow 771 s2Step4HeadGvFresh ++ (growRow 770 s2Step4HeadFvFresh ++ []))) s2Step4HeadF_Incoming s2Step4HeadF_checked h2 s2Step4HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step4HeadGBefore s2Step4HeadGAfter s2Step4HeadFvAfter
    s2Step4HeadGRow s2Step4HeadGOut 257 s2Step4HeadGFresh [(s2Step4HeadFRow,257),(s2Step4HeadGvRow,6),(s2Step4HeadFvRow,6)] [s2Step4HeadFFresh,s2Step4HeadGvFresh,s2Step4HeadFvFresh] [s2Step4HeadFOut,s2Step4HeadGvOut,s2Step4HeadFvOut]
    (growRow 769 s2Step4HeadGFresh) ((growRow 768 s2Step4HeadFFresh ++ (growRow 771 s2Step4HeadGvFresh ++ (growRow 770 s2Step4HeadFvFresh ++ [])))) s2Step4HeadG_Incoming s2Step4HeadG_checked h1 s2Step4HeadG_Outgoing
  exact h0
theorem s2Step4HeadBank_checked : compileHmrBankResizeLog .headroom s2Step4HeadGBefore ⟨s2Step4HeadFRow,s2Step4HeadGRow,s2Step4HeadFvRow,s2Step4HeadGvRow⟩ ⟨257,257,6,6⟩ [s2Step4HeadGFresh,s2Step4HeadFFresh,s2Step4HeadGvFresh,s2Step4HeadFvFresh]=
    some (s2Step4HeadFvAfter,⟨s2Step4HeadFOut,s2Step4HeadGOut,s2Step4HeadFvOut,s2Step4HeadGvOut⟩,(growRow 769 s2Step4HeadGFresh ++ (growRow 768 s2Step4HeadFFresh ++ (growRow 771 s2Step4HeadGvFresh ++ (growRow 770 s2Step4HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step4HeadBank_rows]
  rfl
def s2Step5HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step5HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step5HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 780, 794],771⟩
def s2Step5HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796],770⟩
theorem s2Step5HeadBank_incomingDistinct : ([s2Step5HeadGRow,s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5HeadBank_outgoingOwned : rowsOwned s2Step5HeadFvAfter [s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step5HeadFvAfter (fun q => (0≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step5HeadG_Incoming : rowsOwned s2Step5HeadGBefore [s2Step5HeadGRow,s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5HeadGRow,s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow] 0 s2Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5HeadG_Outgoing : rowsOwned s2Step5HeadFvAfter [s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] :=
  hmrRows_owned_drop s2Step5HeadFvAfter [s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] 0 s2Step5HeadBank_outgoingOwned
theorem s2Step5HeadF_Incoming : rowsOwned s2Step5HeadFBefore [s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5HeadGRow,s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow] 1 s2Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5HeadF_Outgoing : rowsOwned s2Step5HeadFvAfter [s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] :=
  hmrRows_owned_drop s2Step5HeadFvAfter [s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] 1 s2Step5HeadBank_outgoingOwned
theorem s2Step5HeadGv_Incoming : rowsOwned s2Step5HeadGvBefore [s2Step5HeadGvRow,s2Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5HeadGRow,s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow] 2 s2Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5HeadGv_Outgoing : rowsOwned s2Step5HeadFvAfter [s2Step5HeadGvOut,s2Step5HeadFvOut] :=
  hmrRows_owned_drop s2Step5HeadFvAfter [s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] 2 s2Step5HeadBank_outgoingOwned
theorem s2Step5HeadFv_Incoming : rowsOwned s2Step5HeadFvBefore [s2Step5HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5HeadGRow,s2Step5HeadFRow,s2Step5HeadGvRow,s2Step5HeadFvRow] 3 s2Step5HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5HeadFvBefore (fun q => (0≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5HeadFv_Outgoing : rowsOwned s2Step5HeadFvAfter [s2Step5HeadFvOut] :=
  hmrRows_owned_drop s2Step5HeadFvAfter [s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut] 3 s2Step5HeadBank_outgoingOwned
theorem s2Step5HeadBank_rows : planWindowRowsLog s2Step5HeadGBefore [(s2Step5HeadGRow,257),(s2Step5HeadFRow,257),(s2Step5HeadGvRow,7),(s2Step5HeadFvRow,7)] [s2Step5HeadGFresh,s2Step5HeadFFresh,s2Step5HeadGvFresh,s2Step5HeadFvFresh]=
    some (s2Step5HeadFvAfter,[s2Step5HeadGOut,s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut],(growRow 769 s2Step5HeadGFresh ++ (growRow 768 s2Step5HeadFFresh ++ (growRow 771 s2Step5HeadGvFresh ++ (growRow 770 s2Step5HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step5HeadFvAfter [] []=some (s2Step5HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step5HeadFvBefore s2Step5HeadFvAfter s2Step5HeadFvAfter
    s2Step5HeadFvRow s2Step5HeadFvOut 7 s2Step5HeadFvFresh [] [] []
    (growRow 770 s2Step5HeadFvFresh) ([]) s2Step5HeadFv_Incoming s2Step5HeadFv_checked h4 s2Step5HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step5HeadGvBefore s2Step5HeadGvAfter s2Step5HeadFvAfter
    s2Step5HeadGvRow s2Step5HeadGvOut 7 s2Step5HeadGvFresh [(s2Step5HeadFvRow,7)] [s2Step5HeadFvFresh] [s2Step5HeadFvOut]
    (growRow 771 s2Step5HeadGvFresh) ((growRow 770 s2Step5HeadFvFresh ++ [])) s2Step5HeadGv_Incoming s2Step5HeadGv_checked h3 s2Step5HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step5HeadFBefore s2Step5HeadFAfter s2Step5HeadFvAfter
    s2Step5HeadFRow s2Step5HeadFOut 257 s2Step5HeadFFresh [(s2Step5HeadGvRow,7),(s2Step5HeadFvRow,7)] [s2Step5HeadGvFresh,s2Step5HeadFvFresh] [s2Step5HeadGvOut,s2Step5HeadFvOut]
    (growRow 768 s2Step5HeadFFresh) ((growRow 771 s2Step5HeadGvFresh ++ (growRow 770 s2Step5HeadFvFresh ++ []))) s2Step5HeadF_Incoming s2Step5HeadF_checked h2 s2Step5HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step5HeadGBefore s2Step5HeadGAfter s2Step5HeadFvAfter
    s2Step5HeadGRow s2Step5HeadGOut 257 s2Step5HeadGFresh [(s2Step5HeadFRow,257),(s2Step5HeadGvRow,7),(s2Step5HeadFvRow,7)] [s2Step5HeadFFresh,s2Step5HeadGvFresh,s2Step5HeadFvFresh] [s2Step5HeadFOut,s2Step5HeadGvOut,s2Step5HeadFvOut]
    (growRow 769 s2Step5HeadGFresh) ((growRow 768 s2Step5HeadFFresh ++ (growRow 771 s2Step5HeadGvFresh ++ (growRow 770 s2Step5HeadFvFresh ++ [])))) s2Step5HeadG_Incoming s2Step5HeadG_checked h1 s2Step5HeadG_Outgoing
  exact h0
theorem s2Step5HeadBank_checked : compileHmrBankResizeLog .headroom s2Step5HeadGBefore ⟨s2Step5HeadFRow,s2Step5HeadGRow,s2Step5HeadFvRow,s2Step5HeadGvRow⟩ ⟨257,257,7,7⟩ [s2Step5HeadGFresh,s2Step5HeadFFresh,s2Step5HeadGvFresh,s2Step5HeadFvFresh]=
    some (s2Step5HeadFvAfter,⟨s2Step5HeadFOut,s2Step5HeadGOut,s2Step5HeadFvOut,s2Step5HeadGvOut⟩,(growRow 769 s2Step5HeadGFresh ++ (growRow 768 s2Step5HeadFFresh ++ (growRow 771 s2Step5HeadGvFresh ++ (growRow 770 s2Step5HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step5HeadBank_rows]
  rfl
def s2Step6HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step6HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step6HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 780, 797],771⟩
def s2Step6HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩
theorem s2Step6HeadBank_incomingDistinct : ([s2Step6HeadGRow,s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6HeadBank_outgoingOwned : rowsOwned s2Step6HeadFvAfter [s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step6HeadFvAfter (fun q => (0≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step6HeadG_Incoming : rowsOwned s2Step6HeadGBefore [s2Step6HeadGRow,s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6HeadGRow,s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow] 0 s2Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6HeadG_Outgoing : rowsOwned s2Step6HeadFvAfter [s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] :=
  hmrRows_owned_drop s2Step6HeadFvAfter [s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] 0 s2Step6HeadBank_outgoingOwned
theorem s2Step6HeadF_Incoming : rowsOwned s2Step6HeadFBefore [s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6HeadGRow,s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow] 1 s2Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6HeadF_Outgoing : rowsOwned s2Step6HeadFvAfter [s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] :=
  hmrRows_owned_drop s2Step6HeadFvAfter [s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] 1 s2Step6HeadBank_outgoingOwned
theorem s2Step6HeadGv_Incoming : rowsOwned s2Step6HeadGvBefore [s2Step6HeadGvRow,s2Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6HeadGRow,s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow] 2 s2Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6HeadGvBefore (fun q => (0≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6HeadGv_Outgoing : rowsOwned s2Step6HeadFvAfter [s2Step6HeadGvOut,s2Step6HeadFvOut] :=
  hmrRows_owned_drop s2Step6HeadFvAfter [s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] 2 s2Step6HeadBank_outgoingOwned
theorem s2Step6HeadFv_Incoming : rowsOwned s2Step6HeadFvBefore [s2Step6HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6HeadGRow,s2Step6HeadFRow,s2Step6HeadGvRow,s2Step6HeadFvRow] 3 s2Step6HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6HeadFvBefore (fun q => (0≤q ∧ q<798)) rfl
    decide +kernel
theorem s2Step6HeadFv_Outgoing : rowsOwned s2Step6HeadFvAfter [s2Step6HeadFvOut] :=
  hmrRows_owned_drop s2Step6HeadFvAfter [s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut] 3 s2Step6HeadBank_outgoingOwned
theorem s2Step6HeadBank_rows : planWindowRowsLog s2Step6HeadGBefore [(s2Step6HeadGRow,257),(s2Step6HeadFRow,257),(s2Step6HeadGvRow,8),(s2Step6HeadFvRow,8)] [s2Step6HeadGFresh,s2Step6HeadFFresh,s2Step6HeadGvFresh,s2Step6HeadFvFresh]=
    some (s2Step6HeadFvAfter,[s2Step6HeadGOut,s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut],(growRow 769 s2Step6HeadGFresh ++ (growRow 768 s2Step6HeadFFresh ++ (growRow 771 s2Step6HeadGvFresh ++ (growRow 770 s2Step6HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step6HeadFvAfter [] []=some (s2Step6HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step6HeadFvBefore s2Step6HeadFvAfter s2Step6HeadFvAfter
    s2Step6HeadFvRow s2Step6HeadFvOut 8 s2Step6HeadFvFresh [] [] []
    (growRow 770 s2Step6HeadFvFresh) ([]) s2Step6HeadFv_Incoming s2Step6HeadFv_checked h4 s2Step6HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step6HeadGvBefore s2Step6HeadGvAfter s2Step6HeadFvAfter
    s2Step6HeadGvRow s2Step6HeadGvOut 8 s2Step6HeadGvFresh [(s2Step6HeadFvRow,8)] [s2Step6HeadFvFresh] [s2Step6HeadFvOut]
    (growRow 771 s2Step6HeadGvFresh) ((growRow 770 s2Step6HeadFvFresh ++ [])) s2Step6HeadGv_Incoming s2Step6HeadGv_checked h3 s2Step6HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step6HeadFBefore s2Step6HeadFAfter s2Step6HeadFvAfter
    s2Step6HeadFRow s2Step6HeadFOut 257 s2Step6HeadFFresh [(s2Step6HeadGvRow,8),(s2Step6HeadFvRow,8)] [s2Step6HeadGvFresh,s2Step6HeadFvFresh] [s2Step6HeadGvOut,s2Step6HeadFvOut]
    (growRow 768 s2Step6HeadFFresh) ((growRow 771 s2Step6HeadGvFresh ++ (growRow 770 s2Step6HeadFvFresh ++ []))) s2Step6HeadF_Incoming s2Step6HeadF_checked h2 s2Step6HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step6HeadGBefore s2Step6HeadGAfter s2Step6HeadFvAfter
    s2Step6HeadGRow s2Step6HeadGOut 257 s2Step6HeadGFresh [(s2Step6HeadFRow,257),(s2Step6HeadGvRow,8),(s2Step6HeadFvRow,8)] [s2Step6HeadFFresh,s2Step6HeadGvFresh,s2Step6HeadFvFresh] [s2Step6HeadFOut,s2Step6HeadGvOut,s2Step6HeadFvOut]
    (growRow 769 s2Step6HeadGFresh) ((growRow 768 s2Step6HeadFFresh ++ (growRow 771 s2Step6HeadGvFresh ++ (growRow 770 s2Step6HeadFvFresh ++ [])))) s2Step6HeadG_Incoming s2Step6HeadG_checked h1 s2Step6HeadG_Outgoing
  exact h0
theorem s2Step6HeadBank_checked : compileHmrBankResizeLog .headroom s2Step6HeadGBefore ⟨s2Step6HeadFRow,s2Step6HeadGRow,s2Step6HeadFvRow,s2Step6HeadGvRow⟩ ⟨257,257,8,8⟩ [s2Step6HeadGFresh,s2Step6HeadFFresh,s2Step6HeadGvFresh,s2Step6HeadFvFresh]=
    some (s2Step6HeadFvAfter,⟨s2Step6HeadFOut,s2Step6HeadGOut,s2Step6HeadFvOut,s2Step6HeadGvOut⟩,(growRow 769 s2Step6HeadGFresh ++ (growRow 768 s2Step6HeadFFresh ++ (growRow 771 s2Step6HeadGvFresh ++ (growRow 770 s2Step6HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step6HeadBank_rows]
  rfl
def s2Step7HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step7HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step7HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 780, 799],771⟩
def s2Step7HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩
theorem s2Step7HeadBank_incomingDistinct : ([s2Step7HeadGRow,s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7HeadBank_outgoingOwned : rowsOwned s2Step7HeadFvAfter [s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step7HeadFvAfter (fun q => (0≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step7HeadG_Incoming : rowsOwned s2Step7HeadGBefore [s2Step7HeadGRow,s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7HeadGRow,s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow] 0 s2Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7HeadG_Outgoing : rowsOwned s2Step7HeadFvAfter [s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] :=
  hmrRows_owned_drop s2Step7HeadFvAfter [s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] 0 s2Step7HeadBank_outgoingOwned
theorem s2Step7HeadF_Incoming : rowsOwned s2Step7HeadFBefore [s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7HeadGRow,s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow] 1 s2Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7HeadF_Outgoing : rowsOwned s2Step7HeadFvAfter [s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] :=
  hmrRows_owned_drop s2Step7HeadFvAfter [s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] 1 s2Step7HeadBank_outgoingOwned
theorem s2Step7HeadGv_Incoming : rowsOwned s2Step7HeadGvBefore [s2Step7HeadGvRow,s2Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7HeadGRow,s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow] 2 s2Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7HeadGvBefore (fun q => (0≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7HeadGv_Outgoing : rowsOwned s2Step7HeadFvAfter [s2Step7HeadGvOut,s2Step7HeadFvOut] :=
  hmrRows_owned_drop s2Step7HeadFvAfter [s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] 2 s2Step7HeadBank_outgoingOwned
theorem s2Step7HeadFv_Incoming : rowsOwned s2Step7HeadFvBefore [s2Step7HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7HeadGRow,s2Step7HeadFRow,s2Step7HeadGvRow,s2Step7HeadFvRow] 3 s2Step7HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7HeadFvBefore (fun q => (0≤q ∧ q<800)) rfl
    decide +kernel
theorem s2Step7HeadFv_Outgoing : rowsOwned s2Step7HeadFvAfter [s2Step7HeadFvOut] :=
  hmrRows_owned_drop s2Step7HeadFvAfter [s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut] 3 s2Step7HeadBank_outgoingOwned
theorem s2Step7HeadBank_rows : planWindowRowsLog s2Step7HeadGBefore [(s2Step7HeadGRow,257),(s2Step7HeadFRow,257),(s2Step7HeadGvRow,9),(s2Step7HeadFvRow,9)] [s2Step7HeadGFresh,s2Step7HeadFFresh,s2Step7HeadGvFresh,s2Step7HeadFvFresh]=
    some (s2Step7HeadFvAfter,[s2Step7HeadGOut,s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut],(growRow 769 s2Step7HeadGFresh ++ (growRow 768 s2Step7HeadFFresh ++ (growRow 771 s2Step7HeadGvFresh ++ (growRow 770 s2Step7HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step7HeadFvAfter [] []=some (s2Step7HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step7HeadFvBefore s2Step7HeadFvAfter s2Step7HeadFvAfter
    s2Step7HeadFvRow s2Step7HeadFvOut 9 s2Step7HeadFvFresh [] [] []
    (growRow 770 s2Step7HeadFvFresh) ([]) s2Step7HeadFv_Incoming s2Step7HeadFv_checked h4 s2Step7HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step7HeadGvBefore s2Step7HeadGvAfter s2Step7HeadFvAfter
    s2Step7HeadGvRow s2Step7HeadGvOut 9 s2Step7HeadGvFresh [(s2Step7HeadFvRow,9)] [s2Step7HeadFvFresh] [s2Step7HeadFvOut]
    (growRow 771 s2Step7HeadGvFresh) ((growRow 770 s2Step7HeadFvFresh ++ [])) s2Step7HeadGv_Incoming s2Step7HeadGv_checked h3 s2Step7HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step7HeadFBefore s2Step7HeadFAfter s2Step7HeadFvAfter
    s2Step7HeadFRow s2Step7HeadFOut 257 s2Step7HeadFFresh [(s2Step7HeadGvRow,9),(s2Step7HeadFvRow,9)] [s2Step7HeadGvFresh,s2Step7HeadFvFresh] [s2Step7HeadGvOut,s2Step7HeadFvOut]
    (growRow 768 s2Step7HeadFFresh) ((growRow 771 s2Step7HeadGvFresh ++ (growRow 770 s2Step7HeadFvFresh ++ []))) s2Step7HeadF_Incoming s2Step7HeadF_checked h2 s2Step7HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step7HeadGBefore s2Step7HeadGAfter s2Step7HeadFvAfter
    s2Step7HeadGRow s2Step7HeadGOut 257 s2Step7HeadGFresh [(s2Step7HeadFRow,257),(s2Step7HeadGvRow,9),(s2Step7HeadFvRow,9)] [s2Step7HeadFFresh,s2Step7HeadGvFresh,s2Step7HeadFvFresh] [s2Step7HeadFOut,s2Step7HeadGvOut,s2Step7HeadFvOut]
    (growRow 769 s2Step7HeadGFresh) ((growRow 768 s2Step7HeadFFresh ++ (growRow 771 s2Step7HeadGvFresh ++ (growRow 770 s2Step7HeadFvFresh ++ [])))) s2Step7HeadG_Incoming s2Step7HeadG_checked h1 s2Step7HeadG_Outgoing
  exact h0
theorem s2Step7HeadBank_checked : compileHmrBankResizeLog .headroom s2Step7HeadGBefore ⟨s2Step7HeadFRow,s2Step7HeadGRow,s2Step7HeadFvRow,s2Step7HeadGvRow⟩ ⟨257,257,9,9⟩ [s2Step7HeadGFresh,s2Step7HeadFFresh,s2Step7HeadGvFresh,s2Step7HeadFvFresh]=
    some (s2Step7HeadFvAfter,⟨s2Step7HeadFOut,s2Step7HeadGOut,s2Step7HeadFvOut,s2Step7HeadGvOut⟩,(growRow 769 s2Step7HeadGFresh ++ (growRow 768 s2Step7HeadFFresh ++ (growRow 771 s2Step7HeadGvFresh ++ (growRow 770 s2Step7HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step7HeadBank_rows]
  rfl
def s2Step8HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step8HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step8HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 780, 801],771⟩
def s2Step8HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩
theorem s2Step8HeadBank_incomingDistinct : ([s2Step8HeadGRow,s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8HeadBank_outgoingOwned : rowsOwned s2Step8HeadFvAfter [s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step8HeadFvAfter (fun q => (0≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step8HeadG_Incoming : rowsOwned s2Step8HeadGBefore [s2Step8HeadGRow,s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8HeadGRow,s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow] 0 s2Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8HeadG_Outgoing : rowsOwned s2Step8HeadFvAfter [s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] :=
  hmrRows_owned_drop s2Step8HeadFvAfter [s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] 0 s2Step8HeadBank_outgoingOwned
theorem s2Step8HeadF_Incoming : rowsOwned s2Step8HeadFBefore [s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8HeadGRow,s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow] 1 s2Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8HeadF_Outgoing : rowsOwned s2Step8HeadFvAfter [s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] :=
  hmrRows_owned_drop s2Step8HeadFvAfter [s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] 1 s2Step8HeadBank_outgoingOwned
theorem s2Step8HeadGv_Incoming : rowsOwned s2Step8HeadGvBefore [s2Step8HeadGvRow,s2Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8HeadGRow,s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow] 2 s2Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8HeadGvBefore (fun q => (0≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8HeadGv_Outgoing : rowsOwned s2Step8HeadFvAfter [s2Step8HeadGvOut,s2Step8HeadFvOut] :=
  hmrRows_owned_drop s2Step8HeadFvAfter [s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] 2 s2Step8HeadBank_outgoingOwned
theorem s2Step8HeadFv_Incoming : rowsOwned s2Step8HeadFvBefore [s2Step8HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8HeadGRow,s2Step8HeadFRow,s2Step8HeadGvRow,s2Step8HeadFvRow] 3 s2Step8HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8HeadFvBefore (fun q => (0≤q ∧ q<802)) rfl
    decide +kernel
theorem s2Step8HeadFv_Outgoing : rowsOwned s2Step8HeadFvAfter [s2Step8HeadFvOut] :=
  hmrRows_owned_drop s2Step8HeadFvAfter [s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut] 3 s2Step8HeadBank_outgoingOwned
theorem s2Step8HeadBank_rows : planWindowRowsLog s2Step8HeadGBefore [(s2Step8HeadGRow,257),(s2Step8HeadFRow,257),(s2Step8HeadGvRow,10),(s2Step8HeadFvRow,10)] [s2Step8HeadGFresh,s2Step8HeadFFresh,s2Step8HeadGvFresh,s2Step8HeadFvFresh]=
    some (s2Step8HeadFvAfter,[s2Step8HeadGOut,s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut],(growRow 769 s2Step8HeadGFresh ++ (growRow 768 s2Step8HeadFFresh ++ (growRow 771 s2Step8HeadGvFresh ++ (growRow 770 s2Step8HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step8HeadFvAfter [] []=some (s2Step8HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step8HeadFvBefore s2Step8HeadFvAfter s2Step8HeadFvAfter
    s2Step8HeadFvRow s2Step8HeadFvOut 10 s2Step8HeadFvFresh [] [] []
    (growRow 770 s2Step8HeadFvFresh) ([]) s2Step8HeadFv_Incoming s2Step8HeadFv_checked h4 s2Step8HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step8HeadGvBefore s2Step8HeadGvAfter s2Step8HeadFvAfter
    s2Step8HeadGvRow s2Step8HeadGvOut 10 s2Step8HeadGvFresh [(s2Step8HeadFvRow,10)] [s2Step8HeadFvFresh] [s2Step8HeadFvOut]
    (growRow 771 s2Step8HeadGvFresh) ((growRow 770 s2Step8HeadFvFresh ++ [])) s2Step8HeadGv_Incoming s2Step8HeadGv_checked h3 s2Step8HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step8HeadFBefore s2Step8HeadFAfter s2Step8HeadFvAfter
    s2Step8HeadFRow s2Step8HeadFOut 257 s2Step8HeadFFresh [(s2Step8HeadGvRow,10),(s2Step8HeadFvRow,10)] [s2Step8HeadGvFresh,s2Step8HeadFvFresh] [s2Step8HeadGvOut,s2Step8HeadFvOut]
    (growRow 768 s2Step8HeadFFresh) ((growRow 771 s2Step8HeadGvFresh ++ (growRow 770 s2Step8HeadFvFresh ++ []))) s2Step8HeadF_Incoming s2Step8HeadF_checked h2 s2Step8HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step8HeadGBefore s2Step8HeadGAfter s2Step8HeadFvAfter
    s2Step8HeadGRow s2Step8HeadGOut 257 s2Step8HeadGFresh [(s2Step8HeadFRow,257),(s2Step8HeadGvRow,10),(s2Step8HeadFvRow,10)] [s2Step8HeadFFresh,s2Step8HeadGvFresh,s2Step8HeadFvFresh] [s2Step8HeadFOut,s2Step8HeadGvOut,s2Step8HeadFvOut]
    (growRow 769 s2Step8HeadGFresh) ((growRow 768 s2Step8HeadFFresh ++ (growRow 771 s2Step8HeadGvFresh ++ (growRow 770 s2Step8HeadFvFresh ++ [])))) s2Step8HeadG_Incoming s2Step8HeadG_checked h1 s2Step8HeadG_Outgoing
  exact h0
theorem s2Step8HeadBank_checked : compileHmrBankResizeLog .headroom s2Step8HeadGBefore ⟨s2Step8HeadFRow,s2Step8HeadGRow,s2Step8HeadFvRow,s2Step8HeadGvRow⟩ ⟨257,257,10,10⟩ [s2Step8HeadGFresh,s2Step8HeadFFresh,s2Step8HeadGvFresh,s2Step8HeadFvFresh]=
    some (s2Step8HeadFvAfter,⟨s2Step8HeadFOut,s2Step8HeadGOut,s2Step8HeadFvOut,s2Step8HeadGvOut⟩,(growRow 769 s2Step8HeadGFresh ++ (growRow 768 s2Step8HeadFFresh ++ (growRow 771 s2Step8HeadGvFresh ++ (growRow 770 s2Step8HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step8HeadBank_rows]
  rfl
def s2Step9HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step9HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step9HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780, 803],771⟩
def s2Step9HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩
theorem s2Step9HeadBank_incomingDistinct : ([s2Step9HeadGRow,s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9HeadBank_outgoingOwned : rowsOwned s2Step9HeadFvAfter [s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step9HeadFvAfter (fun q => (0≤q ∧ q<805)) rfl
    decide +kernel
theorem s2Step9HeadG_Incoming : rowsOwned s2Step9HeadGBefore [s2Step9HeadGRow,s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9HeadGRow,s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow] 0 s2Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9HeadG_Outgoing : rowsOwned s2Step9HeadFvAfter [s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] :=
  hmrRows_owned_drop s2Step9HeadFvAfter [s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] 0 s2Step9HeadBank_outgoingOwned
theorem s2Step9HeadF_Incoming : rowsOwned s2Step9HeadFBefore [s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9HeadGRow,s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow] 1 s2Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9HeadF_Outgoing : rowsOwned s2Step9HeadFvAfter [s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] :=
  hmrRows_owned_drop s2Step9HeadFvAfter [s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] 1 s2Step9HeadBank_outgoingOwned
theorem s2Step9HeadGv_Incoming : rowsOwned s2Step9HeadGvBefore [s2Step9HeadGvRow,s2Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9HeadGRow,s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow] 2 s2Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9HeadGvBefore (fun q => (0≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9HeadGv_Outgoing : rowsOwned s2Step9HeadFvAfter [s2Step9HeadGvOut,s2Step9HeadFvOut] :=
  hmrRows_owned_drop s2Step9HeadFvAfter [s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] 2 s2Step9HeadBank_outgoingOwned
theorem s2Step9HeadFv_Incoming : rowsOwned s2Step9HeadFvBefore [s2Step9HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9HeadGRow,s2Step9HeadFRow,s2Step9HeadGvRow,s2Step9HeadFvRow] 3 s2Step9HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9HeadFvBefore (fun q => (0≤q ∧ q<804)) rfl
    decide +kernel
theorem s2Step9HeadFv_Outgoing : rowsOwned s2Step9HeadFvAfter [s2Step9HeadFvOut] :=
  hmrRows_owned_drop s2Step9HeadFvAfter [s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut] 3 s2Step9HeadBank_outgoingOwned
theorem s2Step9HeadBank_rows : planWindowRowsLog s2Step9HeadGBefore [(s2Step9HeadGRow,257),(s2Step9HeadFRow,257),(s2Step9HeadGvRow,11),(s2Step9HeadFvRow,11)] [s2Step9HeadGFresh,s2Step9HeadFFresh,s2Step9HeadGvFresh,s2Step9HeadFvFresh]=
    some (s2Step9HeadFvAfter,[s2Step9HeadGOut,s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut],(growRow 769 s2Step9HeadGFresh ++ (growRow 768 s2Step9HeadFFresh ++ (growRow 771 s2Step9HeadGvFresh ++ (growRow 770 s2Step9HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step9HeadFvAfter [] []=some (s2Step9HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step9HeadFvBefore s2Step9HeadFvAfter s2Step9HeadFvAfter
    s2Step9HeadFvRow s2Step9HeadFvOut 11 s2Step9HeadFvFresh [] [] []
    (growRow 770 s2Step9HeadFvFresh) ([]) s2Step9HeadFv_Incoming s2Step9HeadFv_checked h4 s2Step9HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step9HeadGvBefore s2Step9HeadGvAfter s2Step9HeadFvAfter
    s2Step9HeadGvRow s2Step9HeadGvOut 11 s2Step9HeadGvFresh [(s2Step9HeadFvRow,11)] [s2Step9HeadFvFresh] [s2Step9HeadFvOut]
    (growRow 771 s2Step9HeadGvFresh) ((growRow 770 s2Step9HeadFvFresh ++ [])) s2Step9HeadGv_Incoming s2Step9HeadGv_checked h3 s2Step9HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step9HeadFBefore s2Step9HeadFAfter s2Step9HeadFvAfter
    s2Step9HeadFRow s2Step9HeadFOut 257 s2Step9HeadFFresh [(s2Step9HeadGvRow,11),(s2Step9HeadFvRow,11)] [s2Step9HeadGvFresh,s2Step9HeadFvFresh] [s2Step9HeadGvOut,s2Step9HeadFvOut]
    (growRow 768 s2Step9HeadFFresh) ((growRow 771 s2Step9HeadGvFresh ++ (growRow 770 s2Step9HeadFvFresh ++ []))) s2Step9HeadF_Incoming s2Step9HeadF_checked h2 s2Step9HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step9HeadGBefore s2Step9HeadGAfter s2Step9HeadFvAfter
    s2Step9HeadGRow s2Step9HeadGOut 257 s2Step9HeadGFresh [(s2Step9HeadFRow,257),(s2Step9HeadGvRow,11),(s2Step9HeadFvRow,11)] [s2Step9HeadFFresh,s2Step9HeadGvFresh,s2Step9HeadFvFresh] [s2Step9HeadFOut,s2Step9HeadGvOut,s2Step9HeadFvOut]
    (growRow 769 s2Step9HeadGFresh) ((growRow 768 s2Step9HeadFFresh ++ (growRow 771 s2Step9HeadGvFresh ++ (growRow 770 s2Step9HeadFvFresh ++ [])))) s2Step9HeadG_Incoming s2Step9HeadG_checked h1 s2Step9HeadG_Outgoing
  exact h0
theorem s2Step9HeadBank_checked : compileHmrBankResizeLog .headroom s2Step9HeadGBefore ⟨s2Step9HeadFRow,s2Step9HeadGRow,s2Step9HeadFvRow,s2Step9HeadGvRow⟩ ⟨257,257,11,11⟩ [s2Step9HeadGFresh,s2Step9HeadFFresh,s2Step9HeadGvFresh,s2Step9HeadFvFresh]=
    some (s2Step9HeadFvAfter,⟨s2Step9HeadFOut,s2Step9HeadGOut,s2Step9HeadFvOut,s2Step9HeadGvOut⟩,(growRow 769 s2Step9HeadGFresh ++ (growRow 768 s2Step9HeadFFresh ++ (growRow 771 s2Step9HeadGvFresh ++ (growRow 770 s2Step9HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step9HeadBank_rows]
  rfl
def s2Step10HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step10HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step10HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780, 805],771⟩
def s2Step10HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩
theorem s2Step10HeadBank_incomingDistinct : ([s2Step10HeadGRow,s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10HeadBank_outgoingOwned : rowsOwned s2Step10HeadFvAfter [s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step10HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10HeadG_Incoming : rowsOwned s2Step10HeadGBefore [s2Step10HeadGRow,s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10HeadGRow,s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow] 0 s2Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10HeadG_Outgoing : rowsOwned s2Step10HeadFvAfter [s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] :=
  hmrRows_owned_drop s2Step10HeadFvAfter [s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] 0 s2Step10HeadBank_outgoingOwned
theorem s2Step10HeadF_Incoming : rowsOwned s2Step10HeadFBefore [s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10HeadGRow,s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow] 1 s2Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10HeadF_Outgoing : rowsOwned s2Step10HeadFvAfter [s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] :=
  hmrRows_owned_drop s2Step10HeadFvAfter [s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] 1 s2Step10HeadBank_outgoingOwned
theorem s2Step10HeadGv_Incoming : rowsOwned s2Step10HeadGvBefore [s2Step10HeadGvRow,s2Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10HeadGRow,s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow] 2 s2Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10HeadGvBefore (fun q => (0≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10HeadGv_Outgoing : rowsOwned s2Step10HeadFvAfter [s2Step10HeadGvOut,s2Step10HeadFvOut] :=
  hmrRows_owned_drop s2Step10HeadFvAfter [s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] 2 s2Step10HeadBank_outgoingOwned
theorem s2Step10HeadFv_Incoming : rowsOwned s2Step10HeadFvBefore [s2Step10HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10HeadGRow,s2Step10HeadFRow,s2Step10HeadGvRow,s2Step10HeadFvRow] 3 s2Step10HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10HeadFvBefore (fun q => (0≤q ∧ q<806) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10HeadFv_Outgoing : rowsOwned s2Step10HeadFvAfter [s2Step10HeadFvOut] :=
  hmrRows_owned_drop s2Step10HeadFvAfter [s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut] 3 s2Step10HeadBank_outgoingOwned
theorem s2Step10HeadBank_rows : planWindowRowsLog s2Step10HeadGBefore [(s2Step10HeadGRow,257),(s2Step10HeadFRow,257),(s2Step10HeadGvRow,12),(s2Step10HeadFvRow,12)] [s2Step10HeadGFresh,s2Step10HeadFFresh,s2Step10HeadGvFresh,s2Step10HeadFvFresh]=
    some (s2Step10HeadFvAfter,[s2Step10HeadGOut,s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut],(growRow 769 s2Step10HeadGFresh ++ (growRow 768 s2Step10HeadFFresh ++ (growRow 771 s2Step10HeadGvFresh ++ (growRow 770 s2Step10HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step10HeadFvAfter [] []=some (s2Step10HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step10HeadFvBefore s2Step10HeadFvAfter s2Step10HeadFvAfter
    s2Step10HeadFvRow s2Step10HeadFvOut 12 s2Step10HeadFvFresh [] [] []
    (growRow 770 s2Step10HeadFvFresh) ([]) s2Step10HeadFv_Incoming s2Step10HeadFv_checked h4 s2Step10HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step10HeadGvBefore s2Step10HeadGvAfter s2Step10HeadFvAfter
    s2Step10HeadGvRow s2Step10HeadGvOut 12 s2Step10HeadGvFresh [(s2Step10HeadFvRow,12)] [s2Step10HeadFvFresh] [s2Step10HeadFvOut]
    (growRow 771 s2Step10HeadGvFresh) ((growRow 770 s2Step10HeadFvFresh ++ [])) s2Step10HeadGv_Incoming s2Step10HeadGv_checked h3 s2Step10HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step10HeadFBefore s2Step10HeadFAfter s2Step10HeadFvAfter
    s2Step10HeadFRow s2Step10HeadFOut 257 s2Step10HeadFFresh [(s2Step10HeadGvRow,12),(s2Step10HeadFvRow,12)] [s2Step10HeadGvFresh,s2Step10HeadFvFresh] [s2Step10HeadGvOut,s2Step10HeadFvOut]
    (growRow 768 s2Step10HeadFFresh) ((growRow 771 s2Step10HeadGvFresh ++ (growRow 770 s2Step10HeadFvFresh ++ []))) s2Step10HeadF_Incoming s2Step10HeadF_checked h2 s2Step10HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step10HeadGBefore s2Step10HeadGAfter s2Step10HeadFvAfter
    s2Step10HeadGRow s2Step10HeadGOut 257 s2Step10HeadGFresh [(s2Step10HeadFRow,257),(s2Step10HeadGvRow,12),(s2Step10HeadFvRow,12)] [s2Step10HeadFFresh,s2Step10HeadGvFresh,s2Step10HeadFvFresh] [s2Step10HeadFOut,s2Step10HeadGvOut,s2Step10HeadFvOut]
    (growRow 769 s2Step10HeadGFresh) ((growRow 768 s2Step10HeadFFresh ++ (growRow 771 s2Step10HeadGvFresh ++ (growRow 770 s2Step10HeadFvFresh ++ [])))) s2Step10HeadG_Incoming s2Step10HeadG_checked h1 s2Step10HeadG_Outgoing
  exact h0
theorem s2Step10HeadBank_checked : compileHmrBankResizeLog .headroom s2Step10HeadGBefore ⟨s2Step10HeadFRow,s2Step10HeadGRow,s2Step10HeadFvRow,s2Step10HeadGvRow⟩ ⟨257,257,12,12⟩ [s2Step10HeadGFresh,s2Step10HeadFFresh,s2Step10HeadGvFresh,s2Step10HeadFvFresh]=
    some (s2Step10HeadFvAfter,⟨s2Step10HeadFOut,s2Step10HeadGOut,s2Step10HeadFvOut,s2Step10HeadGvOut⟩,(growRow 769 s2Step10HeadGFresh ++ (growRow 768 s2Step10HeadFFresh ++ (growRow 771 s2Step10HeadGvFresh ++ (growRow 770 s2Step10HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step10HeadBank_rows]
  rfl
def s2Step11HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step11HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step11HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780, 807],771⟩
def s2Step11HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩
theorem s2Step11HeadBank_incomingDistinct : ([s2Step11HeadGRow,s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11HeadBank_outgoingOwned : rowsOwned s2Step11HeadFvAfter [s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step11HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11HeadG_Incoming : rowsOwned s2Step11HeadGBefore [s2Step11HeadGRow,s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11HeadGRow,s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow] 0 s2Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11HeadG_Outgoing : rowsOwned s2Step11HeadFvAfter [s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] :=
  hmrRows_owned_drop s2Step11HeadFvAfter [s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] 0 s2Step11HeadBank_outgoingOwned
theorem s2Step11HeadF_Incoming : rowsOwned s2Step11HeadFBefore [s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11HeadGRow,s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow] 1 s2Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11HeadF_Outgoing : rowsOwned s2Step11HeadFvAfter [s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] :=
  hmrRows_owned_drop s2Step11HeadFvAfter [s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] 1 s2Step11HeadBank_outgoingOwned
theorem s2Step11HeadGv_Incoming : rowsOwned s2Step11HeadGvBefore [s2Step11HeadGvRow,s2Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11HeadGRow,s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow] 2 s2Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11HeadGvBefore (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11HeadGv_Outgoing : rowsOwned s2Step11HeadFvAfter [s2Step11HeadGvOut,s2Step11HeadFvOut] :=
  hmrRows_owned_drop s2Step11HeadFvAfter [s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] 2 s2Step11HeadBank_outgoingOwned
theorem s2Step11HeadFv_Incoming : rowsOwned s2Step11HeadFvBefore [s2Step11HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11HeadGRow,s2Step11HeadFRow,s2Step11HeadGvRow,s2Step11HeadFvRow] 3 s2Step11HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11HeadFvBefore (fun q => (0≤q ∧ q<808) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11HeadFv_Outgoing : rowsOwned s2Step11HeadFvAfter [s2Step11HeadFvOut] :=
  hmrRows_owned_drop s2Step11HeadFvAfter [s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut] 3 s2Step11HeadBank_outgoingOwned
theorem s2Step11HeadBank_rows : planWindowRowsLog s2Step11HeadGBefore [(s2Step11HeadGRow,257),(s2Step11HeadFRow,257),(s2Step11HeadGvRow,13),(s2Step11HeadFvRow,13)] [s2Step11HeadGFresh,s2Step11HeadFFresh,s2Step11HeadGvFresh,s2Step11HeadFvFresh]=
    some (s2Step11HeadFvAfter,[s2Step11HeadGOut,s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut],(growRow 769 s2Step11HeadGFresh ++ (growRow 768 s2Step11HeadFFresh ++ (growRow 771 s2Step11HeadGvFresh ++ (growRow 770 s2Step11HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step11HeadFvAfter [] []=some (s2Step11HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step11HeadFvBefore s2Step11HeadFvAfter s2Step11HeadFvAfter
    s2Step11HeadFvRow s2Step11HeadFvOut 13 s2Step11HeadFvFresh [] [] []
    (growRow 770 s2Step11HeadFvFresh) ([]) s2Step11HeadFv_Incoming s2Step11HeadFv_checked h4 s2Step11HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step11HeadGvBefore s2Step11HeadGvAfter s2Step11HeadFvAfter
    s2Step11HeadGvRow s2Step11HeadGvOut 13 s2Step11HeadGvFresh [(s2Step11HeadFvRow,13)] [s2Step11HeadFvFresh] [s2Step11HeadFvOut]
    (growRow 771 s2Step11HeadGvFresh) ((growRow 770 s2Step11HeadFvFresh ++ [])) s2Step11HeadGv_Incoming s2Step11HeadGv_checked h3 s2Step11HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step11HeadFBefore s2Step11HeadFAfter s2Step11HeadFvAfter
    s2Step11HeadFRow s2Step11HeadFOut 257 s2Step11HeadFFresh [(s2Step11HeadGvRow,13),(s2Step11HeadFvRow,13)] [s2Step11HeadGvFresh,s2Step11HeadFvFresh] [s2Step11HeadGvOut,s2Step11HeadFvOut]
    (growRow 768 s2Step11HeadFFresh) ((growRow 771 s2Step11HeadGvFresh ++ (growRow 770 s2Step11HeadFvFresh ++ []))) s2Step11HeadF_Incoming s2Step11HeadF_checked h2 s2Step11HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step11HeadGBefore s2Step11HeadGAfter s2Step11HeadFvAfter
    s2Step11HeadGRow s2Step11HeadGOut 257 s2Step11HeadGFresh [(s2Step11HeadFRow,257),(s2Step11HeadGvRow,13),(s2Step11HeadFvRow,13)] [s2Step11HeadFFresh,s2Step11HeadGvFresh,s2Step11HeadFvFresh] [s2Step11HeadFOut,s2Step11HeadGvOut,s2Step11HeadFvOut]
    (growRow 769 s2Step11HeadGFresh) ((growRow 768 s2Step11HeadFFresh ++ (growRow 771 s2Step11HeadGvFresh ++ (growRow 770 s2Step11HeadFvFresh ++ [])))) s2Step11HeadG_Incoming s2Step11HeadG_checked h1 s2Step11HeadG_Outgoing
  exact h0
theorem s2Step11HeadBank_checked : compileHmrBankResizeLog .headroom s2Step11HeadGBefore ⟨s2Step11HeadFRow,s2Step11HeadGRow,s2Step11HeadFvRow,s2Step11HeadGvRow⟩ ⟨257,257,13,13⟩ [s2Step11HeadGFresh,s2Step11HeadFFresh,s2Step11HeadGvFresh,s2Step11HeadFvFresh]=
    some (s2Step11HeadFvAfter,⟨s2Step11HeadFOut,s2Step11HeadGOut,s2Step11HeadFvOut,s2Step11HeadGvOut⟩,(growRow 769 s2Step11HeadGFresh ++ (growRow 768 s2Step11HeadFFresh ++ (growRow 771 s2Step11HeadGvFresh ++ (growRow 770 s2Step11HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step11HeadBank_rows]
  rfl
def s2Step12HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step12HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step12HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780, 809],771⟩
def s2Step12HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩
theorem s2Step12HeadBank_incomingDistinct : ([s2Step12HeadGRow,s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12HeadBank_outgoingOwned : rowsOwned s2Step12HeadFvAfter [s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step12HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12HeadG_Incoming : rowsOwned s2Step12HeadGBefore [s2Step12HeadGRow,s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12HeadGRow,s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow] 0 s2Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12HeadG_Outgoing : rowsOwned s2Step12HeadFvAfter [s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] :=
  hmrRows_owned_drop s2Step12HeadFvAfter [s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] 0 s2Step12HeadBank_outgoingOwned
theorem s2Step12HeadF_Incoming : rowsOwned s2Step12HeadFBefore [s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12HeadGRow,s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow] 1 s2Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12HeadF_Outgoing : rowsOwned s2Step12HeadFvAfter [s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] :=
  hmrRows_owned_drop s2Step12HeadFvAfter [s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] 1 s2Step12HeadBank_outgoingOwned
theorem s2Step12HeadGv_Incoming : rowsOwned s2Step12HeadGvBefore [s2Step12HeadGvRow,s2Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12HeadGRow,s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow] 2 s2Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12HeadGv_Outgoing : rowsOwned s2Step12HeadFvAfter [s2Step12HeadGvOut,s2Step12HeadFvOut] :=
  hmrRows_owned_drop s2Step12HeadFvAfter [s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] 2 s2Step12HeadBank_outgoingOwned
theorem s2Step12HeadFv_Incoming : rowsOwned s2Step12HeadFvBefore [s2Step12HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12HeadGRow,s2Step12HeadFRow,s2Step12HeadGvRow,s2Step12HeadFvRow] 3 s2Step12HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12HeadFvBefore (fun q => (0≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12HeadFv_Outgoing : rowsOwned s2Step12HeadFvAfter [s2Step12HeadFvOut] :=
  hmrRows_owned_drop s2Step12HeadFvAfter [s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut] 3 s2Step12HeadBank_outgoingOwned
theorem s2Step12HeadBank_rows : planWindowRowsLog s2Step12HeadGBefore [(s2Step12HeadGRow,257),(s2Step12HeadFRow,257),(s2Step12HeadGvRow,14),(s2Step12HeadFvRow,14)] [s2Step12HeadGFresh,s2Step12HeadFFresh,s2Step12HeadGvFresh,s2Step12HeadFvFresh]=
    some (s2Step12HeadFvAfter,[s2Step12HeadGOut,s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut],(growRow 769 s2Step12HeadGFresh ++ (growRow 768 s2Step12HeadFFresh ++ (growRow 771 s2Step12HeadGvFresh ++ (growRow 770 s2Step12HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step12HeadFvAfter [] []=some (s2Step12HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step12HeadFvBefore s2Step12HeadFvAfter s2Step12HeadFvAfter
    s2Step12HeadFvRow s2Step12HeadFvOut 14 s2Step12HeadFvFresh [] [] []
    (growRow 770 s2Step12HeadFvFresh) ([]) s2Step12HeadFv_Incoming s2Step12HeadFv_checked h4 s2Step12HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step12HeadGvBefore s2Step12HeadGvAfter s2Step12HeadFvAfter
    s2Step12HeadGvRow s2Step12HeadGvOut 14 s2Step12HeadGvFresh [(s2Step12HeadFvRow,14)] [s2Step12HeadFvFresh] [s2Step12HeadFvOut]
    (growRow 771 s2Step12HeadGvFresh) ((growRow 770 s2Step12HeadFvFresh ++ [])) s2Step12HeadGv_Incoming s2Step12HeadGv_checked h3 s2Step12HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step12HeadFBefore s2Step12HeadFAfter s2Step12HeadFvAfter
    s2Step12HeadFRow s2Step12HeadFOut 257 s2Step12HeadFFresh [(s2Step12HeadGvRow,14),(s2Step12HeadFvRow,14)] [s2Step12HeadGvFresh,s2Step12HeadFvFresh] [s2Step12HeadGvOut,s2Step12HeadFvOut]
    (growRow 768 s2Step12HeadFFresh) ((growRow 771 s2Step12HeadGvFresh ++ (growRow 770 s2Step12HeadFvFresh ++ []))) s2Step12HeadF_Incoming s2Step12HeadF_checked h2 s2Step12HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step12HeadGBefore s2Step12HeadGAfter s2Step12HeadFvAfter
    s2Step12HeadGRow s2Step12HeadGOut 257 s2Step12HeadGFresh [(s2Step12HeadFRow,257),(s2Step12HeadGvRow,14),(s2Step12HeadFvRow,14)] [s2Step12HeadFFresh,s2Step12HeadGvFresh,s2Step12HeadFvFresh] [s2Step12HeadFOut,s2Step12HeadGvOut,s2Step12HeadFvOut]
    (growRow 769 s2Step12HeadGFresh) ((growRow 768 s2Step12HeadFFresh ++ (growRow 771 s2Step12HeadGvFresh ++ (growRow 770 s2Step12HeadFvFresh ++ [])))) s2Step12HeadG_Incoming s2Step12HeadG_checked h1 s2Step12HeadG_Outgoing
  exact h0
theorem s2Step12HeadBank_checked : compileHmrBankResizeLog .headroom s2Step12HeadGBefore ⟨s2Step12HeadFRow,s2Step12HeadGRow,s2Step12HeadFvRow,s2Step12HeadGvRow⟩ ⟨257,257,14,14⟩ [s2Step12HeadGFresh,s2Step12HeadFFresh,s2Step12HeadGvFresh,s2Step12HeadFvFresh]=
    some (s2Step12HeadFvAfter,⟨s2Step12HeadFOut,s2Step12HeadGOut,s2Step12HeadFvOut,s2Step12HeadGvOut⟩,(growRow 769 s2Step12HeadGFresh ++ (growRow 768 s2Step12HeadFFresh ++ (growRow 771 s2Step12HeadGvFresh ++ (growRow 770 s2Step12HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step12HeadBank_rows]
  rfl
def s2Step13HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step13HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step13HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780, 811],771⟩
def s2Step13HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩
theorem s2Step13HeadBank_incomingDistinct : ([s2Step13HeadGRow,s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13HeadBank_outgoingOwned : rowsOwned s2Step13HeadFvAfter [s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step13HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13HeadG_Incoming : rowsOwned s2Step13HeadGBefore [s2Step13HeadGRow,s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13HeadGRow,s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow] 0 s2Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13HeadG_Outgoing : rowsOwned s2Step13HeadFvAfter [s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] :=
  hmrRows_owned_drop s2Step13HeadFvAfter [s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] 0 s2Step13HeadBank_outgoingOwned
theorem s2Step13HeadF_Incoming : rowsOwned s2Step13HeadFBefore [s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13HeadGRow,s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow] 1 s2Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13HeadF_Outgoing : rowsOwned s2Step13HeadFvAfter [s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] :=
  hmrRows_owned_drop s2Step13HeadFvAfter [s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] 1 s2Step13HeadBank_outgoingOwned
theorem s2Step13HeadGv_Incoming : rowsOwned s2Step13HeadGvBefore [s2Step13HeadGvRow,s2Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13HeadGRow,s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow] 2 s2Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13HeadGvBefore (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13HeadGv_Outgoing : rowsOwned s2Step13HeadFvAfter [s2Step13HeadGvOut,s2Step13HeadFvOut] :=
  hmrRows_owned_drop s2Step13HeadFvAfter [s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] 2 s2Step13HeadBank_outgoingOwned
theorem s2Step13HeadFv_Incoming : rowsOwned s2Step13HeadFvBefore [s2Step13HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13HeadGRow,s2Step13HeadFRow,s2Step13HeadGvRow,s2Step13HeadFvRow] 3 s2Step13HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13HeadFvBefore (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13HeadFv_Outgoing : rowsOwned s2Step13HeadFvAfter [s2Step13HeadFvOut] :=
  hmrRows_owned_drop s2Step13HeadFvAfter [s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut] 3 s2Step13HeadBank_outgoingOwned
theorem s2Step13HeadBank_rows : planWindowRowsLog s2Step13HeadGBefore [(s2Step13HeadGRow,257),(s2Step13HeadFRow,257),(s2Step13HeadGvRow,15),(s2Step13HeadFvRow,15)] [s2Step13HeadGFresh,s2Step13HeadFFresh,s2Step13HeadGvFresh,s2Step13HeadFvFresh]=
    some (s2Step13HeadFvAfter,[s2Step13HeadGOut,s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut],(growRow 769 s2Step13HeadGFresh ++ (growRow 768 s2Step13HeadFFresh ++ (growRow 771 s2Step13HeadGvFresh ++ (growRow 770 s2Step13HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step13HeadFvAfter [] []=some (s2Step13HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step13HeadFvBefore s2Step13HeadFvAfter s2Step13HeadFvAfter
    s2Step13HeadFvRow s2Step13HeadFvOut 15 s2Step13HeadFvFresh [] [] []
    (growRow 770 s2Step13HeadFvFresh) ([]) s2Step13HeadFv_Incoming s2Step13HeadFv_checked h4 s2Step13HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step13HeadGvBefore s2Step13HeadGvAfter s2Step13HeadFvAfter
    s2Step13HeadGvRow s2Step13HeadGvOut 15 s2Step13HeadGvFresh [(s2Step13HeadFvRow,15)] [s2Step13HeadFvFresh] [s2Step13HeadFvOut]
    (growRow 771 s2Step13HeadGvFresh) ((growRow 770 s2Step13HeadFvFresh ++ [])) s2Step13HeadGv_Incoming s2Step13HeadGv_checked h3 s2Step13HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step13HeadFBefore s2Step13HeadFAfter s2Step13HeadFvAfter
    s2Step13HeadFRow s2Step13HeadFOut 257 s2Step13HeadFFresh [(s2Step13HeadGvRow,15),(s2Step13HeadFvRow,15)] [s2Step13HeadGvFresh,s2Step13HeadFvFresh] [s2Step13HeadGvOut,s2Step13HeadFvOut]
    (growRow 768 s2Step13HeadFFresh) ((growRow 771 s2Step13HeadGvFresh ++ (growRow 770 s2Step13HeadFvFresh ++ []))) s2Step13HeadF_Incoming s2Step13HeadF_checked h2 s2Step13HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step13HeadGBefore s2Step13HeadGAfter s2Step13HeadFvAfter
    s2Step13HeadGRow s2Step13HeadGOut 257 s2Step13HeadGFresh [(s2Step13HeadFRow,257),(s2Step13HeadGvRow,15),(s2Step13HeadFvRow,15)] [s2Step13HeadFFresh,s2Step13HeadGvFresh,s2Step13HeadFvFresh] [s2Step13HeadFOut,s2Step13HeadGvOut,s2Step13HeadFvOut]
    (growRow 769 s2Step13HeadGFresh) ((growRow 768 s2Step13HeadFFresh ++ (growRow 771 s2Step13HeadGvFresh ++ (growRow 770 s2Step13HeadFvFresh ++ [])))) s2Step13HeadG_Incoming s2Step13HeadG_checked h1 s2Step13HeadG_Outgoing
  exact h0
theorem s2Step13HeadBank_checked : compileHmrBankResizeLog .headroom s2Step13HeadGBefore ⟨s2Step13HeadFRow,s2Step13HeadGRow,s2Step13HeadFvRow,s2Step13HeadGvRow⟩ ⟨257,257,15,15⟩ [s2Step13HeadGFresh,s2Step13HeadFFresh,s2Step13HeadGvFresh,s2Step13HeadFvFresh]=
    some (s2Step13HeadFvAfter,⟨s2Step13HeadFOut,s2Step13HeadGOut,s2Step13HeadFvOut,s2Step13HeadGvOut⟩,(growRow 769 s2Step13HeadGFresh ++ (growRow 768 s2Step13HeadFFresh ++ (growRow 771 s2Step13HeadGvFresh ++ (growRow 770 s2Step13HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step13HeadBank_rows]
  rfl
def s2Step14HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step14HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step14HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780, 814],771⟩
def s2Step14HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩
theorem s2Step14HeadBank_incomingDistinct : ([s2Step14HeadGRow,s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14HeadBank_outgoingOwned : rowsOwned s2Step14HeadFvAfter [s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step14HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14HeadG_Incoming : rowsOwned s2Step14HeadGBefore [s2Step14HeadGRow,s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14HeadGRow,s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow] 0 s2Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14HeadG_Outgoing : rowsOwned s2Step14HeadFvAfter [s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] :=
  hmrRows_owned_drop s2Step14HeadFvAfter [s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] 0 s2Step14HeadBank_outgoingOwned
theorem s2Step14HeadF_Incoming : rowsOwned s2Step14HeadFBefore [s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14HeadGRow,s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow] 1 s2Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14HeadF_Outgoing : rowsOwned s2Step14HeadFvAfter [s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] :=
  hmrRows_owned_drop s2Step14HeadFvAfter [s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] 1 s2Step14HeadBank_outgoingOwned
theorem s2Step14HeadGv_Incoming : rowsOwned s2Step14HeadGvBefore [s2Step14HeadGvRow,s2Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14HeadGRow,s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow] 2 s2Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14HeadGv_Outgoing : rowsOwned s2Step14HeadFvAfter [s2Step14HeadGvOut,s2Step14HeadFvOut] :=
  hmrRows_owned_drop s2Step14HeadFvAfter [s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] 2 s2Step14HeadBank_outgoingOwned
theorem s2Step14HeadFv_Incoming : rowsOwned s2Step14HeadFvBefore [s2Step14HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14HeadGRow,s2Step14HeadFRow,s2Step14HeadGvRow,s2Step14HeadFvRow] 3 s2Step14HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14HeadFvBefore (fun q => (0≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14HeadFv_Outgoing : rowsOwned s2Step14HeadFvAfter [s2Step14HeadFvOut] :=
  hmrRows_owned_drop s2Step14HeadFvAfter [s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut] 3 s2Step14HeadBank_outgoingOwned
theorem s2Step14HeadBank_rows : planWindowRowsLog s2Step14HeadGBefore [(s2Step14HeadGRow,257),(s2Step14HeadFRow,257),(s2Step14HeadGvRow,16),(s2Step14HeadFvRow,16)] [s2Step14HeadGFresh,s2Step14HeadFFresh,s2Step14HeadGvFresh,s2Step14HeadFvFresh]=
    some (s2Step14HeadFvAfter,[s2Step14HeadGOut,s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut],(growRow 769 s2Step14HeadGFresh ++ (growRow 768 s2Step14HeadFFresh ++ (growRow 771 s2Step14HeadGvFresh ++ (growRow 770 s2Step14HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step14HeadFvAfter [] []=some (s2Step14HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step14HeadFvBefore s2Step14HeadFvAfter s2Step14HeadFvAfter
    s2Step14HeadFvRow s2Step14HeadFvOut 16 s2Step14HeadFvFresh [] [] []
    (growRow 770 s2Step14HeadFvFresh) ([]) s2Step14HeadFv_Incoming s2Step14HeadFv_checked h4 s2Step14HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step14HeadGvBefore s2Step14HeadGvAfter s2Step14HeadFvAfter
    s2Step14HeadGvRow s2Step14HeadGvOut 16 s2Step14HeadGvFresh [(s2Step14HeadFvRow,16)] [s2Step14HeadFvFresh] [s2Step14HeadFvOut]
    (growRow 771 s2Step14HeadGvFresh) ((growRow 770 s2Step14HeadFvFresh ++ [])) s2Step14HeadGv_Incoming s2Step14HeadGv_checked h3 s2Step14HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step14HeadFBefore s2Step14HeadFAfter s2Step14HeadFvAfter
    s2Step14HeadFRow s2Step14HeadFOut 257 s2Step14HeadFFresh [(s2Step14HeadGvRow,16),(s2Step14HeadFvRow,16)] [s2Step14HeadGvFresh,s2Step14HeadFvFresh] [s2Step14HeadGvOut,s2Step14HeadFvOut]
    (growRow 768 s2Step14HeadFFresh) ((growRow 771 s2Step14HeadGvFresh ++ (growRow 770 s2Step14HeadFvFresh ++ []))) s2Step14HeadF_Incoming s2Step14HeadF_checked h2 s2Step14HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step14HeadGBefore s2Step14HeadGAfter s2Step14HeadFvAfter
    s2Step14HeadGRow s2Step14HeadGOut 257 s2Step14HeadGFresh [(s2Step14HeadFRow,257),(s2Step14HeadGvRow,16),(s2Step14HeadFvRow,16)] [s2Step14HeadFFresh,s2Step14HeadGvFresh,s2Step14HeadFvFresh] [s2Step14HeadFOut,s2Step14HeadGvOut,s2Step14HeadFvOut]
    (growRow 769 s2Step14HeadGFresh) ((growRow 768 s2Step14HeadFFresh ++ (growRow 771 s2Step14HeadGvFresh ++ (growRow 770 s2Step14HeadFvFresh ++ [])))) s2Step14HeadG_Incoming s2Step14HeadG_checked h1 s2Step14HeadG_Outgoing
  exact h0
theorem s2Step14HeadBank_checked : compileHmrBankResizeLog .headroom s2Step14HeadGBefore ⟨s2Step14HeadFRow,s2Step14HeadGRow,s2Step14HeadFvRow,s2Step14HeadGvRow⟩ ⟨257,257,16,16⟩ [s2Step14HeadGFresh,s2Step14HeadFFresh,s2Step14HeadGvFresh,s2Step14HeadFvFresh]=
    some (s2Step14HeadFvAfter,⟨s2Step14HeadFOut,s2Step14HeadGOut,s2Step14HeadFvOut,s2Step14HeadGvOut⟩,(growRow 769 s2Step14HeadGFresh ++ (growRow 768 s2Step14HeadFFresh ++ (growRow 771 s2Step14HeadGvFresh ++ (growRow 770 s2Step14HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step14HeadBank_rows]
  rfl
def s2Step15HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step15HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step15HeadGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780, 816],771⟩
def s2Step15HeadFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩
theorem s2Step15HeadBank_incomingDistinct : ([s2Step15HeadGRow,s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15HeadBank_outgoingOwned : rowsOwned s2Step15HeadFvAfter [s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step15HeadFvAfter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15HeadG_Incoming : rowsOwned s2Step15HeadGBefore [s2Step15HeadGRow,s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15HeadGRow,s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow] 0 s2Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15HeadG_Outgoing : rowsOwned s2Step15HeadFvAfter [s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] :=
  hmrRows_owned_drop s2Step15HeadFvAfter [s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] 0 s2Step15HeadBank_outgoingOwned
theorem s2Step15HeadF_Incoming : rowsOwned s2Step15HeadFBefore [s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15HeadGRow,s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow] 1 s2Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15HeadF_Outgoing : rowsOwned s2Step15HeadFvAfter [s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] :=
  hmrRows_owned_drop s2Step15HeadFvAfter [s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] 1 s2Step15HeadBank_outgoingOwned
theorem s2Step15HeadGv_Incoming : rowsOwned s2Step15HeadGvBefore [s2Step15HeadGvRow,s2Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15HeadGRow,s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow] 2 s2Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15HeadGv_Outgoing : rowsOwned s2Step15HeadFvAfter [s2Step15HeadGvOut,s2Step15HeadFvOut] :=
  hmrRows_owned_drop s2Step15HeadFvAfter [s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] 2 s2Step15HeadBank_outgoingOwned
theorem s2Step15HeadFv_Incoming : rowsOwned s2Step15HeadFvBefore [s2Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15HeadGRow,s2Step15HeadFRow,s2Step15HeadGvRow,s2Step15HeadFvRow] 3 s2Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15HeadFvBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15HeadFv_Outgoing : rowsOwned s2Step15HeadFvAfter [s2Step15HeadFvOut] :=
  hmrRows_owned_drop s2Step15HeadFvAfter [s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut] 3 s2Step15HeadBank_outgoingOwned
theorem s2Step15HeadBank_rows : planWindowRowsLog s2Step15HeadGBefore [(s2Step15HeadGRow,257),(s2Step15HeadFRow,257),(s2Step15HeadGvRow,17),(s2Step15HeadFvRow,17)] [s2Step15HeadGFresh,s2Step15HeadFFresh,s2Step15HeadGvFresh,s2Step15HeadFvFresh]=
    some (s2Step15HeadFvAfter,[s2Step15HeadGOut,s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut],(growRow 769 s2Step15HeadGFresh ++ (growRow 768 s2Step15HeadFFresh ++ (growRow 771 s2Step15HeadGvFresh ++ (growRow 770 s2Step15HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step15HeadFvAfter [] []=some (s2Step15HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step15HeadFvBefore s2Step15HeadFvAfter s2Step15HeadFvAfter
    s2Step15HeadFvRow s2Step15HeadFvOut 17 s2Step15HeadFvFresh [] [] []
    (growRow 770 s2Step15HeadFvFresh) ([]) s2Step15HeadFv_Incoming s2Step15HeadFv_checked h4 s2Step15HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step15HeadGvBefore s2Step15HeadGvAfter s2Step15HeadFvAfter
    s2Step15HeadGvRow s2Step15HeadGvOut 17 s2Step15HeadGvFresh [(s2Step15HeadFvRow,17)] [s2Step15HeadFvFresh] [s2Step15HeadFvOut]
    (growRow 771 s2Step15HeadGvFresh) ((growRow 770 s2Step15HeadFvFresh ++ [])) s2Step15HeadGv_Incoming s2Step15HeadGv_checked h3 s2Step15HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step15HeadFBefore s2Step15HeadFAfter s2Step15HeadFvAfter
    s2Step15HeadFRow s2Step15HeadFOut 257 s2Step15HeadFFresh [(s2Step15HeadGvRow,17),(s2Step15HeadFvRow,17)] [s2Step15HeadGvFresh,s2Step15HeadFvFresh] [s2Step15HeadGvOut,s2Step15HeadFvOut]
    (growRow 768 s2Step15HeadFFresh) ((growRow 771 s2Step15HeadGvFresh ++ (growRow 770 s2Step15HeadFvFresh ++ []))) s2Step15HeadF_Incoming s2Step15HeadF_checked h2 s2Step15HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step15HeadGBefore s2Step15HeadGAfter s2Step15HeadFvAfter
    s2Step15HeadGRow s2Step15HeadGOut 257 s2Step15HeadGFresh [(s2Step15HeadFRow,257),(s2Step15HeadGvRow,17),(s2Step15HeadFvRow,17)] [s2Step15HeadFFresh,s2Step15HeadGvFresh,s2Step15HeadFvFresh] [s2Step15HeadFOut,s2Step15HeadGvOut,s2Step15HeadFvOut]
    (growRow 769 s2Step15HeadGFresh) ((growRow 768 s2Step15HeadFFresh ++ (growRow 771 s2Step15HeadGvFresh ++ (growRow 770 s2Step15HeadFvFresh ++ [])))) s2Step15HeadG_Incoming s2Step15HeadG_checked h1 s2Step15HeadG_Outgoing
  exact h0
theorem s2Step15HeadBank_checked : compileHmrBankResizeLog .headroom s2Step15HeadGBefore ⟨s2Step15HeadFRow,s2Step15HeadGRow,s2Step15HeadFvRow,s2Step15HeadGvRow⟩ ⟨257,257,17,17⟩ [s2Step15HeadGFresh,s2Step15HeadFFresh,s2Step15HeadGvFresh,s2Step15HeadFvFresh]=
    some (s2Step15HeadFvAfter,⟨s2Step15HeadFOut,s2Step15HeadGOut,s2Step15HeadFvOut,s2Step15HeadGvOut⟩,(growRow 769 s2Step15HeadGFresh ++ (growRow 768 s2Step15HeadFFresh ++ (growRow 771 s2Step15HeadGvFresh ++ (growRow 770 s2Step15HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step15HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
