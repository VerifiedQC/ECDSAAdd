import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryParts
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step0EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩
def s2Step0EntryFvOut : WindowRow := ⟨[778],770⟩
def s2Step0EntryGvOut : WindowRow := ⟨[779],771⟩
theorem s2Step0EntryBank_incomingDistinct : ([s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0EntryBank_outgoingOwned : rowsOwned s2Step0EntryGvAfter [s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0EntryGvAfter (fun q => (0≤q ∧ q<780)) rfl
    decide +kernel
theorem s2Step0EntryF_Incoming : rowsOwned s2Step0EntryFBefore [s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow] 0 s2Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0EntryFBefore (fun q => (0≤q ∧ q<780)) rfl
    decide +kernel
theorem s2Step0EntryF_Outgoing : rowsOwned s2Step0EntryGvAfter [s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] :=
  hmrRows_owned_drop s2Step0EntryGvAfter [s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] 0 s2Step0EntryBank_outgoingOwned
theorem s2Step0EntryG_Incoming : rowsOwned s2Step0EntryGBefore [s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow] 1 s2Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0EntryGBefore (fun q => (0≤q ∧ q<780)) rfl
    decide +kernel
theorem s2Step0EntryG_Outgoing : rowsOwned s2Step0EntryGvAfter [s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] :=
  hmrRows_owned_drop s2Step0EntryGvAfter [s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] 1 s2Step0EntryBank_outgoingOwned
theorem s2Step0EntryFv_Incoming : rowsOwned s2Step0EntryFvBefore [s2Step0EntryFvRow,s2Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow] 2 s2Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0EntryFvBefore (fun q => (0≤q ∧ q<780)) rfl
    decide +kernel
theorem s2Step0EntryFv_Outgoing : rowsOwned s2Step0EntryGvAfter [s2Step0EntryFvOut,s2Step0EntryGvOut] :=
  hmrRows_owned_drop s2Step0EntryGvAfter [s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] 2 s2Step0EntryBank_outgoingOwned
theorem s2Step0EntryGv_Incoming : rowsOwned s2Step0EntryGvBefore [s2Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow] 3 s2Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step0EntryGvBefore (fun q => (0≤q ∧ q<780)) rfl
    decide +kernel
theorem s2Step0EntryGv_Outgoing : rowsOwned s2Step0EntryGvAfter [s2Step0EntryGvOut] :=
  hmrRows_owned_drop s2Step0EntryGvAfter [s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut] 3 s2Step0EntryBank_outgoingOwned
theorem s2Step0EntryBank_rows : planWindowRowsLog s2Step0EntryFBefore [(s2Step0EntryFRow,256),(s2Step0EntryGRow,256),(s2Step0EntryFvRow,1),(s2Step0EntryGvRow,1)] [s2Step0EntryFFresh,s2Step0EntryGFresh,s2Step0EntryFvFresh,s2Step0EntryGvFresh]=
    some (s2Step0EntryGvAfter,[s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut],(growRow 768 s2Step0EntryFFresh ++ (growRow 769 s2Step0EntryGFresh ++ (growRow 770 s2Step0EntryFvFresh ++ (growRow 771 s2Step0EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step0EntryGvAfter [] []=some (s2Step0EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step0EntryGvBefore s2Step0EntryGvAfter s2Step0EntryGvAfter
    s2Step0EntryGvRow s2Step0EntryGvOut 1 s2Step0EntryGvFresh [] [] []
    (growRow 771 s2Step0EntryGvFresh) ([]) s2Step0EntryGv_Incoming s2Step0EntryGv_checked h4 s2Step0EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step0EntryFvBefore s2Step0EntryFvAfter s2Step0EntryGvAfter
    s2Step0EntryFvRow s2Step0EntryFvOut 1 s2Step0EntryFvFresh [(s2Step0EntryGvRow,1)] [s2Step0EntryGvFresh] [s2Step0EntryGvOut]
    (growRow 770 s2Step0EntryFvFresh) ((growRow 771 s2Step0EntryGvFresh ++ [])) s2Step0EntryFv_Incoming s2Step0EntryFv_checked h3 s2Step0EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step0EntryGBefore s2Step0EntryGAfter s2Step0EntryGvAfter
    s2Step0EntryGRow s2Step0EntryGOut 256 s2Step0EntryGFresh [(s2Step0EntryFvRow,1),(s2Step0EntryGvRow,1)] [s2Step0EntryFvFresh,s2Step0EntryGvFresh] [s2Step0EntryFvOut,s2Step0EntryGvOut]
    (growRow 769 s2Step0EntryGFresh) ((growRow 770 s2Step0EntryFvFresh ++ (growRow 771 s2Step0EntryGvFresh ++ []))) s2Step0EntryG_Incoming s2Step0EntryG_checked h2 s2Step0EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step0EntryFBefore s2Step0EntryFAfter s2Step0EntryGvAfter
    s2Step0EntryFRow s2Step0EntryFOut 256 s2Step0EntryFFresh [(s2Step0EntryGRow,256),(s2Step0EntryFvRow,1),(s2Step0EntryGvRow,1)] [s2Step0EntryGFresh,s2Step0EntryFvFresh,s2Step0EntryGvFresh] [s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut]
    (growRow 768 s2Step0EntryFFresh) ((growRow 769 s2Step0EntryGFresh ++ (growRow 770 s2Step0EntryFvFresh ++ (growRow 771 s2Step0EntryGvFresh ++ [])))) s2Step0EntryF_Incoming s2Step0EntryF_checked h1 s2Step0EntryF_Outgoing
  exact h0
theorem s2Step0EntryBank_checked : compileHmrBankResizeLog .entry s2Step0EntryFBefore ⟨s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow⟩ ⟨256,256,1,1⟩ [s2Step0EntryFFresh,s2Step0EntryGFresh,s2Step0EntryFvFresh,s2Step0EntryGvFresh]=
    some (s2Step0EntryGvAfter,⟨s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut⟩,(growRow 768 s2Step0EntryFFresh ++ (growRow 769 s2Step0EntryGFresh ++ (growRow 770 s2Step0EntryFvFresh ++ (growRow 771 s2Step0EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step0EntryBank_rows]
  rfl
def s2Step1EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step1EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step1EntryFvOut : WindowRow := ⟨[255, 785],770⟩
def s2Step1EntryGvOut : WindowRow := ⟨[779, 780],771⟩
theorem s2Step1EntryBank_incomingDistinct : ([s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1EntryBank_outgoingOwned : rowsOwned s2Step1EntryGvAfter [s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step1EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1EntryF_Incoming : rowsOwned s2Step1EntryFBefore [s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow] 0 s2Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1EntryF_Outgoing : rowsOwned s2Step1EntryGvAfter [s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] :=
  hmrRows_owned_drop s2Step1EntryGvAfter [s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] 0 s2Step1EntryBank_outgoingOwned
theorem s2Step1EntryG_Incoming : rowsOwned s2Step1EntryGBefore [s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow] 1 s2Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1EntryG_Outgoing : rowsOwned s2Step1EntryGvAfter [s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] :=
  hmrRows_owned_drop s2Step1EntryGvAfter [s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] 1 s2Step1EntryBank_outgoingOwned
theorem s2Step1EntryFv_Incoming : rowsOwned s2Step1EntryFvBefore [s2Step1EntryFvRow,s2Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow] 2 s2Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1EntryFv_Outgoing : rowsOwned s2Step1EntryGvAfter [s2Step1EntryFvOut,s2Step1EntryGvOut] :=
  hmrRows_owned_drop s2Step1EntryGvAfter [s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] 2 s2Step1EntryBank_outgoingOwned
theorem s2Step1EntryGv_Incoming : rowsOwned s2Step1EntryGvBefore [s2Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow] 3 s2Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step1EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step1EntryGv_Outgoing : rowsOwned s2Step1EntryGvAfter [s2Step1EntryGvOut] :=
  hmrRows_owned_drop s2Step1EntryGvAfter [s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut] 3 s2Step1EntryBank_outgoingOwned
theorem s2Step1EntryBank_rows : planWindowRowsLog s2Step1EntryFBefore [(s2Step1EntryFRow,256),(s2Step1EntryGRow,256),(s2Step1EntryFvRow,2),(s2Step1EntryGvRow,2)] [s2Step1EntryFFresh,s2Step1EntryGFresh,s2Step1EntryFvFresh,s2Step1EntryGvFresh]=
    some (s2Step1EntryGvAfter,[s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut],(growRow 768 s2Step1EntryFFresh ++ (growRow 769 s2Step1EntryGFresh ++ (growRow 770 s2Step1EntryFvFresh ++ (growRow 771 s2Step1EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step1EntryGvAfter [] []=some (s2Step1EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step1EntryGvBefore s2Step1EntryGvAfter s2Step1EntryGvAfter
    s2Step1EntryGvRow s2Step1EntryGvOut 2 s2Step1EntryGvFresh [] [] []
    (growRow 771 s2Step1EntryGvFresh) ([]) s2Step1EntryGv_Incoming s2Step1EntryGv_checked h4 s2Step1EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step1EntryFvBefore s2Step1EntryFvAfter s2Step1EntryGvAfter
    s2Step1EntryFvRow s2Step1EntryFvOut 2 s2Step1EntryFvFresh [(s2Step1EntryGvRow,2)] [s2Step1EntryGvFresh] [s2Step1EntryGvOut]
    (growRow 770 s2Step1EntryFvFresh) ((growRow 771 s2Step1EntryGvFresh ++ [])) s2Step1EntryFv_Incoming s2Step1EntryFv_checked h3 s2Step1EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step1EntryGBefore s2Step1EntryGAfter s2Step1EntryGvAfter
    s2Step1EntryGRow s2Step1EntryGOut 256 s2Step1EntryGFresh [(s2Step1EntryFvRow,2),(s2Step1EntryGvRow,2)] [s2Step1EntryFvFresh,s2Step1EntryGvFresh] [s2Step1EntryFvOut,s2Step1EntryGvOut]
    (growRow 769 s2Step1EntryGFresh) ((growRow 770 s2Step1EntryFvFresh ++ (growRow 771 s2Step1EntryGvFresh ++ []))) s2Step1EntryG_Incoming s2Step1EntryG_checked h2 s2Step1EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step1EntryFBefore s2Step1EntryFAfter s2Step1EntryGvAfter
    s2Step1EntryFRow s2Step1EntryFOut 256 s2Step1EntryFFresh [(s2Step1EntryGRow,256),(s2Step1EntryFvRow,2),(s2Step1EntryGvRow,2)] [s2Step1EntryGFresh,s2Step1EntryFvFresh,s2Step1EntryGvFresh] [s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut]
    (growRow 768 s2Step1EntryFFresh) ((growRow 769 s2Step1EntryGFresh ++ (growRow 770 s2Step1EntryFvFresh ++ (growRow 771 s2Step1EntryGvFresh ++ [])))) s2Step1EntryF_Incoming s2Step1EntryF_checked h1 s2Step1EntryF_Outgoing
  exact h0
theorem s2Step1EntryBank_checked : compileHmrBankResizeLog .entry s2Step1EntryFBefore ⟨s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow⟩ ⟨256,256,2,2⟩ [s2Step1EntryFFresh,s2Step1EntryGFresh,s2Step1EntryFvFresh,s2Step1EntryGvFresh]=
    some (s2Step1EntryGvAfter,⟨s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut⟩,(growRow 768 s2Step1EntryFFresh ++ (growRow 769 s2Step1EntryGFresh ++ (growRow 770 s2Step1EntryFvFresh ++ (growRow 771 s2Step1EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step1EntryBank_rows]
  rfl
def s2Step2EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step2EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step2EntryFvOut : WindowRow := ⟨[255, 785, 787],770⟩
def s2Step2EntryGvOut : WindowRow := ⟨[779, 778, 780],771⟩
theorem s2Step2EntryBank_incomingDistinct : ([s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2EntryBank_outgoingOwned : rowsOwned s2Step2EntryGvAfter [s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step2EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2EntryF_Incoming : rowsOwned s2Step2EntryFBefore [s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow] 0 s2Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2EntryF_Outgoing : rowsOwned s2Step2EntryGvAfter [s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] :=
  hmrRows_owned_drop s2Step2EntryGvAfter [s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] 0 s2Step2EntryBank_outgoingOwned
theorem s2Step2EntryG_Incoming : rowsOwned s2Step2EntryGBefore [s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow] 1 s2Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2EntryG_Outgoing : rowsOwned s2Step2EntryGvAfter [s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] :=
  hmrRows_owned_drop s2Step2EntryGvAfter [s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] 1 s2Step2EntryBank_outgoingOwned
theorem s2Step2EntryFv_Incoming : rowsOwned s2Step2EntryFvBefore [s2Step2EntryFvRow,s2Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow] 2 s2Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2EntryFv_Outgoing : rowsOwned s2Step2EntryGvAfter [s2Step2EntryFvOut,s2Step2EntryGvOut] :=
  hmrRows_owned_drop s2Step2EntryGvAfter [s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] 2 s2Step2EntryBank_outgoingOwned
theorem s2Step2EntryGv_Incoming : rowsOwned s2Step2EntryGvBefore [s2Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow] 3 s2Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step2EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step2EntryGv_Outgoing : rowsOwned s2Step2EntryGvAfter [s2Step2EntryGvOut] :=
  hmrRows_owned_drop s2Step2EntryGvAfter [s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut] 3 s2Step2EntryBank_outgoingOwned
theorem s2Step2EntryBank_rows : planWindowRowsLog s2Step2EntryFBefore [(s2Step2EntryFRow,256),(s2Step2EntryGRow,256),(s2Step2EntryFvRow,3),(s2Step2EntryGvRow,3)] [s2Step2EntryFFresh,s2Step2EntryGFresh,s2Step2EntryFvFresh,s2Step2EntryGvFresh]=
    some (s2Step2EntryGvAfter,[s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut],(growRow 768 s2Step2EntryFFresh ++ (growRow 769 s2Step2EntryGFresh ++ (growRow 770 s2Step2EntryFvFresh ++ (growRow 771 s2Step2EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step2EntryGvAfter [] []=some (s2Step2EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step2EntryGvBefore s2Step2EntryGvAfter s2Step2EntryGvAfter
    s2Step2EntryGvRow s2Step2EntryGvOut 3 s2Step2EntryGvFresh [] [] []
    (growRow 771 s2Step2EntryGvFresh) ([]) s2Step2EntryGv_Incoming s2Step2EntryGv_checked h4 s2Step2EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step2EntryFvBefore s2Step2EntryFvAfter s2Step2EntryGvAfter
    s2Step2EntryFvRow s2Step2EntryFvOut 3 s2Step2EntryFvFresh [(s2Step2EntryGvRow,3)] [s2Step2EntryGvFresh] [s2Step2EntryGvOut]
    (growRow 770 s2Step2EntryFvFresh) ((growRow 771 s2Step2EntryGvFresh ++ [])) s2Step2EntryFv_Incoming s2Step2EntryFv_checked h3 s2Step2EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step2EntryGBefore s2Step2EntryGAfter s2Step2EntryGvAfter
    s2Step2EntryGRow s2Step2EntryGOut 256 s2Step2EntryGFresh [(s2Step2EntryFvRow,3),(s2Step2EntryGvRow,3)] [s2Step2EntryFvFresh,s2Step2EntryGvFresh] [s2Step2EntryFvOut,s2Step2EntryGvOut]
    (growRow 769 s2Step2EntryGFresh) ((growRow 770 s2Step2EntryFvFresh ++ (growRow 771 s2Step2EntryGvFresh ++ []))) s2Step2EntryG_Incoming s2Step2EntryG_checked h2 s2Step2EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step2EntryFBefore s2Step2EntryFAfter s2Step2EntryGvAfter
    s2Step2EntryFRow s2Step2EntryFOut 256 s2Step2EntryFFresh [(s2Step2EntryGRow,256),(s2Step2EntryFvRow,3),(s2Step2EntryGvRow,3)] [s2Step2EntryGFresh,s2Step2EntryFvFresh,s2Step2EntryGvFresh] [s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut]
    (growRow 768 s2Step2EntryFFresh) ((growRow 769 s2Step2EntryGFresh ++ (growRow 770 s2Step2EntryFvFresh ++ (growRow 771 s2Step2EntryGvFresh ++ [])))) s2Step2EntryF_Incoming s2Step2EntryF_checked h1 s2Step2EntryF_Outgoing
  exact h0
theorem s2Step2EntryBank_checked : compileHmrBankResizeLog .entry s2Step2EntryFBefore ⟨s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow⟩ ⟨256,256,3,3⟩ [s2Step2EntryFFresh,s2Step2EntryGFresh,s2Step2EntryFvFresh,s2Step2EntryGvFresh]=
    some (s2Step2EntryGvAfter,⟨s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut⟩,(growRow 768 s2Step2EntryFFresh ++ (growRow 769 s2Step2EntryGFresh ++ (growRow 770 s2Step2EntryFvFresh ++ (growRow 771 s2Step2EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step2EntryBank_rows]
  rfl
def s2Step3EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step3EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step3EntryFvOut : WindowRow := ⟨[255, 785, 787, 789],770⟩
def s2Step3EntryGvOut : WindowRow := ⟨[779, 778, 786, 780],771⟩
theorem s2Step3EntryBank_incomingDistinct : ([s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3EntryBank_outgoingOwned : rowsOwned s2Step3EntryGvAfter [s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step3EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3EntryF_Incoming : rowsOwned s2Step3EntryFBefore [s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow] 0 s2Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3EntryF_Outgoing : rowsOwned s2Step3EntryGvAfter [s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] :=
  hmrRows_owned_drop s2Step3EntryGvAfter [s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] 0 s2Step3EntryBank_outgoingOwned
theorem s2Step3EntryG_Incoming : rowsOwned s2Step3EntryGBefore [s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow] 1 s2Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3EntryG_Outgoing : rowsOwned s2Step3EntryGvAfter [s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] :=
  hmrRows_owned_drop s2Step3EntryGvAfter [s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] 1 s2Step3EntryBank_outgoingOwned
theorem s2Step3EntryFv_Incoming : rowsOwned s2Step3EntryFvBefore [s2Step3EntryFvRow,s2Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow] 2 s2Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3EntryFv_Outgoing : rowsOwned s2Step3EntryGvAfter [s2Step3EntryFvOut,s2Step3EntryGvOut] :=
  hmrRows_owned_drop s2Step3EntryGvAfter [s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] 2 s2Step3EntryBank_outgoingOwned
theorem s2Step3EntryGv_Incoming : rowsOwned s2Step3EntryGvBefore [s2Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow] 3 s2Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step3EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step3EntryGv_Outgoing : rowsOwned s2Step3EntryGvAfter [s2Step3EntryGvOut] :=
  hmrRows_owned_drop s2Step3EntryGvAfter [s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut] 3 s2Step3EntryBank_outgoingOwned
theorem s2Step3EntryBank_rows : planWindowRowsLog s2Step3EntryFBefore [(s2Step3EntryFRow,256),(s2Step3EntryGRow,256),(s2Step3EntryFvRow,4),(s2Step3EntryGvRow,4)] [s2Step3EntryFFresh,s2Step3EntryGFresh,s2Step3EntryFvFresh,s2Step3EntryGvFresh]=
    some (s2Step3EntryGvAfter,[s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut],(growRow 768 s2Step3EntryFFresh ++ (growRow 769 s2Step3EntryGFresh ++ (growRow 770 s2Step3EntryFvFresh ++ (growRow 771 s2Step3EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step3EntryGvAfter [] []=some (s2Step3EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step3EntryGvBefore s2Step3EntryGvAfter s2Step3EntryGvAfter
    s2Step3EntryGvRow s2Step3EntryGvOut 4 s2Step3EntryGvFresh [] [] []
    (growRow 771 s2Step3EntryGvFresh) ([]) s2Step3EntryGv_Incoming s2Step3EntryGv_checked h4 s2Step3EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step3EntryFvBefore s2Step3EntryFvAfter s2Step3EntryGvAfter
    s2Step3EntryFvRow s2Step3EntryFvOut 4 s2Step3EntryFvFresh [(s2Step3EntryGvRow,4)] [s2Step3EntryGvFresh] [s2Step3EntryGvOut]
    (growRow 770 s2Step3EntryFvFresh) ((growRow 771 s2Step3EntryGvFresh ++ [])) s2Step3EntryFv_Incoming s2Step3EntryFv_checked h3 s2Step3EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step3EntryGBefore s2Step3EntryGAfter s2Step3EntryGvAfter
    s2Step3EntryGRow s2Step3EntryGOut 256 s2Step3EntryGFresh [(s2Step3EntryFvRow,4),(s2Step3EntryGvRow,4)] [s2Step3EntryFvFresh,s2Step3EntryGvFresh] [s2Step3EntryFvOut,s2Step3EntryGvOut]
    (growRow 769 s2Step3EntryGFresh) ((growRow 770 s2Step3EntryFvFresh ++ (growRow 771 s2Step3EntryGvFresh ++ []))) s2Step3EntryG_Incoming s2Step3EntryG_checked h2 s2Step3EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step3EntryFBefore s2Step3EntryFAfter s2Step3EntryGvAfter
    s2Step3EntryFRow s2Step3EntryFOut 256 s2Step3EntryFFresh [(s2Step3EntryGRow,256),(s2Step3EntryFvRow,4),(s2Step3EntryGvRow,4)] [s2Step3EntryGFresh,s2Step3EntryFvFresh,s2Step3EntryGvFresh] [s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut]
    (growRow 768 s2Step3EntryFFresh) ((growRow 769 s2Step3EntryGFresh ++ (growRow 770 s2Step3EntryFvFresh ++ (growRow 771 s2Step3EntryGvFresh ++ [])))) s2Step3EntryF_Incoming s2Step3EntryF_checked h1 s2Step3EntryF_Outgoing
  exact h0
theorem s2Step3EntryBank_checked : compileHmrBankResizeLog .entry s2Step3EntryFBefore ⟨s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow⟩ ⟨256,256,4,4⟩ [s2Step3EntryFFresh,s2Step3EntryGFresh,s2Step3EntryFvFresh,s2Step3EntryGvFresh]=
    some (s2Step3EntryGvAfter,⟨s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut⟩,(growRow 768 s2Step3EntryFFresh ++ (growRow 769 s2Step3EntryGFresh ++ (growRow 770 s2Step3EntryFvFresh ++ (growRow 771 s2Step3EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step3EntryBank_rows]
  rfl
def s2Step4EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step4EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step4EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791],770⟩
def s2Step4EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 780],771⟩
theorem s2Step4EntryBank_incomingDistinct : ([s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4EntryBank_outgoingOwned : rowsOwned s2Step4EntryGvAfter [s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step4EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4EntryF_Incoming : rowsOwned s2Step4EntryFBefore [s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow] 0 s2Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4EntryF_Outgoing : rowsOwned s2Step4EntryGvAfter [s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] :=
  hmrRows_owned_drop s2Step4EntryGvAfter [s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] 0 s2Step4EntryBank_outgoingOwned
theorem s2Step4EntryG_Incoming : rowsOwned s2Step4EntryGBefore [s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow] 1 s2Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4EntryG_Outgoing : rowsOwned s2Step4EntryGvAfter [s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] :=
  hmrRows_owned_drop s2Step4EntryGvAfter [s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] 1 s2Step4EntryBank_outgoingOwned
theorem s2Step4EntryFv_Incoming : rowsOwned s2Step4EntryFvBefore [s2Step4EntryFvRow,s2Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow] 2 s2Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4EntryFv_Outgoing : rowsOwned s2Step4EntryGvAfter [s2Step4EntryFvOut,s2Step4EntryGvOut] :=
  hmrRows_owned_drop s2Step4EntryGvAfter [s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] 2 s2Step4EntryBank_outgoingOwned
theorem s2Step4EntryGv_Incoming : rowsOwned s2Step4EntryGvBefore [s2Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow] 3 s2Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step4EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step4EntryGv_Outgoing : rowsOwned s2Step4EntryGvAfter [s2Step4EntryGvOut] :=
  hmrRows_owned_drop s2Step4EntryGvAfter [s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut] 3 s2Step4EntryBank_outgoingOwned
theorem s2Step4EntryBank_rows : planWindowRowsLog s2Step4EntryFBefore [(s2Step4EntryFRow,256),(s2Step4EntryGRow,256),(s2Step4EntryFvRow,5),(s2Step4EntryGvRow,5)] [s2Step4EntryFFresh,s2Step4EntryGFresh,s2Step4EntryFvFresh,s2Step4EntryGvFresh]=
    some (s2Step4EntryGvAfter,[s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut],(growRow 768 s2Step4EntryFFresh ++ (growRow 769 s2Step4EntryGFresh ++ (growRow 770 s2Step4EntryFvFresh ++ (growRow 771 s2Step4EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step4EntryGvAfter [] []=some (s2Step4EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step4EntryGvBefore s2Step4EntryGvAfter s2Step4EntryGvAfter
    s2Step4EntryGvRow s2Step4EntryGvOut 5 s2Step4EntryGvFresh [] [] []
    (growRow 771 s2Step4EntryGvFresh) ([]) s2Step4EntryGv_Incoming s2Step4EntryGv_checked h4 s2Step4EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step4EntryFvBefore s2Step4EntryFvAfter s2Step4EntryGvAfter
    s2Step4EntryFvRow s2Step4EntryFvOut 5 s2Step4EntryFvFresh [(s2Step4EntryGvRow,5)] [s2Step4EntryGvFresh] [s2Step4EntryGvOut]
    (growRow 770 s2Step4EntryFvFresh) ((growRow 771 s2Step4EntryGvFresh ++ [])) s2Step4EntryFv_Incoming s2Step4EntryFv_checked h3 s2Step4EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step4EntryGBefore s2Step4EntryGAfter s2Step4EntryGvAfter
    s2Step4EntryGRow s2Step4EntryGOut 256 s2Step4EntryGFresh [(s2Step4EntryFvRow,5),(s2Step4EntryGvRow,5)] [s2Step4EntryFvFresh,s2Step4EntryGvFresh] [s2Step4EntryFvOut,s2Step4EntryGvOut]
    (growRow 769 s2Step4EntryGFresh) ((growRow 770 s2Step4EntryFvFresh ++ (growRow 771 s2Step4EntryGvFresh ++ []))) s2Step4EntryG_Incoming s2Step4EntryG_checked h2 s2Step4EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step4EntryFBefore s2Step4EntryFAfter s2Step4EntryGvAfter
    s2Step4EntryFRow s2Step4EntryFOut 256 s2Step4EntryFFresh [(s2Step4EntryGRow,256),(s2Step4EntryFvRow,5),(s2Step4EntryGvRow,5)] [s2Step4EntryGFresh,s2Step4EntryFvFresh,s2Step4EntryGvFresh] [s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut]
    (growRow 768 s2Step4EntryFFresh) ((growRow 769 s2Step4EntryGFresh ++ (growRow 770 s2Step4EntryFvFresh ++ (growRow 771 s2Step4EntryGvFresh ++ [])))) s2Step4EntryF_Incoming s2Step4EntryF_checked h1 s2Step4EntryF_Outgoing
  exact h0
theorem s2Step4EntryBank_checked : compileHmrBankResizeLog .entry s2Step4EntryFBefore ⟨s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow⟩ ⟨256,256,5,5⟩ [s2Step4EntryFFresh,s2Step4EntryGFresh,s2Step4EntryFvFresh,s2Step4EntryGvFresh]=
    some (s2Step4EntryGvAfter,⟨s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut⟩,(growRow 768 s2Step4EntryFFresh ++ (growRow 769 s2Step4EntryGFresh ++ (growRow 770 s2Step4EntryFvFresh ++ (growRow 771 s2Step4EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step4EntryBank_rows]
  rfl
def s2Step5EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step5EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step5EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793],770⟩
def s2Step5EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 780],771⟩
theorem s2Step5EntryBank_incomingDistinct : ([s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5EntryBank_outgoingOwned : rowsOwned s2Step5EntryGvAfter [s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step5EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5EntryF_Incoming : rowsOwned s2Step5EntryFBefore [s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow] 0 s2Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5EntryF_Outgoing : rowsOwned s2Step5EntryGvAfter [s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] :=
  hmrRows_owned_drop s2Step5EntryGvAfter [s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] 0 s2Step5EntryBank_outgoingOwned
theorem s2Step5EntryG_Incoming : rowsOwned s2Step5EntryGBefore [s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow] 1 s2Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5EntryG_Outgoing : rowsOwned s2Step5EntryGvAfter [s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] :=
  hmrRows_owned_drop s2Step5EntryGvAfter [s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] 1 s2Step5EntryBank_outgoingOwned
theorem s2Step5EntryFv_Incoming : rowsOwned s2Step5EntryFvBefore [s2Step5EntryFvRow,s2Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow] 2 s2Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5EntryFv_Outgoing : rowsOwned s2Step5EntryGvAfter [s2Step5EntryFvOut,s2Step5EntryGvOut] :=
  hmrRows_owned_drop s2Step5EntryGvAfter [s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] 2 s2Step5EntryBank_outgoingOwned
theorem s2Step5EntryGv_Incoming : rowsOwned s2Step5EntryGvBefore [s2Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow] 3 s2Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step5EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
theorem s2Step5EntryGv_Outgoing : rowsOwned s2Step5EntryGvAfter [s2Step5EntryGvOut] :=
  hmrRows_owned_drop s2Step5EntryGvAfter [s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut] 3 s2Step5EntryBank_outgoingOwned
theorem s2Step5EntryBank_rows : planWindowRowsLog s2Step5EntryFBefore [(s2Step5EntryFRow,256),(s2Step5EntryGRow,256),(s2Step5EntryFvRow,6),(s2Step5EntryGvRow,6)] [s2Step5EntryFFresh,s2Step5EntryGFresh,s2Step5EntryFvFresh,s2Step5EntryGvFresh]=
    some (s2Step5EntryGvAfter,[s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut],(growRow 768 s2Step5EntryFFresh ++ (growRow 769 s2Step5EntryGFresh ++ (growRow 770 s2Step5EntryFvFresh ++ (growRow 771 s2Step5EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step5EntryGvAfter [] []=some (s2Step5EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step5EntryGvBefore s2Step5EntryGvAfter s2Step5EntryGvAfter
    s2Step5EntryGvRow s2Step5EntryGvOut 6 s2Step5EntryGvFresh [] [] []
    (growRow 771 s2Step5EntryGvFresh) ([]) s2Step5EntryGv_Incoming s2Step5EntryGv_checked h4 s2Step5EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step5EntryFvBefore s2Step5EntryFvAfter s2Step5EntryGvAfter
    s2Step5EntryFvRow s2Step5EntryFvOut 6 s2Step5EntryFvFresh [(s2Step5EntryGvRow,6)] [s2Step5EntryGvFresh] [s2Step5EntryGvOut]
    (growRow 770 s2Step5EntryFvFresh) ((growRow 771 s2Step5EntryGvFresh ++ [])) s2Step5EntryFv_Incoming s2Step5EntryFv_checked h3 s2Step5EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step5EntryGBefore s2Step5EntryGAfter s2Step5EntryGvAfter
    s2Step5EntryGRow s2Step5EntryGOut 256 s2Step5EntryGFresh [(s2Step5EntryFvRow,6),(s2Step5EntryGvRow,6)] [s2Step5EntryFvFresh,s2Step5EntryGvFresh] [s2Step5EntryFvOut,s2Step5EntryGvOut]
    (growRow 769 s2Step5EntryGFresh) ((growRow 770 s2Step5EntryFvFresh ++ (growRow 771 s2Step5EntryGvFresh ++ []))) s2Step5EntryG_Incoming s2Step5EntryG_checked h2 s2Step5EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step5EntryFBefore s2Step5EntryFAfter s2Step5EntryGvAfter
    s2Step5EntryFRow s2Step5EntryFOut 256 s2Step5EntryFFresh [(s2Step5EntryGRow,256),(s2Step5EntryFvRow,6),(s2Step5EntryGvRow,6)] [s2Step5EntryGFresh,s2Step5EntryFvFresh,s2Step5EntryGvFresh] [s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut]
    (growRow 768 s2Step5EntryFFresh) ((growRow 769 s2Step5EntryGFresh ++ (growRow 770 s2Step5EntryFvFresh ++ (growRow 771 s2Step5EntryGvFresh ++ [])))) s2Step5EntryF_Incoming s2Step5EntryF_checked h1 s2Step5EntryF_Outgoing
  exact h0
theorem s2Step5EntryBank_checked : compileHmrBankResizeLog .entry s2Step5EntryFBefore ⟨s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow⟩ ⟨256,256,6,6⟩ [s2Step5EntryFFresh,s2Step5EntryGFresh,s2Step5EntryFvFresh,s2Step5EntryGvFresh]=
    some (s2Step5EntryGvAfter,⟨s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut⟩,(growRow 768 s2Step5EntryFFresh ++ (growRow 769 s2Step5EntryGFresh ++ (growRow 770 s2Step5EntryFvFresh ++ (growRow 771 s2Step5EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step5EntryBank_rows]
  rfl
def s2Step6EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step6EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step6EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796],770⟩
def s2Step6EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 780],771⟩
theorem s2Step6EntryBank_incomingDistinct : ([s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6EntryBank_outgoingOwned : rowsOwned s2Step6EntryGvAfter [s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step6EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6EntryF_Incoming : rowsOwned s2Step6EntryFBefore [s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow] 0 s2Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6EntryF_Outgoing : rowsOwned s2Step6EntryGvAfter [s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] :=
  hmrRows_owned_drop s2Step6EntryGvAfter [s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] 0 s2Step6EntryBank_outgoingOwned
theorem s2Step6EntryG_Incoming : rowsOwned s2Step6EntryGBefore [s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow] 1 s2Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6EntryG_Outgoing : rowsOwned s2Step6EntryGvAfter [s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] :=
  hmrRows_owned_drop s2Step6EntryGvAfter [s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] 1 s2Step6EntryBank_outgoingOwned
theorem s2Step6EntryFv_Incoming : rowsOwned s2Step6EntryFvBefore [s2Step6EntryFvRow,s2Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow] 2 s2Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6EntryFv_Outgoing : rowsOwned s2Step6EntryGvAfter [s2Step6EntryFvOut,s2Step6EntryGvOut] :=
  hmrRows_owned_drop s2Step6EntryGvAfter [s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] 2 s2Step6EntryBank_outgoingOwned
theorem s2Step6EntryGv_Incoming : rowsOwned s2Step6EntryGvBefore [s2Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow] 3 s2Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step6EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
    decide +kernel
theorem s2Step6EntryGv_Outgoing : rowsOwned s2Step6EntryGvAfter [s2Step6EntryGvOut] :=
  hmrRows_owned_drop s2Step6EntryGvAfter [s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut] 3 s2Step6EntryBank_outgoingOwned
theorem s2Step6EntryBank_rows : planWindowRowsLog s2Step6EntryFBefore [(s2Step6EntryFRow,256),(s2Step6EntryGRow,256),(s2Step6EntryFvRow,7),(s2Step6EntryGvRow,7)] [s2Step6EntryFFresh,s2Step6EntryGFresh,s2Step6EntryFvFresh,s2Step6EntryGvFresh]=
    some (s2Step6EntryGvAfter,[s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut],(growRow 768 s2Step6EntryFFresh ++ (growRow 769 s2Step6EntryGFresh ++ (growRow 770 s2Step6EntryFvFresh ++ (growRow 771 s2Step6EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step6EntryGvAfter [] []=some (s2Step6EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step6EntryGvBefore s2Step6EntryGvAfter s2Step6EntryGvAfter
    s2Step6EntryGvRow s2Step6EntryGvOut 7 s2Step6EntryGvFresh [] [] []
    (growRow 771 s2Step6EntryGvFresh) ([]) s2Step6EntryGv_Incoming s2Step6EntryGv_checked h4 s2Step6EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step6EntryFvBefore s2Step6EntryFvAfter s2Step6EntryGvAfter
    s2Step6EntryFvRow s2Step6EntryFvOut 7 s2Step6EntryFvFresh [(s2Step6EntryGvRow,7)] [s2Step6EntryGvFresh] [s2Step6EntryGvOut]
    (growRow 770 s2Step6EntryFvFresh) ((growRow 771 s2Step6EntryGvFresh ++ [])) s2Step6EntryFv_Incoming s2Step6EntryFv_checked h3 s2Step6EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step6EntryGBefore s2Step6EntryGAfter s2Step6EntryGvAfter
    s2Step6EntryGRow s2Step6EntryGOut 256 s2Step6EntryGFresh [(s2Step6EntryFvRow,7),(s2Step6EntryGvRow,7)] [s2Step6EntryFvFresh,s2Step6EntryGvFresh] [s2Step6EntryFvOut,s2Step6EntryGvOut]
    (growRow 769 s2Step6EntryGFresh) ((growRow 770 s2Step6EntryFvFresh ++ (growRow 771 s2Step6EntryGvFresh ++ []))) s2Step6EntryG_Incoming s2Step6EntryG_checked h2 s2Step6EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step6EntryFBefore s2Step6EntryFAfter s2Step6EntryGvAfter
    s2Step6EntryFRow s2Step6EntryFOut 256 s2Step6EntryFFresh [(s2Step6EntryGRow,256),(s2Step6EntryFvRow,7),(s2Step6EntryGvRow,7)] [s2Step6EntryGFresh,s2Step6EntryFvFresh,s2Step6EntryGvFresh] [s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut]
    (growRow 768 s2Step6EntryFFresh) ((growRow 769 s2Step6EntryGFresh ++ (growRow 770 s2Step6EntryFvFresh ++ (growRow 771 s2Step6EntryGvFresh ++ [])))) s2Step6EntryF_Incoming s2Step6EntryF_checked h1 s2Step6EntryF_Outgoing
  exact h0
theorem s2Step6EntryBank_checked : compileHmrBankResizeLog .entry s2Step6EntryFBefore ⟨s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow⟩ ⟨256,256,7,7⟩ [s2Step6EntryFFresh,s2Step6EntryGFresh,s2Step6EntryFvFresh,s2Step6EntryGvFresh]=
    some (s2Step6EntryGvAfter,⟨s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut⟩,(growRow 768 s2Step6EntryFFresh ++ (growRow 769 s2Step6EntryGFresh ++ (growRow 770 s2Step6EntryFvFresh ++ (growRow 771 s2Step6EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step6EntryBank_rows]
  rfl
def s2Step7EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step7EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step7EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩
def s2Step7EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 780],771⟩
theorem s2Step7EntryBank_incomingDistinct : ([s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7EntryBank_outgoingOwned : rowsOwned s2Step7EntryGvAfter [s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step7EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7EntryF_Incoming : rowsOwned s2Step7EntryFBefore [s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow] 0 s2Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7EntryF_Outgoing : rowsOwned s2Step7EntryGvAfter [s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] :=
  hmrRows_owned_drop s2Step7EntryGvAfter [s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] 0 s2Step7EntryBank_outgoingOwned
theorem s2Step7EntryG_Incoming : rowsOwned s2Step7EntryGBefore [s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow] 1 s2Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7EntryG_Outgoing : rowsOwned s2Step7EntryGvAfter [s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] :=
  hmrRows_owned_drop s2Step7EntryGvAfter [s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] 1 s2Step7EntryBank_outgoingOwned
theorem s2Step7EntryFv_Incoming : rowsOwned s2Step7EntryFvBefore [s2Step7EntryFvRow,s2Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow] 2 s2Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7EntryFv_Outgoing : rowsOwned s2Step7EntryGvAfter [s2Step7EntryFvOut,s2Step7EntryGvOut] :=
  hmrRows_owned_drop s2Step7EntryGvAfter [s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] 2 s2Step7EntryBank_outgoingOwned
theorem s2Step7EntryGv_Incoming : rowsOwned s2Step7EntryGvBefore [s2Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow] 3 s2Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step7EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
    decide +kernel
theorem s2Step7EntryGv_Outgoing : rowsOwned s2Step7EntryGvAfter [s2Step7EntryGvOut] :=
  hmrRows_owned_drop s2Step7EntryGvAfter [s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut] 3 s2Step7EntryBank_outgoingOwned
theorem s2Step7EntryBank_rows : planWindowRowsLog s2Step7EntryFBefore [(s2Step7EntryFRow,256),(s2Step7EntryGRow,256),(s2Step7EntryFvRow,8),(s2Step7EntryGvRow,8)] [s2Step7EntryFFresh,s2Step7EntryGFresh,s2Step7EntryFvFresh,s2Step7EntryGvFresh]=
    some (s2Step7EntryGvAfter,[s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut],(growRow 768 s2Step7EntryFFresh ++ (growRow 769 s2Step7EntryGFresh ++ (growRow 770 s2Step7EntryFvFresh ++ (growRow 771 s2Step7EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step7EntryGvAfter [] []=some (s2Step7EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step7EntryGvBefore s2Step7EntryGvAfter s2Step7EntryGvAfter
    s2Step7EntryGvRow s2Step7EntryGvOut 8 s2Step7EntryGvFresh [] [] []
    (growRow 771 s2Step7EntryGvFresh) ([]) s2Step7EntryGv_Incoming s2Step7EntryGv_checked h4 s2Step7EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step7EntryFvBefore s2Step7EntryFvAfter s2Step7EntryGvAfter
    s2Step7EntryFvRow s2Step7EntryFvOut 8 s2Step7EntryFvFresh [(s2Step7EntryGvRow,8)] [s2Step7EntryGvFresh] [s2Step7EntryGvOut]
    (growRow 770 s2Step7EntryFvFresh) ((growRow 771 s2Step7EntryGvFresh ++ [])) s2Step7EntryFv_Incoming s2Step7EntryFv_checked h3 s2Step7EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step7EntryGBefore s2Step7EntryGAfter s2Step7EntryGvAfter
    s2Step7EntryGRow s2Step7EntryGOut 256 s2Step7EntryGFresh [(s2Step7EntryFvRow,8),(s2Step7EntryGvRow,8)] [s2Step7EntryFvFresh,s2Step7EntryGvFresh] [s2Step7EntryFvOut,s2Step7EntryGvOut]
    (growRow 769 s2Step7EntryGFresh) ((growRow 770 s2Step7EntryFvFresh ++ (growRow 771 s2Step7EntryGvFresh ++ []))) s2Step7EntryG_Incoming s2Step7EntryG_checked h2 s2Step7EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step7EntryFBefore s2Step7EntryFAfter s2Step7EntryGvAfter
    s2Step7EntryFRow s2Step7EntryFOut 256 s2Step7EntryFFresh [(s2Step7EntryGRow,256),(s2Step7EntryFvRow,8),(s2Step7EntryGvRow,8)] [s2Step7EntryGFresh,s2Step7EntryFvFresh,s2Step7EntryGvFresh] [s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut]
    (growRow 768 s2Step7EntryFFresh) ((growRow 769 s2Step7EntryGFresh ++ (growRow 770 s2Step7EntryFvFresh ++ (growRow 771 s2Step7EntryGvFresh ++ [])))) s2Step7EntryF_Incoming s2Step7EntryF_checked h1 s2Step7EntryF_Outgoing
  exact h0
theorem s2Step7EntryBank_checked : compileHmrBankResizeLog .entry s2Step7EntryFBefore ⟨s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow⟩ ⟨256,256,8,8⟩ [s2Step7EntryFFresh,s2Step7EntryGFresh,s2Step7EntryFvFresh,s2Step7EntryGvFresh]=
    some (s2Step7EntryGvAfter,⟨s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut⟩,(growRow 768 s2Step7EntryFFresh ++ (growRow 769 s2Step7EntryGFresh ++ (growRow 770 s2Step7EntryFvFresh ++ (growRow 771 s2Step7EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step7EntryBank_rows]
  rfl
def s2Step8EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step8EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step8EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩
def s2Step8EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 780],771⟩
theorem s2Step8EntryBank_incomingDistinct : ([s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8EntryBank_outgoingOwned : rowsOwned s2Step8EntryGvAfter [s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step8EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8EntryF_Incoming : rowsOwned s2Step8EntryFBefore [s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow] 0 s2Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8EntryF_Outgoing : rowsOwned s2Step8EntryGvAfter [s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] :=
  hmrRows_owned_drop s2Step8EntryGvAfter [s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] 0 s2Step8EntryBank_outgoingOwned
theorem s2Step8EntryG_Incoming : rowsOwned s2Step8EntryGBefore [s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow] 1 s2Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8EntryG_Outgoing : rowsOwned s2Step8EntryGvAfter [s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] :=
  hmrRows_owned_drop s2Step8EntryGvAfter [s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] 1 s2Step8EntryBank_outgoingOwned
theorem s2Step8EntryFv_Incoming : rowsOwned s2Step8EntryFvBefore [s2Step8EntryFvRow,s2Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow] 2 s2Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8EntryFv_Outgoing : rowsOwned s2Step8EntryGvAfter [s2Step8EntryFvOut,s2Step8EntryGvOut] :=
  hmrRows_owned_drop s2Step8EntryGvAfter [s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] 2 s2Step8EntryBank_outgoingOwned
theorem s2Step8EntryGv_Incoming : rowsOwned s2Step8EntryGvBefore [s2Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow] 3 s2Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step8EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
    decide +kernel
theorem s2Step8EntryGv_Outgoing : rowsOwned s2Step8EntryGvAfter [s2Step8EntryGvOut] :=
  hmrRows_owned_drop s2Step8EntryGvAfter [s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut] 3 s2Step8EntryBank_outgoingOwned
theorem s2Step8EntryBank_rows : planWindowRowsLog s2Step8EntryFBefore [(s2Step8EntryFRow,256),(s2Step8EntryGRow,256),(s2Step8EntryFvRow,9),(s2Step8EntryGvRow,9)] [s2Step8EntryFFresh,s2Step8EntryGFresh,s2Step8EntryFvFresh,s2Step8EntryGvFresh]=
    some (s2Step8EntryGvAfter,[s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut],(growRow 768 s2Step8EntryFFresh ++ (growRow 769 s2Step8EntryGFresh ++ (growRow 770 s2Step8EntryFvFresh ++ (growRow 771 s2Step8EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step8EntryGvAfter [] []=some (s2Step8EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step8EntryGvBefore s2Step8EntryGvAfter s2Step8EntryGvAfter
    s2Step8EntryGvRow s2Step8EntryGvOut 9 s2Step8EntryGvFresh [] [] []
    (growRow 771 s2Step8EntryGvFresh) ([]) s2Step8EntryGv_Incoming s2Step8EntryGv_checked h4 s2Step8EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step8EntryFvBefore s2Step8EntryFvAfter s2Step8EntryGvAfter
    s2Step8EntryFvRow s2Step8EntryFvOut 9 s2Step8EntryFvFresh [(s2Step8EntryGvRow,9)] [s2Step8EntryGvFresh] [s2Step8EntryGvOut]
    (growRow 770 s2Step8EntryFvFresh) ((growRow 771 s2Step8EntryGvFresh ++ [])) s2Step8EntryFv_Incoming s2Step8EntryFv_checked h3 s2Step8EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step8EntryGBefore s2Step8EntryGAfter s2Step8EntryGvAfter
    s2Step8EntryGRow s2Step8EntryGOut 256 s2Step8EntryGFresh [(s2Step8EntryFvRow,9),(s2Step8EntryGvRow,9)] [s2Step8EntryFvFresh,s2Step8EntryGvFresh] [s2Step8EntryFvOut,s2Step8EntryGvOut]
    (growRow 769 s2Step8EntryGFresh) ((growRow 770 s2Step8EntryFvFresh ++ (growRow 771 s2Step8EntryGvFresh ++ []))) s2Step8EntryG_Incoming s2Step8EntryG_checked h2 s2Step8EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step8EntryFBefore s2Step8EntryFAfter s2Step8EntryGvAfter
    s2Step8EntryFRow s2Step8EntryFOut 256 s2Step8EntryFFresh [(s2Step8EntryGRow,256),(s2Step8EntryFvRow,9),(s2Step8EntryGvRow,9)] [s2Step8EntryGFresh,s2Step8EntryFvFresh,s2Step8EntryGvFresh] [s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut]
    (growRow 768 s2Step8EntryFFresh) ((growRow 769 s2Step8EntryGFresh ++ (growRow 770 s2Step8EntryFvFresh ++ (growRow 771 s2Step8EntryGvFresh ++ [])))) s2Step8EntryF_Incoming s2Step8EntryF_checked h1 s2Step8EntryF_Outgoing
  exact h0
theorem s2Step8EntryBank_checked : compileHmrBankResizeLog .entry s2Step8EntryFBefore ⟨s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow⟩ ⟨256,256,9,9⟩ [s2Step8EntryFFresh,s2Step8EntryGFresh,s2Step8EntryFvFresh,s2Step8EntryGvFresh]=
    some (s2Step8EntryGvAfter,⟨s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut⟩,(growRow 768 s2Step8EntryFFresh ++ (growRow 769 s2Step8EntryGFresh ++ (growRow 770 s2Step8EntryFvFresh ++ (growRow 771 s2Step8EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step8EntryBank_rows]
  rfl
def s2Step9EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step9EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step9EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩
def s2Step9EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780],771⟩
theorem s2Step9EntryBank_incomingDistinct : ([s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9EntryBank_outgoingOwned : rowsOwned s2Step9EntryGvAfter [s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step9EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9EntryF_Incoming : rowsOwned s2Step9EntryFBefore [s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow] 0 s2Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9EntryF_Outgoing : rowsOwned s2Step9EntryGvAfter [s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] :=
  hmrRows_owned_drop s2Step9EntryGvAfter [s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] 0 s2Step9EntryBank_outgoingOwned
theorem s2Step9EntryG_Incoming : rowsOwned s2Step9EntryGBefore [s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow] 1 s2Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9EntryG_Outgoing : rowsOwned s2Step9EntryGvAfter [s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] :=
  hmrRows_owned_drop s2Step9EntryGvAfter [s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] 1 s2Step9EntryBank_outgoingOwned
theorem s2Step9EntryFv_Incoming : rowsOwned s2Step9EntryFvBefore [s2Step9EntryFvRow,s2Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow] 2 s2Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9EntryFv_Outgoing : rowsOwned s2Step9EntryGvAfter [s2Step9EntryFvOut,s2Step9EntryGvOut] :=
  hmrRows_owned_drop s2Step9EntryGvAfter [s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] 2 s2Step9EntryBank_outgoingOwned
theorem s2Step9EntryGv_Incoming : rowsOwned s2Step9EntryGvBefore [s2Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow] 3 s2Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step9EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
    decide +kernel
theorem s2Step9EntryGv_Outgoing : rowsOwned s2Step9EntryGvAfter [s2Step9EntryGvOut] :=
  hmrRows_owned_drop s2Step9EntryGvAfter [s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut] 3 s2Step9EntryBank_outgoingOwned
theorem s2Step9EntryBank_rows : planWindowRowsLog s2Step9EntryFBefore [(s2Step9EntryFRow,256),(s2Step9EntryGRow,256),(s2Step9EntryFvRow,10),(s2Step9EntryGvRow,10)] [s2Step9EntryFFresh,s2Step9EntryGFresh,s2Step9EntryFvFresh,s2Step9EntryGvFresh]=
    some (s2Step9EntryGvAfter,[s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut],(growRow 768 s2Step9EntryFFresh ++ (growRow 769 s2Step9EntryGFresh ++ (growRow 770 s2Step9EntryFvFresh ++ (growRow 771 s2Step9EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step9EntryGvAfter [] []=some (s2Step9EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step9EntryGvBefore s2Step9EntryGvAfter s2Step9EntryGvAfter
    s2Step9EntryGvRow s2Step9EntryGvOut 10 s2Step9EntryGvFresh [] [] []
    (growRow 771 s2Step9EntryGvFresh) ([]) s2Step9EntryGv_Incoming s2Step9EntryGv_checked h4 s2Step9EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step9EntryFvBefore s2Step9EntryFvAfter s2Step9EntryGvAfter
    s2Step9EntryFvRow s2Step9EntryFvOut 10 s2Step9EntryFvFresh [(s2Step9EntryGvRow,10)] [s2Step9EntryGvFresh] [s2Step9EntryGvOut]
    (growRow 770 s2Step9EntryFvFresh) ((growRow 771 s2Step9EntryGvFresh ++ [])) s2Step9EntryFv_Incoming s2Step9EntryFv_checked h3 s2Step9EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step9EntryGBefore s2Step9EntryGAfter s2Step9EntryGvAfter
    s2Step9EntryGRow s2Step9EntryGOut 256 s2Step9EntryGFresh [(s2Step9EntryFvRow,10),(s2Step9EntryGvRow,10)] [s2Step9EntryFvFresh,s2Step9EntryGvFresh] [s2Step9EntryFvOut,s2Step9EntryGvOut]
    (growRow 769 s2Step9EntryGFresh) ((growRow 770 s2Step9EntryFvFresh ++ (growRow 771 s2Step9EntryGvFresh ++ []))) s2Step9EntryG_Incoming s2Step9EntryG_checked h2 s2Step9EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step9EntryFBefore s2Step9EntryFAfter s2Step9EntryGvAfter
    s2Step9EntryFRow s2Step9EntryFOut 256 s2Step9EntryFFresh [(s2Step9EntryGRow,256),(s2Step9EntryFvRow,10),(s2Step9EntryGvRow,10)] [s2Step9EntryGFresh,s2Step9EntryFvFresh,s2Step9EntryGvFresh] [s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut]
    (growRow 768 s2Step9EntryFFresh) ((growRow 769 s2Step9EntryGFresh ++ (growRow 770 s2Step9EntryFvFresh ++ (growRow 771 s2Step9EntryGvFresh ++ [])))) s2Step9EntryF_Incoming s2Step9EntryF_checked h1 s2Step9EntryF_Outgoing
  exact h0
theorem s2Step9EntryBank_checked : compileHmrBankResizeLog .entry s2Step9EntryFBefore ⟨s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow⟩ ⟨256,256,10,10⟩ [s2Step9EntryFFresh,s2Step9EntryGFresh,s2Step9EntryFvFresh,s2Step9EntryGvFresh]=
    some (s2Step9EntryGvAfter,⟨s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut⟩,(growRow 768 s2Step9EntryFFresh ++ (growRow 769 s2Step9EntryGFresh ++ (growRow 770 s2Step9EntryFvFresh ++ (growRow 771 s2Step9EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step9EntryBank_rows]
  rfl
def s2Step10EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step10EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step10EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩
def s2Step10EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780],771⟩
theorem s2Step10EntryBank_incomingDistinct : ([s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10EntryBank_outgoingOwned : rowsOwned s2Step10EntryGvAfter [s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step10EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10EntryF_Incoming : rowsOwned s2Step10EntryFBefore [s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow] 0 s2Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10EntryF_Outgoing : rowsOwned s2Step10EntryGvAfter [s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] :=
  hmrRows_owned_drop s2Step10EntryGvAfter [s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] 0 s2Step10EntryBank_outgoingOwned
theorem s2Step10EntryG_Incoming : rowsOwned s2Step10EntryGBefore [s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow] 1 s2Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10EntryG_Outgoing : rowsOwned s2Step10EntryGvAfter [s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] :=
  hmrRows_owned_drop s2Step10EntryGvAfter [s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] 1 s2Step10EntryBank_outgoingOwned
theorem s2Step10EntryFv_Incoming : rowsOwned s2Step10EntryFvBefore [s2Step10EntryFvRow,s2Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow] 2 s2Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10EntryFv_Outgoing : rowsOwned s2Step10EntryGvAfter [s2Step10EntryFvOut,s2Step10EntryGvOut] :=
  hmrRows_owned_drop s2Step10EntryGvAfter [s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] 2 s2Step10EntryBank_outgoingOwned
theorem s2Step10EntryGv_Incoming : rowsOwned s2Step10EntryGvBefore [s2Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow] 3 s2Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step10EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step10EntryGv_Outgoing : rowsOwned s2Step10EntryGvAfter [s2Step10EntryGvOut] :=
  hmrRows_owned_drop s2Step10EntryGvAfter [s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut] 3 s2Step10EntryBank_outgoingOwned
theorem s2Step10EntryBank_rows : planWindowRowsLog s2Step10EntryFBefore [(s2Step10EntryFRow,256),(s2Step10EntryGRow,256),(s2Step10EntryFvRow,11),(s2Step10EntryGvRow,11)] [s2Step10EntryFFresh,s2Step10EntryGFresh,s2Step10EntryFvFresh,s2Step10EntryGvFresh]=
    some (s2Step10EntryGvAfter,[s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut],(growRow 768 s2Step10EntryFFresh ++ (growRow 769 s2Step10EntryGFresh ++ (growRow 770 s2Step10EntryFvFresh ++ (growRow 771 s2Step10EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step10EntryGvAfter [] []=some (s2Step10EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step10EntryGvBefore s2Step10EntryGvAfter s2Step10EntryGvAfter
    s2Step10EntryGvRow s2Step10EntryGvOut 11 s2Step10EntryGvFresh [] [] []
    (growRow 771 s2Step10EntryGvFresh) ([]) s2Step10EntryGv_Incoming s2Step10EntryGv_checked h4 s2Step10EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step10EntryFvBefore s2Step10EntryFvAfter s2Step10EntryGvAfter
    s2Step10EntryFvRow s2Step10EntryFvOut 11 s2Step10EntryFvFresh [(s2Step10EntryGvRow,11)] [s2Step10EntryGvFresh] [s2Step10EntryGvOut]
    (growRow 770 s2Step10EntryFvFresh) ((growRow 771 s2Step10EntryGvFresh ++ [])) s2Step10EntryFv_Incoming s2Step10EntryFv_checked h3 s2Step10EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step10EntryGBefore s2Step10EntryGAfter s2Step10EntryGvAfter
    s2Step10EntryGRow s2Step10EntryGOut 256 s2Step10EntryGFresh [(s2Step10EntryFvRow,11),(s2Step10EntryGvRow,11)] [s2Step10EntryFvFresh,s2Step10EntryGvFresh] [s2Step10EntryFvOut,s2Step10EntryGvOut]
    (growRow 769 s2Step10EntryGFresh) ((growRow 770 s2Step10EntryFvFresh ++ (growRow 771 s2Step10EntryGvFresh ++ []))) s2Step10EntryG_Incoming s2Step10EntryG_checked h2 s2Step10EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step10EntryFBefore s2Step10EntryFAfter s2Step10EntryGvAfter
    s2Step10EntryFRow s2Step10EntryFOut 256 s2Step10EntryFFresh [(s2Step10EntryGRow,256),(s2Step10EntryFvRow,11),(s2Step10EntryGvRow,11)] [s2Step10EntryGFresh,s2Step10EntryFvFresh,s2Step10EntryGvFresh] [s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut]
    (growRow 768 s2Step10EntryFFresh) ((growRow 769 s2Step10EntryGFresh ++ (growRow 770 s2Step10EntryFvFresh ++ (growRow 771 s2Step10EntryGvFresh ++ [])))) s2Step10EntryF_Incoming s2Step10EntryF_checked h1 s2Step10EntryF_Outgoing
  exact h0
theorem s2Step10EntryBank_checked : compileHmrBankResizeLog .entry s2Step10EntryFBefore ⟨s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow⟩ ⟨256,256,11,11⟩ [s2Step10EntryFFresh,s2Step10EntryGFresh,s2Step10EntryFvFresh,s2Step10EntryGvFresh]=
    some (s2Step10EntryGvAfter,⟨s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut⟩,(growRow 768 s2Step10EntryFFresh ++ (growRow 769 s2Step10EntryGFresh ++ (growRow 770 s2Step10EntryFvFresh ++ (growRow 771 s2Step10EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step10EntryBank_rows]
  rfl
def s2Step11EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step11EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step11EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩
def s2Step11EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780],771⟩
theorem s2Step11EntryBank_incomingDistinct : ([s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11EntryBank_outgoingOwned : rowsOwned s2Step11EntryGvAfter [s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step11EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11EntryF_Incoming : rowsOwned s2Step11EntryFBefore [s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow] 0 s2Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11EntryF_Outgoing : rowsOwned s2Step11EntryGvAfter [s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] :=
  hmrRows_owned_drop s2Step11EntryGvAfter [s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] 0 s2Step11EntryBank_outgoingOwned
theorem s2Step11EntryG_Incoming : rowsOwned s2Step11EntryGBefore [s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow] 1 s2Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11EntryG_Outgoing : rowsOwned s2Step11EntryGvAfter [s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] :=
  hmrRows_owned_drop s2Step11EntryGvAfter [s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] 1 s2Step11EntryBank_outgoingOwned
theorem s2Step11EntryFv_Incoming : rowsOwned s2Step11EntryFvBefore [s2Step11EntryFvRow,s2Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow] 2 s2Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11EntryFv_Outgoing : rowsOwned s2Step11EntryGvAfter [s2Step11EntryFvOut,s2Step11EntryGvOut] :=
  hmrRows_owned_drop s2Step11EntryGvAfter [s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] 2 s2Step11EntryBank_outgoingOwned
theorem s2Step11EntryGv_Incoming : rowsOwned s2Step11EntryGvBefore [s2Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow] 3 s2Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step11EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
theorem s2Step11EntryGv_Outgoing : rowsOwned s2Step11EntryGvAfter [s2Step11EntryGvOut] :=
  hmrRows_owned_drop s2Step11EntryGvAfter [s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut] 3 s2Step11EntryBank_outgoingOwned
theorem s2Step11EntryBank_rows : planWindowRowsLog s2Step11EntryFBefore [(s2Step11EntryFRow,256),(s2Step11EntryGRow,256),(s2Step11EntryFvRow,12),(s2Step11EntryGvRow,12)] [s2Step11EntryFFresh,s2Step11EntryGFresh,s2Step11EntryFvFresh,s2Step11EntryGvFresh]=
    some (s2Step11EntryGvAfter,[s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut],(growRow 768 s2Step11EntryFFresh ++ (growRow 769 s2Step11EntryGFresh ++ (growRow 770 s2Step11EntryFvFresh ++ (growRow 771 s2Step11EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step11EntryGvAfter [] []=some (s2Step11EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step11EntryGvBefore s2Step11EntryGvAfter s2Step11EntryGvAfter
    s2Step11EntryGvRow s2Step11EntryGvOut 12 s2Step11EntryGvFresh [] [] []
    (growRow 771 s2Step11EntryGvFresh) ([]) s2Step11EntryGv_Incoming s2Step11EntryGv_checked h4 s2Step11EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step11EntryFvBefore s2Step11EntryFvAfter s2Step11EntryGvAfter
    s2Step11EntryFvRow s2Step11EntryFvOut 12 s2Step11EntryFvFresh [(s2Step11EntryGvRow,12)] [s2Step11EntryGvFresh] [s2Step11EntryGvOut]
    (growRow 770 s2Step11EntryFvFresh) ((growRow 771 s2Step11EntryGvFresh ++ [])) s2Step11EntryFv_Incoming s2Step11EntryFv_checked h3 s2Step11EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step11EntryGBefore s2Step11EntryGAfter s2Step11EntryGvAfter
    s2Step11EntryGRow s2Step11EntryGOut 256 s2Step11EntryGFresh [(s2Step11EntryFvRow,12),(s2Step11EntryGvRow,12)] [s2Step11EntryFvFresh,s2Step11EntryGvFresh] [s2Step11EntryFvOut,s2Step11EntryGvOut]
    (growRow 769 s2Step11EntryGFresh) ((growRow 770 s2Step11EntryFvFresh ++ (growRow 771 s2Step11EntryGvFresh ++ []))) s2Step11EntryG_Incoming s2Step11EntryG_checked h2 s2Step11EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step11EntryFBefore s2Step11EntryFAfter s2Step11EntryGvAfter
    s2Step11EntryFRow s2Step11EntryFOut 256 s2Step11EntryFFresh [(s2Step11EntryGRow,256),(s2Step11EntryFvRow,12),(s2Step11EntryGvRow,12)] [s2Step11EntryGFresh,s2Step11EntryFvFresh,s2Step11EntryGvFresh] [s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut]
    (growRow 768 s2Step11EntryFFresh) ((growRow 769 s2Step11EntryGFresh ++ (growRow 770 s2Step11EntryFvFresh ++ (growRow 771 s2Step11EntryGvFresh ++ [])))) s2Step11EntryF_Incoming s2Step11EntryF_checked h1 s2Step11EntryF_Outgoing
  exact h0
theorem s2Step11EntryBank_checked : compileHmrBankResizeLog .entry s2Step11EntryFBefore ⟨s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow⟩ ⟨256,256,12,12⟩ [s2Step11EntryFFresh,s2Step11EntryGFresh,s2Step11EntryFvFresh,s2Step11EntryGvFresh]=
    some (s2Step11EntryGvAfter,⟨s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut⟩,(growRow 768 s2Step11EntryFFresh ++ (growRow 769 s2Step11EntryGFresh ++ (growRow 770 s2Step11EntryFvFresh ++ (growRow 771 s2Step11EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step11EntryBank_rows]
  rfl
def s2Step12EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step12EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step12EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩
def s2Step12EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780],771⟩
theorem s2Step12EntryBank_incomingDistinct : ([s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12EntryBank_outgoingOwned : rowsOwned s2Step12EntryGvAfter [s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step12EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12EntryF_Incoming : rowsOwned s2Step12EntryFBefore [s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow] 0 s2Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12EntryF_Outgoing : rowsOwned s2Step12EntryGvAfter [s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] :=
  hmrRows_owned_drop s2Step12EntryGvAfter [s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] 0 s2Step12EntryBank_outgoingOwned
theorem s2Step12EntryG_Incoming : rowsOwned s2Step12EntryGBefore [s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow] 1 s2Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12EntryG_Outgoing : rowsOwned s2Step12EntryGvAfter [s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] :=
  hmrRows_owned_drop s2Step12EntryGvAfter [s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] 1 s2Step12EntryBank_outgoingOwned
theorem s2Step12EntryFv_Incoming : rowsOwned s2Step12EntryFvBefore [s2Step12EntryFvRow,s2Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow] 2 s2Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12EntryFv_Outgoing : rowsOwned s2Step12EntryGvAfter [s2Step12EntryFvOut,s2Step12EntryGvOut] :=
  hmrRows_owned_drop s2Step12EntryGvAfter [s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] 2 s2Step12EntryBank_outgoingOwned
theorem s2Step12EntryGv_Incoming : rowsOwned s2Step12EntryGvBefore [s2Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow] 3 s2Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step12EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step12EntryGv_Outgoing : rowsOwned s2Step12EntryGvAfter [s2Step12EntryGvOut] :=
  hmrRows_owned_drop s2Step12EntryGvAfter [s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut] 3 s2Step12EntryBank_outgoingOwned
theorem s2Step12EntryBank_rows : planWindowRowsLog s2Step12EntryFBefore [(s2Step12EntryFRow,256),(s2Step12EntryGRow,256),(s2Step12EntryFvRow,13),(s2Step12EntryGvRow,13)] [s2Step12EntryFFresh,s2Step12EntryGFresh,s2Step12EntryFvFresh,s2Step12EntryGvFresh]=
    some (s2Step12EntryGvAfter,[s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut],(growRow 768 s2Step12EntryFFresh ++ (growRow 769 s2Step12EntryGFresh ++ (growRow 770 s2Step12EntryFvFresh ++ (growRow 771 s2Step12EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step12EntryGvAfter [] []=some (s2Step12EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step12EntryGvBefore s2Step12EntryGvAfter s2Step12EntryGvAfter
    s2Step12EntryGvRow s2Step12EntryGvOut 13 s2Step12EntryGvFresh [] [] []
    (growRow 771 s2Step12EntryGvFresh) ([]) s2Step12EntryGv_Incoming s2Step12EntryGv_checked h4 s2Step12EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step12EntryFvBefore s2Step12EntryFvAfter s2Step12EntryGvAfter
    s2Step12EntryFvRow s2Step12EntryFvOut 13 s2Step12EntryFvFresh [(s2Step12EntryGvRow,13)] [s2Step12EntryGvFresh] [s2Step12EntryGvOut]
    (growRow 770 s2Step12EntryFvFresh) ((growRow 771 s2Step12EntryGvFresh ++ [])) s2Step12EntryFv_Incoming s2Step12EntryFv_checked h3 s2Step12EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step12EntryGBefore s2Step12EntryGAfter s2Step12EntryGvAfter
    s2Step12EntryGRow s2Step12EntryGOut 256 s2Step12EntryGFresh [(s2Step12EntryFvRow,13),(s2Step12EntryGvRow,13)] [s2Step12EntryFvFresh,s2Step12EntryGvFresh] [s2Step12EntryFvOut,s2Step12EntryGvOut]
    (growRow 769 s2Step12EntryGFresh) ((growRow 770 s2Step12EntryFvFresh ++ (growRow 771 s2Step12EntryGvFresh ++ []))) s2Step12EntryG_Incoming s2Step12EntryG_checked h2 s2Step12EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step12EntryFBefore s2Step12EntryFAfter s2Step12EntryGvAfter
    s2Step12EntryFRow s2Step12EntryFOut 256 s2Step12EntryFFresh [(s2Step12EntryGRow,256),(s2Step12EntryFvRow,13),(s2Step12EntryGvRow,13)] [s2Step12EntryGFresh,s2Step12EntryFvFresh,s2Step12EntryGvFresh] [s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut]
    (growRow 768 s2Step12EntryFFresh) ((growRow 769 s2Step12EntryGFresh ++ (growRow 770 s2Step12EntryFvFresh ++ (growRow 771 s2Step12EntryGvFresh ++ [])))) s2Step12EntryF_Incoming s2Step12EntryF_checked h1 s2Step12EntryF_Outgoing
  exact h0
theorem s2Step12EntryBank_checked : compileHmrBankResizeLog .entry s2Step12EntryFBefore ⟨s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow⟩ ⟨256,256,13,13⟩ [s2Step12EntryFFresh,s2Step12EntryGFresh,s2Step12EntryFvFresh,s2Step12EntryGvFresh]=
    some (s2Step12EntryGvAfter,⟨s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut⟩,(growRow 768 s2Step12EntryFFresh ++ (growRow 769 s2Step12EntryGFresh ++ (growRow 770 s2Step12EntryFvFresh ++ (growRow 771 s2Step12EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step12EntryBank_rows]
  rfl
def s2Step13EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step13EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step13EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩
def s2Step13EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780],771⟩
theorem s2Step13EntryBank_incomingDistinct : ([s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13EntryBank_outgoingOwned : rowsOwned s2Step13EntryGvAfter [s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step13EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13EntryF_Incoming : rowsOwned s2Step13EntryFBefore [s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow] 0 s2Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13EntryF_Outgoing : rowsOwned s2Step13EntryGvAfter [s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] :=
  hmrRows_owned_drop s2Step13EntryGvAfter [s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] 0 s2Step13EntryBank_outgoingOwned
theorem s2Step13EntryG_Incoming : rowsOwned s2Step13EntryGBefore [s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow] 1 s2Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13EntryG_Outgoing : rowsOwned s2Step13EntryGvAfter [s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] :=
  hmrRows_owned_drop s2Step13EntryGvAfter [s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] 1 s2Step13EntryBank_outgoingOwned
theorem s2Step13EntryFv_Incoming : rowsOwned s2Step13EntryFvBefore [s2Step13EntryFvRow,s2Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow] 2 s2Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13EntryFv_Outgoing : rowsOwned s2Step13EntryGvAfter [s2Step13EntryFvOut,s2Step13EntryGvOut] :=
  hmrRows_owned_drop s2Step13EntryGvAfter [s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] 2 s2Step13EntryBank_outgoingOwned
theorem s2Step13EntryGv_Incoming : rowsOwned s2Step13EntryGvBefore [s2Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow] 3 s2Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step13EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
theorem s2Step13EntryGv_Outgoing : rowsOwned s2Step13EntryGvAfter [s2Step13EntryGvOut] :=
  hmrRows_owned_drop s2Step13EntryGvAfter [s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut] 3 s2Step13EntryBank_outgoingOwned
theorem s2Step13EntryBank_rows : planWindowRowsLog s2Step13EntryFBefore [(s2Step13EntryFRow,256),(s2Step13EntryGRow,256),(s2Step13EntryFvRow,14),(s2Step13EntryGvRow,14)] [s2Step13EntryFFresh,s2Step13EntryGFresh,s2Step13EntryFvFresh,s2Step13EntryGvFresh]=
    some (s2Step13EntryGvAfter,[s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut],(growRow 768 s2Step13EntryFFresh ++ (growRow 769 s2Step13EntryGFresh ++ (growRow 770 s2Step13EntryFvFresh ++ (growRow 771 s2Step13EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step13EntryGvAfter [] []=some (s2Step13EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step13EntryGvBefore s2Step13EntryGvAfter s2Step13EntryGvAfter
    s2Step13EntryGvRow s2Step13EntryGvOut 14 s2Step13EntryGvFresh [] [] []
    (growRow 771 s2Step13EntryGvFresh) ([]) s2Step13EntryGv_Incoming s2Step13EntryGv_checked h4 s2Step13EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step13EntryFvBefore s2Step13EntryFvAfter s2Step13EntryGvAfter
    s2Step13EntryFvRow s2Step13EntryFvOut 14 s2Step13EntryFvFresh [(s2Step13EntryGvRow,14)] [s2Step13EntryGvFresh] [s2Step13EntryGvOut]
    (growRow 770 s2Step13EntryFvFresh) ((growRow 771 s2Step13EntryGvFresh ++ [])) s2Step13EntryFv_Incoming s2Step13EntryFv_checked h3 s2Step13EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step13EntryGBefore s2Step13EntryGAfter s2Step13EntryGvAfter
    s2Step13EntryGRow s2Step13EntryGOut 256 s2Step13EntryGFresh [(s2Step13EntryFvRow,14),(s2Step13EntryGvRow,14)] [s2Step13EntryFvFresh,s2Step13EntryGvFresh] [s2Step13EntryFvOut,s2Step13EntryGvOut]
    (growRow 769 s2Step13EntryGFresh) ((growRow 770 s2Step13EntryFvFresh ++ (growRow 771 s2Step13EntryGvFresh ++ []))) s2Step13EntryG_Incoming s2Step13EntryG_checked h2 s2Step13EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step13EntryFBefore s2Step13EntryFAfter s2Step13EntryGvAfter
    s2Step13EntryFRow s2Step13EntryFOut 256 s2Step13EntryFFresh [(s2Step13EntryGRow,256),(s2Step13EntryFvRow,14),(s2Step13EntryGvRow,14)] [s2Step13EntryGFresh,s2Step13EntryFvFresh,s2Step13EntryGvFresh] [s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut]
    (growRow 768 s2Step13EntryFFresh) ((growRow 769 s2Step13EntryGFresh ++ (growRow 770 s2Step13EntryFvFresh ++ (growRow 771 s2Step13EntryGvFresh ++ [])))) s2Step13EntryF_Incoming s2Step13EntryF_checked h1 s2Step13EntryF_Outgoing
  exact h0
theorem s2Step13EntryBank_checked : compileHmrBankResizeLog .entry s2Step13EntryFBefore ⟨s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow⟩ ⟨256,256,14,14⟩ [s2Step13EntryFFresh,s2Step13EntryGFresh,s2Step13EntryFvFresh,s2Step13EntryGvFresh]=
    some (s2Step13EntryGvAfter,⟨s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut⟩,(growRow 768 s2Step13EntryFFresh ++ (growRow 769 s2Step13EntryGFresh ++ (growRow 770 s2Step13EntryFvFresh ++ (growRow 771 s2Step13EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step13EntryBank_rows]
  rfl
def s2Step14EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step14EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step14EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩
def s2Step14EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780],771⟩
theorem s2Step14EntryBank_incomingDistinct : ([s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14EntryBank_outgoingOwned : rowsOwned s2Step14EntryGvAfter [s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step14EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14EntryF_Incoming : rowsOwned s2Step14EntryFBefore [s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow] 0 s2Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14EntryF_Outgoing : rowsOwned s2Step14EntryGvAfter [s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] :=
  hmrRows_owned_drop s2Step14EntryGvAfter [s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] 0 s2Step14EntryBank_outgoingOwned
theorem s2Step14EntryG_Incoming : rowsOwned s2Step14EntryGBefore [s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow] 1 s2Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14EntryG_Outgoing : rowsOwned s2Step14EntryGvAfter [s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] :=
  hmrRows_owned_drop s2Step14EntryGvAfter [s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] 1 s2Step14EntryBank_outgoingOwned
theorem s2Step14EntryFv_Incoming : rowsOwned s2Step14EntryFvBefore [s2Step14EntryFvRow,s2Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow] 2 s2Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14EntryFv_Outgoing : rowsOwned s2Step14EntryGvAfter [s2Step14EntryFvOut,s2Step14EntryGvOut] :=
  hmrRows_owned_drop s2Step14EntryGvAfter [s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] 2 s2Step14EntryBank_outgoingOwned
theorem s2Step14EntryGv_Incoming : rowsOwned s2Step14EntryGvBefore [s2Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow] 3 s2Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step14EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step14EntryGv_Outgoing : rowsOwned s2Step14EntryGvAfter [s2Step14EntryGvOut] :=
  hmrRows_owned_drop s2Step14EntryGvAfter [s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut] 3 s2Step14EntryBank_outgoingOwned
theorem s2Step14EntryBank_rows : planWindowRowsLog s2Step14EntryFBefore [(s2Step14EntryFRow,256),(s2Step14EntryGRow,256),(s2Step14EntryFvRow,15),(s2Step14EntryGvRow,15)] [s2Step14EntryFFresh,s2Step14EntryGFresh,s2Step14EntryFvFresh,s2Step14EntryGvFresh]=
    some (s2Step14EntryGvAfter,[s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut],(growRow 768 s2Step14EntryFFresh ++ (growRow 769 s2Step14EntryGFresh ++ (growRow 770 s2Step14EntryFvFresh ++ (growRow 771 s2Step14EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step14EntryGvAfter [] []=some (s2Step14EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step14EntryGvBefore s2Step14EntryGvAfter s2Step14EntryGvAfter
    s2Step14EntryGvRow s2Step14EntryGvOut 15 s2Step14EntryGvFresh [] [] []
    (growRow 771 s2Step14EntryGvFresh) ([]) s2Step14EntryGv_Incoming s2Step14EntryGv_checked h4 s2Step14EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step14EntryFvBefore s2Step14EntryFvAfter s2Step14EntryGvAfter
    s2Step14EntryFvRow s2Step14EntryFvOut 15 s2Step14EntryFvFresh [(s2Step14EntryGvRow,15)] [s2Step14EntryGvFresh] [s2Step14EntryGvOut]
    (growRow 770 s2Step14EntryFvFresh) ((growRow 771 s2Step14EntryGvFresh ++ [])) s2Step14EntryFv_Incoming s2Step14EntryFv_checked h3 s2Step14EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step14EntryGBefore s2Step14EntryGAfter s2Step14EntryGvAfter
    s2Step14EntryGRow s2Step14EntryGOut 256 s2Step14EntryGFresh [(s2Step14EntryFvRow,15),(s2Step14EntryGvRow,15)] [s2Step14EntryFvFresh,s2Step14EntryGvFresh] [s2Step14EntryFvOut,s2Step14EntryGvOut]
    (growRow 769 s2Step14EntryGFresh) ((growRow 770 s2Step14EntryFvFresh ++ (growRow 771 s2Step14EntryGvFresh ++ []))) s2Step14EntryG_Incoming s2Step14EntryG_checked h2 s2Step14EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step14EntryFBefore s2Step14EntryFAfter s2Step14EntryGvAfter
    s2Step14EntryFRow s2Step14EntryFOut 256 s2Step14EntryFFresh [(s2Step14EntryGRow,256),(s2Step14EntryFvRow,15),(s2Step14EntryGvRow,15)] [s2Step14EntryGFresh,s2Step14EntryFvFresh,s2Step14EntryGvFresh] [s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut]
    (growRow 768 s2Step14EntryFFresh) ((growRow 769 s2Step14EntryGFresh ++ (growRow 770 s2Step14EntryFvFresh ++ (growRow 771 s2Step14EntryGvFresh ++ [])))) s2Step14EntryF_Incoming s2Step14EntryF_checked h1 s2Step14EntryF_Outgoing
  exact h0
theorem s2Step14EntryBank_checked : compileHmrBankResizeLog .entry s2Step14EntryFBefore ⟨s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow⟩ ⟨256,256,15,15⟩ [s2Step14EntryFFresh,s2Step14EntryGFresh,s2Step14EntryFvFresh,s2Step14EntryGvFresh]=
    some (s2Step14EntryGvAfter,⟨s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut⟩,(growRow 768 s2Step14EntryFFresh ++ (growRow 769 s2Step14EntryGFresh ++ (growRow 770 s2Step14EntryFvFresh ++ (growRow 771 s2Step14EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step14EntryBank_rows]
  rfl
def s2Step15EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step15EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step15EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩
def s2Step15EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780],771⟩
theorem s2Step15EntryBank_incomingDistinct : ([s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15EntryBank_outgoingOwned : rowsOwned s2Step15EntryGvAfter [s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step15EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15EntryF_Incoming : rowsOwned s2Step15EntryFBefore [s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow] 0 s2Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15EntryF_Outgoing : rowsOwned s2Step15EntryGvAfter [s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] :=
  hmrRows_owned_drop s2Step15EntryGvAfter [s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] 0 s2Step15EntryBank_outgoingOwned
theorem s2Step15EntryG_Incoming : rowsOwned s2Step15EntryGBefore [s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow] 1 s2Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15EntryG_Outgoing : rowsOwned s2Step15EntryGvAfter [s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] :=
  hmrRows_owned_drop s2Step15EntryGvAfter [s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] 1 s2Step15EntryBank_outgoingOwned
theorem s2Step15EntryFv_Incoming : rowsOwned s2Step15EntryFvBefore [s2Step15EntryFvRow,s2Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow] 2 s2Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15EntryFv_Outgoing : rowsOwned s2Step15EntryGvAfter [s2Step15EntryFvOut,s2Step15EntryGvOut] :=
  hmrRows_owned_drop s2Step15EntryGvAfter [s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] 2 s2Step15EntryBank_outgoingOwned
theorem s2Step15EntryGv_Incoming : rowsOwned s2Step15EntryGvBefore [s2Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow] 3 s2Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step15EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
theorem s2Step15EntryGv_Outgoing : rowsOwned s2Step15EntryGvAfter [s2Step15EntryGvOut] :=
  hmrRows_owned_drop s2Step15EntryGvAfter [s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut] 3 s2Step15EntryBank_outgoingOwned
theorem s2Step15EntryBank_rows : planWindowRowsLog s2Step15EntryFBefore [(s2Step15EntryFRow,256),(s2Step15EntryGRow,256),(s2Step15EntryFvRow,16),(s2Step15EntryGvRow,16)] [s2Step15EntryFFresh,s2Step15EntryGFresh,s2Step15EntryFvFresh,s2Step15EntryGvFresh]=
    some (s2Step15EntryGvAfter,[s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut],(growRow 768 s2Step15EntryFFresh ++ (growRow 769 s2Step15EntryGFresh ++ (growRow 770 s2Step15EntryFvFresh ++ (growRow 771 s2Step15EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step15EntryGvAfter [] []=some (s2Step15EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step15EntryGvBefore s2Step15EntryGvAfter s2Step15EntryGvAfter
    s2Step15EntryGvRow s2Step15EntryGvOut 16 s2Step15EntryGvFresh [] [] []
    (growRow 771 s2Step15EntryGvFresh) ([]) s2Step15EntryGv_Incoming s2Step15EntryGv_checked h4 s2Step15EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step15EntryFvBefore s2Step15EntryFvAfter s2Step15EntryGvAfter
    s2Step15EntryFvRow s2Step15EntryFvOut 16 s2Step15EntryFvFresh [(s2Step15EntryGvRow,16)] [s2Step15EntryGvFresh] [s2Step15EntryGvOut]
    (growRow 770 s2Step15EntryFvFresh) ((growRow 771 s2Step15EntryGvFresh ++ [])) s2Step15EntryFv_Incoming s2Step15EntryFv_checked h3 s2Step15EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step15EntryGBefore s2Step15EntryGAfter s2Step15EntryGvAfter
    s2Step15EntryGRow s2Step15EntryGOut 256 s2Step15EntryGFresh [(s2Step15EntryFvRow,16),(s2Step15EntryGvRow,16)] [s2Step15EntryFvFresh,s2Step15EntryGvFresh] [s2Step15EntryFvOut,s2Step15EntryGvOut]
    (growRow 769 s2Step15EntryGFresh) ((growRow 770 s2Step15EntryFvFresh ++ (growRow 771 s2Step15EntryGvFresh ++ []))) s2Step15EntryG_Incoming s2Step15EntryG_checked h2 s2Step15EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step15EntryFBefore s2Step15EntryFAfter s2Step15EntryGvAfter
    s2Step15EntryFRow s2Step15EntryFOut 256 s2Step15EntryFFresh [(s2Step15EntryGRow,256),(s2Step15EntryFvRow,16),(s2Step15EntryGvRow,16)] [s2Step15EntryGFresh,s2Step15EntryFvFresh,s2Step15EntryGvFresh] [s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut]
    (growRow 768 s2Step15EntryFFresh) ((growRow 769 s2Step15EntryGFresh ++ (growRow 770 s2Step15EntryFvFresh ++ (growRow 771 s2Step15EntryGvFresh ++ [])))) s2Step15EntryF_Incoming s2Step15EntryF_checked h1 s2Step15EntryF_Outgoing
  exact h0
theorem s2Step15EntryBank_checked : compileHmrBankResizeLog .entry s2Step15EntryFBefore ⟨s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow⟩ ⟨256,256,16,16⟩ [s2Step15EntryFFresh,s2Step15EntryGFresh,s2Step15EntryFvFresh,s2Step15EntryGvFresh]=
    some (s2Step15EntryGvAfter,⟨s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut⟩,(growRow 768 s2Step15EntryFFresh ++ (growRow 769 s2Step15EntryGFresh ++ (growRow 770 s2Step15EntryFvFresh ++ (growRow 771 s2Step15EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step15EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
