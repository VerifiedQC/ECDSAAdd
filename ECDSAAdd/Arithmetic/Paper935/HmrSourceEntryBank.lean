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
def s2Step498EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 901],768⟩
def s2Step498EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 845],769⟩
def s2Step498EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 821, 832, 896, 882, 903, 819, 826, 831, 805, 835, 803, 785, 877, 915, 810, 809, 840, 867, 825, 851, 787, 817, 788, 804, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791],770⟩
def s2Step498EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 591, 590, 589, 588, 587, 586, 585, 584, 582, 583, 581, 579, 580, 578, 577, 576, 575, 573, 574, 572, 571, 570, 569, 568, 567, 566, 565, 564, 563, 562, 561, 560, 559, 558, 556, 557, 555, 554, 553, 552, 551, 550, 549, 548, 547, 546, 545, 544, 543, 542, 541, 540, 539, 538, 536, 537, 820, 780, 847, 783, 796, 789, 842, 802, 907, 846, 800, 837, 811, 782, 824, 792, 799, 836, 834, 841, 807, 830, 793, 779, 829, 815, 885, 806, 894, 784, 913, 808, 801, 790],771⟩
theorem s2Step498EntryBank_incomingDistinct : ([s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498EntryBank_outgoingOwned : rowsOwned s2Step498EntryGvAfter [s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498EntryGvAfter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
    decide +kernel
theorem s2Step498EntryF_Incoming : rowsOwned s2Step498EntryFBefore [s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow] 0 s2Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498EntryFBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<901) ∨ (902≤q ∧ q<916)) rfl
    decide +kernel
theorem s2Step498EntryF_Outgoing : rowsOwned s2Step498EntryGvAfter [s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] :=
  hmrRows_owned_drop s2Step498EntryGvAfter [s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] 0 s2Step498EntryBank_outgoingOwned
theorem s2Step498EntryG_Incoming : rowsOwned s2Step498EntryGBefore [s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow] 1 s2Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498EntryGBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
    decide +kernel
theorem s2Step498EntryG_Outgoing : rowsOwned s2Step498EntryGvAfter [s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] :=
  hmrRows_owned_drop s2Step498EntryGvAfter [s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] 1 s2Step498EntryBank_outgoingOwned
theorem s2Step498EntryFv_Incoming : rowsOwned s2Step498EntryFvBefore [s2Step498EntryFvRow,s2Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow] 2 s2Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498EntryFvBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
    decide +kernel
theorem s2Step498EntryFv_Outgoing : rowsOwned s2Step498EntryGvAfter [s2Step498EntryFvOut,s2Step498EntryGvOut] :=
  hmrRows_owned_drop s2Step498EntryGvAfter [s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] 2 s2Step498EntryBank_outgoingOwned
theorem s2Step498EntryGv_Incoming : rowsOwned s2Step498EntryGvBefore [s2Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow] 3 s2Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498EntryGvBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
    decide +kernel
theorem s2Step498EntryGv_Outgoing : rowsOwned s2Step498EntryGvAfter [s2Step498EntryGvOut] :=
  hmrRows_owned_drop s2Step498EntryGvAfter [s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut] 3 s2Step498EntryBank_outgoingOwned
theorem s2Step498EntryBank_rows : planWindowRowsLog s2Step498EntryFBefore [(s2Step498EntryFRow,25),(s2Step498EntryGRow,25),(s2Step498EntryFvRow,266),(s2Step498EntryGvRow,266)] [s2Step498EntryFFresh,s2Step498EntryGFresh,s2Step498EntryFvFresh,s2Step498EntryGvFresh]=
    some (s2Step498EntryGvAfter,[s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut],(growRow 768 s2Step498EntryFFresh ++ (growRow 769 s2Step498EntryGFresh ++ (growRow 770 s2Step498EntryFvFresh ++ (growRow 771 s2Step498EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step498EntryGvAfter [] []=some (s2Step498EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step498EntryGvBefore s2Step498EntryGvAfter s2Step498EntryGvAfter
    s2Step498EntryGvRow s2Step498EntryGvOut 266 s2Step498EntryGvFresh [] [] []
    (growRow 771 s2Step498EntryGvFresh) ([]) s2Step498EntryGv_Incoming s2Step498EntryGv_checked h4 s2Step498EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step498EntryFvBefore s2Step498EntryFvAfter s2Step498EntryGvAfter
    s2Step498EntryFvRow s2Step498EntryFvOut 266 s2Step498EntryFvFresh [(s2Step498EntryGvRow,266)] [s2Step498EntryGvFresh] [s2Step498EntryGvOut]
    (growRow 770 s2Step498EntryFvFresh) ((growRow 771 s2Step498EntryGvFresh ++ [])) s2Step498EntryFv_Incoming s2Step498EntryFv_checked h3 s2Step498EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step498EntryGBefore s2Step498EntryGAfter s2Step498EntryGvAfter
    s2Step498EntryGRow s2Step498EntryGOut 25 s2Step498EntryGFresh [(s2Step498EntryFvRow,266),(s2Step498EntryGvRow,266)] [s2Step498EntryFvFresh,s2Step498EntryGvFresh] [s2Step498EntryFvOut,s2Step498EntryGvOut]
    (growRow 769 s2Step498EntryGFresh) ((growRow 770 s2Step498EntryFvFresh ++ (growRow 771 s2Step498EntryGvFresh ++ []))) s2Step498EntryG_Incoming s2Step498EntryG_checked h2 s2Step498EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step498EntryFBefore s2Step498EntryFAfter s2Step498EntryGvAfter
    s2Step498EntryFRow s2Step498EntryFOut 25 s2Step498EntryFFresh [(s2Step498EntryGRow,25),(s2Step498EntryFvRow,266),(s2Step498EntryGvRow,266)] [s2Step498EntryGFresh,s2Step498EntryFvFresh,s2Step498EntryGvFresh] [s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut]
    (growRow 768 s2Step498EntryFFresh) ((growRow 769 s2Step498EntryGFresh ++ (growRow 770 s2Step498EntryFvFresh ++ (growRow 771 s2Step498EntryGvFresh ++ [])))) s2Step498EntryF_Incoming s2Step498EntryF_checked h1 s2Step498EntryF_Outgoing
  exact h0
theorem s2Step498EntryBank_checked : compileHmrBankResizeLog .entry s2Step498EntryFBefore ⟨s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow⟩ ⟨25,25,266,266⟩ [s2Step498EntryFFresh,s2Step498EntryGFresh,s2Step498EntryFvFresh,s2Step498EntryGvFresh]=
    some (s2Step498EntryGvAfter,⟨s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut⟩,(growRow 768 s2Step498EntryFFresh ++ (growRow 769 s2Step498EntryGFresh ++ (growRow 770 s2Step498EntryFvFresh ++ (growRow 771 s2Step498EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step498EntryBank_rows]
  rfl
def s6Step0EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step0EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],777⟩
def s6Step0EntryFvOut : WindowRow := ⟨[768],776⟩
def s6Step0EntryGvOut : WindowRow := ⟨[859],775⟩
theorem s6Step0EntryBank_incomingDistinct : ([s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0EntryBank_outgoingOwned : rowsOwned s6Step0EntryGvAfter [s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s6Step0EntryF_Incoming : rowsOwned s6Step0EntryFBefore [s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow] 0 s6Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s6Step0EntryF_Outgoing : rowsOwned s6Step0EntryGvAfter [s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] :=
  hmrRows_owned_drop s6Step0EntryGvAfter [s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] 0 s6Step0EntryBank_outgoingOwned
theorem s6Step0EntryG_Incoming : rowsOwned s6Step0EntryGBefore [s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow] 1 s6Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s6Step0EntryG_Outgoing : rowsOwned s6Step0EntryGvAfter [s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] :=
  hmrRows_owned_drop s6Step0EntryGvAfter [s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] 1 s6Step0EntryBank_outgoingOwned
theorem s6Step0EntryFv_Incoming : rowsOwned s6Step0EntryFvBefore [s6Step0EntryFvRow,s6Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow] 2 s6Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s6Step0EntryFv_Outgoing : rowsOwned s6Step0EntryGvAfter [s6Step0EntryFvOut,s6Step0EntryGvOut] :=
  hmrRows_owned_drop s6Step0EntryGvAfter [s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] 2 s6Step0EntryBank_outgoingOwned
theorem s6Step0EntryGv_Incoming : rowsOwned s6Step0EntryGvBefore [s6Step0EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow] 3 s6Step0EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s6Step0EntryGv_Outgoing : rowsOwned s6Step0EntryGvAfter [s6Step0EntryGvOut] :=
  hmrRows_owned_drop s6Step0EntryGvAfter [s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut] 3 s6Step0EntryBank_outgoingOwned
theorem s6Step0EntryBank_rows : planWindowRowsLog s6Step0EntryFBefore [(s6Step0EntryFRow,256),(s6Step0EntryGRow,256),(s6Step0EntryFvRow,1),(s6Step0EntryGvRow,1)] [s6Step0EntryFFresh,s6Step0EntryGFresh,s6Step0EntryFvFresh,s6Step0EntryGvFresh]=
    some (s6Step0EntryGvAfter,[s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut],(growRow 795 s6Step0EntryFFresh ++ (growRow 777 s6Step0EntryGFresh ++ (growRow 776 s6Step0EntryFvFresh ++ (growRow 775 s6Step0EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step0EntryGvAfter [] []=some (s6Step0EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step0EntryGvBefore s6Step0EntryGvAfter s6Step0EntryGvAfter
    s6Step0EntryGvRow s6Step0EntryGvOut 1 s6Step0EntryGvFresh [] [] []
    (growRow 775 s6Step0EntryGvFresh) ([]) s6Step0EntryGv_Incoming s6Step0EntryGv_checked h4 s6Step0EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step0EntryFvBefore s6Step0EntryFvAfter s6Step0EntryGvAfter
    s6Step0EntryFvRow s6Step0EntryFvOut 1 s6Step0EntryFvFresh [(s6Step0EntryGvRow,1)] [s6Step0EntryGvFresh] [s6Step0EntryGvOut]
    (growRow 776 s6Step0EntryFvFresh) ((growRow 775 s6Step0EntryGvFresh ++ [])) s6Step0EntryFv_Incoming s6Step0EntryFv_checked h3 s6Step0EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step0EntryGBefore s6Step0EntryGAfter s6Step0EntryGvAfter
    s6Step0EntryGRow s6Step0EntryGOut 256 s6Step0EntryGFresh [(s6Step0EntryFvRow,1),(s6Step0EntryGvRow,1)] [s6Step0EntryFvFresh,s6Step0EntryGvFresh] [s6Step0EntryFvOut,s6Step0EntryGvOut]
    (growRow 777 s6Step0EntryGFresh) ((growRow 776 s6Step0EntryFvFresh ++ (growRow 775 s6Step0EntryGvFresh ++ []))) s6Step0EntryG_Incoming s6Step0EntryG_checked h2 s6Step0EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step0EntryFBefore s6Step0EntryFAfter s6Step0EntryGvAfter
    s6Step0EntryFRow s6Step0EntryFOut 256 s6Step0EntryFFresh [(s6Step0EntryGRow,256),(s6Step0EntryFvRow,1),(s6Step0EntryGvRow,1)] [s6Step0EntryGFresh,s6Step0EntryFvFresh,s6Step0EntryGvFresh] [s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut]
    (growRow 795 s6Step0EntryFFresh) ((growRow 777 s6Step0EntryGFresh ++ (growRow 776 s6Step0EntryFvFresh ++ (growRow 775 s6Step0EntryGvFresh ++ [])))) s6Step0EntryF_Incoming s6Step0EntryF_checked h1 s6Step0EntryF_Outgoing
  exact h0
theorem s6Step0EntryBank_checked : compileHmrBankResizeLog .entry s6Step0EntryFBefore ⟨s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow⟩ ⟨256,256,1,1⟩ [s6Step0EntryFFresh,s6Step0EntryGFresh,s6Step0EntryFvFresh,s6Step0EntryGvFresh]=
    some (s6Step0EntryGvAfter,⟨s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut⟩,(growRow 795 s6Step0EntryFFresh ++ (growRow 777 s6Step0EntryGFresh ++ (growRow 776 s6Step0EntryFvFresh ++ (growRow 775 s6Step0EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step0EntryBank_rows]
  rfl
def s6Step1EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step1EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩
def s6Step1EntryFvOut : WindowRow := ⟨[255, 876],776⟩
def s6Step1EntryGvOut : WindowRow := ⟨[859, 887],775⟩
theorem s6Step1EntryBank_incomingDistinct : ([s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1EntryBank_outgoingOwned : rowsOwned s6Step1EntryGvAfter [s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step1EntryGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1EntryF_Incoming : rowsOwned s6Step1EntryFBefore [s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow] 0 s6Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1EntryF_Outgoing : rowsOwned s6Step1EntryGvAfter [s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] :=
  hmrRows_owned_drop s6Step1EntryGvAfter [s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] 0 s6Step1EntryBank_outgoingOwned
theorem s6Step1EntryG_Incoming : rowsOwned s6Step1EntryGBefore [s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow] 1 s6Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1EntryG_Outgoing : rowsOwned s6Step1EntryGvAfter [s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] :=
  hmrRows_owned_drop s6Step1EntryGvAfter [s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] 1 s6Step1EntryBank_outgoingOwned
theorem s6Step1EntryFv_Incoming : rowsOwned s6Step1EntryFvBefore [s6Step1EntryFvRow,s6Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow] 2 s6Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1EntryFv_Outgoing : rowsOwned s6Step1EntryGvAfter [s6Step1EntryFvOut,s6Step1EntryGvOut] :=
  hmrRows_owned_drop s6Step1EntryGvAfter [s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] 2 s6Step1EntryBank_outgoingOwned
theorem s6Step1EntryGv_Incoming : rowsOwned s6Step1EntryGvBefore [s6Step1EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow] 3 s6Step1EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1EntryGv_Outgoing : rowsOwned s6Step1EntryGvAfter [s6Step1EntryGvOut] :=
  hmrRows_owned_drop s6Step1EntryGvAfter [s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut] 3 s6Step1EntryBank_outgoingOwned
theorem s6Step1EntryBank_rows : planWindowRowsLog s6Step1EntryFBefore [(s6Step1EntryFRow,256),(s6Step1EntryGRow,256),(s6Step1EntryFvRow,2),(s6Step1EntryGvRow,2)] [s6Step1EntryFFresh,s6Step1EntryGFresh,s6Step1EntryFvFresh,s6Step1EntryGvFresh]=
    some (s6Step1EntryGvAfter,[s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut],(growRow 795 s6Step1EntryFFresh ++ (growRow 777 s6Step1EntryGFresh ++ (growRow 776 s6Step1EntryFvFresh ++ (growRow 775 s6Step1EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step1EntryGvAfter [] []=some (s6Step1EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step1EntryGvBefore s6Step1EntryGvAfter s6Step1EntryGvAfter
    s6Step1EntryGvRow s6Step1EntryGvOut 2 s6Step1EntryGvFresh [] [] []
    (growRow 775 s6Step1EntryGvFresh) ([]) s6Step1EntryGv_Incoming s6Step1EntryGv_checked h4 s6Step1EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step1EntryFvBefore s6Step1EntryFvAfter s6Step1EntryGvAfter
    s6Step1EntryFvRow s6Step1EntryFvOut 2 s6Step1EntryFvFresh [(s6Step1EntryGvRow,2)] [s6Step1EntryGvFresh] [s6Step1EntryGvOut]
    (growRow 776 s6Step1EntryFvFresh) ((growRow 775 s6Step1EntryGvFresh ++ [])) s6Step1EntryFv_Incoming s6Step1EntryFv_checked h3 s6Step1EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step1EntryGBefore s6Step1EntryGAfter s6Step1EntryGvAfter
    s6Step1EntryGRow s6Step1EntryGOut 256 s6Step1EntryGFresh [(s6Step1EntryFvRow,2),(s6Step1EntryGvRow,2)] [s6Step1EntryFvFresh,s6Step1EntryGvFresh] [s6Step1EntryFvOut,s6Step1EntryGvOut]
    (growRow 777 s6Step1EntryGFresh) ((growRow 776 s6Step1EntryFvFresh ++ (growRow 775 s6Step1EntryGvFresh ++ []))) s6Step1EntryG_Incoming s6Step1EntryG_checked h2 s6Step1EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step1EntryFBefore s6Step1EntryFAfter s6Step1EntryGvAfter
    s6Step1EntryFRow s6Step1EntryFOut 256 s6Step1EntryFFresh [(s6Step1EntryGRow,256),(s6Step1EntryFvRow,2),(s6Step1EntryGvRow,2)] [s6Step1EntryGFresh,s6Step1EntryFvFresh,s6Step1EntryGvFresh] [s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut]
    (growRow 795 s6Step1EntryFFresh) ((growRow 777 s6Step1EntryGFresh ++ (growRow 776 s6Step1EntryFvFresh ++ (growRow 775 s6Step1EntryGvFresh ++ [])))) s6Step1EntryF_Incoming s6Step1EntryF_checked h1 s6Step1EntryF_Outgoing
  exact h0
theorem s6Step1EntryBank_checked : compileHmrBankResizeLog .entry s6Step1EntryFBefore ⟨s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow⟩ ⟨256,256,2,2⟩ [s6Step1EntryFFresh,s6Step1EntryGFresh,s6Step1EntryFvFresh,s6Step1EntryGvFresh]=
    some (s6Step1EntryGvAfter,⟨s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut⟩,(growRow 795 s6Step1EntryFFresh ++ (growRow 777 s6Step1EntryGFresh ++ (growRow 776 s6Step1EntryFvFresh ++ (growRow 775 s6Step1EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step1EntryBank_rows]
  rfl
def s6Step2EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step2EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩
def s6Step2EntryFvOut : WindowRow := ⟨[255, 876, 793],776⟩
def s6Step2EntryGvOut : WindowRow := ⟨[859, 768, 887],775⟩
theorem s6Step2EntryBank_incomingDistinct : ([s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2EntryBank_outgoingOwned : rowsOwned s6Step2EntryGvAfter [s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step2EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2EntryF_Incoming : rowsOwned s6Step2EntryFBefore [s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow] 0 s6Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2EntryF_Outgoing : rowsOwned s6Step2EntryGvAfter [s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] :=
  hmrRows_owned_drop s6Step2EntryGvAfter [s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] 0 s6Step2EntryBank_outgoingOwned
theorem s6Step2EntryG_Incoming : rowsOwned s6Step2EntryGBefore [s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow] 1 s6Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2EntryG_Outgoing : rowsOwned s6Step2EntryGvAfter [s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] :=
  hmrRows_owned_drop s6Step2EntryGvAfter [s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] 1 s6Step2EntryBank_outgoingOwned
theorem s6Step2EntryFv_Incoming : rowsOwned s6Step2EntryFvBefore [s6Step2EntryFvRow,s6Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow] 2 s6Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2EntryFv_Outgoing : rowsOwned s6Step2EntryGvAfter [s6Step2EntryFvOut,s6Step2EntryGvOut] :=
  hmrRows_owned_drop s6Step2EntryGvAfter [s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] 2 s6Step2EntryBank_outgoingOwned
theorem s6Step2EntryGv_Incoming : rowsOwned s6Step2EntryGvBefore [s6Step2EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow] 3 s6Step2EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2EntryGv_Outgoing : rowsOwned s6Step2EntryGvAfter [s6Step2EntryGvOut] :=
  hmrRows_owned_drop s6Step2EntryGvAfter [s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut] 3 s6Step2EntryBank_outgoingOwned
theorem s6Step2EntryBank_rows : planWindowRowsLog s6Step2EntryFBefore [(s6Step2EntryFRow,256),(s6Step2EntryGRow,256),(s6Step2EntryFvRow,3),(s6Step2EntryGvRow,3)] [s6Step2EntryFFresh,s6Step2EntryGFresh,s6Step2EntryFvFresh,s6Step2EntryGvFresh]=
    some (s6Step2EntryGvAfter,[s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut],(growRow 795 s6Step2EntryFFresh ++ (growRow 777 s6Step2EntryGFresh ++ (growRow 776 s6Step2EntryFvFresh ++ (growRow 775 s6Step2EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step2EntryGvAfter [] []=some (s6Step2EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step2EntryGvBefore s6Step2EntryGvAfter s6Step2EntryGvAfter
    s6Step2EntryGvRow s6Step2EntryGvOut 3 s6Step2EntryGvFresh [] [] []
    (growRow 775 s6Step2EntryGvFresh) ([]) s6Step2EntryGv_Incoming s6Step2EntryGv_checked h4 s6Step2EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step2EntryFvBefore s6Step2EntryFvAfter s6Step2EntryGvAfter
    s6Step2EntryFvRow s6Step2EntryFvOut 3 s6Step2EntryFvFresh [(s6Step2EntryGvRow,3)] [s6Step2EntryGvFresh] [s6Step2EntryGvOut]
    (growRow 776 s6Step2EntryFvFresh) ((growRow 775 s6Step2EntryGvFresh ++ [])) s6Step2EntryFv_Incoming s6Step2EntryFv_checked h3 s6Step2EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step2EntryGBefore s6Step2EntryGAfter s6Step2EntryGvAfter
    s6Step2EntryGRow s6Step2EntryGOut 256 s6Step2EntryGFresh [(s6Step2EntryFvRow,3),(s6Step2EntryGvRow,3)] [s6Step2EntryFvFresh,s6Step2EntryGvFresh] [s6Step2EntryFvOut,s6Step2EntryGvOut]
    (growRow 777 s6Step2EntryGFresh) ((growRow 776 s6Step2EntryFvFresh ++ (growRow 775 s6Step2EntryGvFresh ++ []))) s6Step2EntryG_Incoming s6Step2EntryG_checked h2 s6Step2EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step2EntryFBefore s6Step2EntryFAfter s6Step2EntryGvAfter
    s6Step2EntryFRow s6Step2EntryFOut 256 s6Step2EntryFFresh [(s6Step2EntryGRow,256),(s6Step2EntryFvRow,3),(s6Step2EntryGvRow,3)] [s6Step2EntryGFresh,s6Step2EntryFvFresh,s6Step2EntryGvFresh] [s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut]
    (growRow 795 s6Step2EntryFFresh) ((growRow 777 s6Step2EntryGFresh ++ (growRow 776 s6Step2EntryFvFresh ++ (growRow 775 s6Step2EntryGvFresh ++ [])))) s6Step2EntryF_Incoming s6Step2EntryF_checked h1 s6Step2EntryF_Outgoing
  exact h0
theorem s6Step2EntryBank_checked : compileHmrBankResizeLog .entry s6Step2EntryFBefore ⟨s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow⟩ ⟨256,256,3,3⟩ [s6Step2EntryFFresh,s6Step2EntryGFresh,s6Step2EntryFvFresh,s6Step2EntryGvFresh]=
    some (s6Step2EntryGvAfter,⟨s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut⟩,(growRow 795 s6Step2EntryFFresh ++ (growRow 777 s6Step2EntryGFresh ++ (growRow 776 s6Step2EntryFvFresh ++ (growRow 775 s6Step2EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step2EntryBank_rows]
  rfl
def s6Step3EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step3EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step3EntryFvOut : WindowRow := ⟨[255, 876, 793, 802],776⟩
def s6Step3EntryGvOut : WindowRow := ⟨[859, 768, 874, 887],775⟩
theorem s6Step3EntryBank_incomingDistinct : ([s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3EntryBank_outgoingOwned : rowsOwned s6Step3EntryGvAfter [s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step3EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step3EntryF_Incoming : rowsOwned s6Step3EntryFBefore [s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow] 0 s6Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step3EntryF_Outgoing : rowsOwned s6Step3EntryGvAfter [s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] :=
  hmrRows_owned_drop s6Step3EntryGvAfter [s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] 0 s6Step3EntryBank_outgoingOwned
theorem s6Step3EntryG_Incoming : rowsOwned s6Step3EntryGBefore [s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow] 1 s6Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step3EntryG_Outgoing : rowsOwned s6Step3EntryGvAfter [s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] :=
  hmrRows_owned_drop s6Step3EntryGvAfter [s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] 1 s6Step3EntryBank_outgoingOwned
theorem s6Step3EntryFv_Incoming : rowsOwned s6Step3EntryFvBefore [s6Step3EntryFvRow,s6Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow] 2 s6Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step3EntryFv_Outgoing : rowsOwned s6Step3EntryGvAfter [s6Step3EntryFvOut,s6Step3EntryGvOut] :=
  hmrRows_owned_drop s6Step3EntryGvAfter [s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] 2 s6Step3EntryBank_outgoingOwned
theorem s6Step3EntryGv_Incoming : rowsOwned s6Step3EntryGvBefore [s6Step3EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow] 3 s6Step3EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step3EntryGv_Outgoing : rowsOwned s6Step3EntryGvAfter [s6Step3EntryGvOut] :=
  hmrRows_owned_drop s6Step3EntryGvAfter [s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut] 3 s6Step3EntryBank_outgoingOwned
theorem s6Step3EntryBank_rows : planWindowRowsLog s6Step3EntryFBefore [(s6Step3EntryFRow,256),(s6Step3EntryGRow,256),(s6Step3EntryFvRow,4),(s6Step3EntryGvRow,4)] [s6Step3EntryFFresh,s6Step3EntryGFresh,s6Step3EntryFvFresh,s6Step3EntryGvFresh]=
    some (s6Step3EntryGvAfter,[s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut],(growRow 795 s6Step3EntryFFresh ++ (growRow 777 s6Step3EntryGFresh ++ (growRow 776 s6Step3EntryFvFresh ++ (growRow 775 s6Step3EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step3EntryGvAfter [] []=some (s6Step3EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step3EntryGvBefore s6Step3EntryGvAfter s6Step3EntryGvAfter
    s6Step3EntryGvRow s6Step3EntryGvOut 4 s6Step3EntryGvFresh [] [] []
    (growRow 775 s6Step3EntryGvFresh) ([]) s6Step3EntryGv_Incoming s6Step3EntryGv_checked h4 s6Step3EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step3EntryFvBefore s6Step3EntryFvAfter s6Step3EntryGvAfter
    s6Step3EntryFvRow s6Step3EntryFvOut 4 s6Step3EntryFvFresh [(s6Step3EntryGvRow,4)] [s6Step3EntryGvFresh] [s6Step3EntryGvOut]
    (growRow 776 s6Step3EntryFvFresh) ((growRow 775 s6Step3EntryGvFresh ++ [])) s6Step3EntryFv_Incoming s6Step3EntryFv_checked h3 s6Step3EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step3EntryGBefore s6Step3EntryGAfter s6Step3EntryGvAfter
    s6Step3EntryGRow s6Step3EntryGOut 256 s6Step3EntryGFresh [(s6Step3EntryFvRow,4),(s6Step3EntryGvRow,4)] [s6Step3EntryFvFresh,s6Step3EntryGvFresh] [s6Step3EntryFvOut,s6Step3EntryGvOut]
    (growRow 777 s6Step3EntryGFresh) ((growRow 776 s6Step3EntryFvFresh ++ (growRow 775 s6Step3EntryGvFresh ++ []))) s6Step3EntryG_Incoming s6Step3EntryG_checked h2 s6Step3EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step3EntryFBefore s6Step3EntryFAfter s6Step3EntryGvAfter
    s6Step3EntryFRow s6Step3EntryFOut 256 s6Step3EntryFFresh [(s6Step3EntryGRow,256),(s6Step3EntryFvRow,4),(s6Step3EntryGvRow,4)] [s6Step3EntryGFresh,s6Step3EntryFvFresh,s6Step3EntryGvFresh] [s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut]
    (growRow 795 s6Step3EntryFFresh) ((growRow 777 s6Step3EntryGFresh ++ (growRow 776 s6Step3EntryFvFresh ++ (growRow 775 s6Step3EntryGvFresh ++ [])))) s6Step3EntryF_Incoming s6Step3EntryF_checked h1 s6Step3EntryF_Outgoing
  exact h0
theorem s6Step3EntryBank_checked : compileHmrBankResizeLog .entry s6Step3EntryFBefore ⟨s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow⟩ ⟨256,256,4,4⟩ [s6Step3EntryFFresh,s6Step3EntryGFresh,s6Step3EntryFvFresh,s6Step3EntryGvFresh]=
    some (s6Step3EntryGvAfter,⟨s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut⟩,(growRow 795 s6Step3EntryFFresh ++ (growRow 777 s6Step3EntryGFresh ++ (growRow 776 s6Step3EntryFvFresh ++ (growRow 775 s6Step3EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step3EntryBank_rows]
  rfl
def s6Step4EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step4EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩
def s6Step4EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779],776⟩
def s6Step4EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 887],775⟩
theorem s6Step4EntryBank_incomingDistinct : ([s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4EntryBank_outgoingOwned : rowsOwned s6Step4EntryGvAfter [s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step4EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4EntryF_Incoming : rowsOwned s6Step4EntryFBefore [s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow] 0 s6Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step4EntryF_Outgoing : rowsOwned s6Step4EntryGvAfter [s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] :=
  hmrRows_owned_drop s6Step4EntryGvAfter [s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] 0 s6Step4EntryBank_outgoingOwned
theorem s6Step4EntryG_Incoming : rowsOwned s6Step4EntryGBefore [s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow] 1 s6Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step4EntryG_Outgoing : rowsOwned s6Step4EntryGvAfter [s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] :=
  hmrRows_owned_drop s6Step4EntryGvAfter [s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] 1 s6Step4EntryBank_outgoingOwned
theorem s6Step4EntryFv_Incoming : rowsOwned s6Step4EntryFvBefore [s6Step4EntryFvRow,s6Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow] 2 s6Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step4EntryFv_Outgoing : rowsOwned s6Step4EntryGvAfter [s6Step4EntryFvOut,s6Step4EntryGvOut] :=
  hmrRows_owned_drop s6Step4EntryGvAfter [s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] 2 s6Step4EntryBank_outgoingOwned
theorem s6Step4EntryGv_Incoming : rowsOwned s6Step4EntryGvBefore [s6Step4EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow] 3 s6Step4EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step4EntryGv_Outgoing : rowsOwned s6Step4EntryGvAfter [s6Step4EntryGvOut] :=
  hmrRows_owned_drop s6Step4EntryGvAfter [s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut] 3 s6Step4EntryBank_outgoingOwned
theorem s6Step4EntryBank_rows : planWindowRowsLog s6Step4EntryFBefore [(s6Step4EntryFRow,256),(s6Step4EntryGRow,256),(s6Step4EntryFvRow,5),(s6Step4EntryGvRow,5)] [s6Step4EntryFFresh,s6Step4EntryGFresh,s6Step4EntryFvFresh,s6Step4EntryGvFresh]=
    some (s6Step4EntryGvAfter,[s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut],(growRow 795 s6Step4EntryFFresh ++ (growRow 777 s6Step4EntryGFresh ++ (growRow 776 s6Step4EntryFvFresh ++ (growRow 775 s6Step4EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step4EntryGvAfter [] []=some (s6Step4EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step4EntryGvBefore s6Step4EntryGvAfter s6Step4EntryGvAfter
    s6Step4EntryGvRow s6Step4EntryGvOut 5 s6Step4EntryGvFresh [] [] []
    (growRow 775 s6Step4EntryGvFresh) ([]) s6Step4EntryGv_Incoming s6Step4EntryGv_checked h4 s6Step4EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step4EntryFvBefore s6Step4EntryFvAfter s6Step4EntryGvAfter
    s6Step4EntryFvRow s6Step4EntryFvOut 5 s6Step4EntryFvFresh [(s6Step4EntryGvRow,5)] [s6Step4EntryGvFresh] [s6Step4EntryGvOut]
    (growRow 776 s6Step4EntryFvFresh) ((growRow 775 s6Step4EntryGvFresh ++ [])) s6Step4EntryFv_Incoming s6Step4EntryFv_checked h3 s6Step4EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step4EntryGBefore s6Step4EntryGAfter s6Step4EntryGvAfter
    s6Step4EntryGRow s6Step4EntryGOut 256 s6Step4EntryGFresh [(s6Step4EntryFvRow,5),(s6Step4EntryGvRow,5)] [s6Step4EntryFvFresh,s6Step4EntryGvFresh] [s6Step4EntryFvOut,s6Step4EntryGvOut]
    (growRow 777 s6Step4EntryGFresh) ((growRow 776 s6Step4EntryFvFresh ++ (growRow 775 s6Step4EntryGvFresh ++ []))) s6Step4EntryG_Incoming s6Step4EntryG_checked h2 s6Step4EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step4EntryFBefore s6Step4EntryFAfter s6Step4EntryGvAfter
    s6Step4EntryFRow s6Step4EntryFOut 256 s6Step4EntryFFresh [(s6Step4EntryGRow,256),(s6Step4EntryFvRow,5),(s6Step4EntryGvRow,5)] [s6Step4EntryGFresh,s6Step4EntryFvFresh,s6Step4EntryGvFresh] [s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut]
    (growRow 795 s6Step4EntryFFresh) ((growRow 777 s6Step4EntryGFresh ++ (growRow 776 s6Step4EntryFvFresh ++ (growRow 775 s6Step4EntryGvFresh ++ [])))) s6Step4EntryF_Incoming s6Step4EntryF_checked h1 s6Step4EntryF_Outgoing
  exact h0
theorem s6Step4EntryBank_checked : compileHmrBankResizeLog .entry s6Step4EntryFBefore ⟨s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow⟩ ⟨256,256,5,5⟩ [s6Step4EntryFFresh,s6Step4EntryGFresh,s6Step4EntryFvFresh,s6Step4EntryGvFresh]=
    some (s6Step4EntryGvAfter,⟨s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut⟩,(growRow 795 s6Step4EntryFFresh ++ (growRow 777 s6Step4EntryGFresh ++ (growRow 776 s6Step4EntryFvFresh ++ (growRow 775 s6Step4EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step4EntryBank_rows]
  rfl
def s6Step5EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step5EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩
def s6Step5EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857],776⟩
def s6Step5EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 887],775⟩
theorem s6Step5EntryBank_incomingDistinct : ([s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5EntryBank_outgoingOwned : rowsOwned s6Step5EntryGvAfter [s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step5EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5EntryF_Incoming : rowsOwned s6Step5EntryFBefore [s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow] 0 s6Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5EntryF_Outgoing : rowsOwned s6Step5EntryGvAfter [s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] :=
  hmrRows_owned_drop s6Step5EntryGvAfter [s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] 0 s6Step5EntryBank_outgoingOwned
theorem s6Step5EntryG_Incoming : rowsOwned s6Step5EntryGBefore [s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow] 1 s6Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5EntryG_Outgoing : rowsOwned s6Step5EntryGvAfter [s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] :=
  hmrRows_owned_drop s6Step5EntryGvAfter [s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] 1 s6Step5EntryBank_outgoingOwned
theorem s6Step5EntryFv_Incoming : rowsOwned s6Step5EntryFvBefore [s6Step5EntryFvRow,s6Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow] 2 s6Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5EntryFv_Outgoing : rowsOwned s6Step5EntryGvAfter [s6Step5EntryFvOut,s6Step5EntryGvOut] :=
  hmrRows_owned_drop s6Step5EntryGvAfter [s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] 2 s6Step5EntryBank_outgoingOwned
theorem s6Step5EntryGv_Incoming : rowsOwned s6Step5EntryGvBefore [s6Step5EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow] 3 s6Step5EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5EntryGv_Outgoing : rowsOwned s6Step5EntryGvAfter [s6Step5EntryGvOut] :=
  hmrRows_owned_drop s6Step5EntryGvAfter [s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut] 3 s6Step5EntryBank_outgoingOwned
theorem s6Step5EntryBank_rows : planWindowRowsLog s6Step5EntryFBefore [(s6Step5EntryFRow,256),(s6Step5EntryGRow,256),(s6Step5EntryFvRow,6),(s6Step5EntryGvRow,6)] [s6Step5EntryFFresh,s6Step5EntryGFresh,s6Step5EntryFvFresh,s6Step5EntryGvFresh]=
    some (s6Step5EntryGvAfter,[s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut],(growRow 795 s6Step5EntryFFresh ++ (growRow 777 s6Step5EntryGFresh ++ (growRow 776 s6Step5EntryFvFresh ++ (growRow 775 s6Step5EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step5EntryGvAfter [] []=some (s6Step5EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step5EntryGvBefore s6Step5EntryGvAfter s6Step5EntryGvAfter
    s6Step5EntryGvRow s6Step5EntryGvOut 6 s6Step5EntryGvFresh [] [] []
    (growRow 775 s6Step5EntryGvFresh) ([]) s6Step5EntryGv_Incoming s6Step5EntryGv_checked h4 s6Step5EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step5EntryFvBefore s6Step5EntryFvAfter s6Step5EntryGvAfter
    s6Step5EntryFvRow s6Step5EntryFvOut 6 s6Step5EntryFvFresh [(s6Step5EntryGvRow,6)] [s6Step5EntryGvFresh] [s6Step5EntryGvOut]
    (growRow 776 s6Step5EntryFvFresh) ((growRow 775 s6Step5EntryGvFresh ++ [])) s6Step5EntryFv_Incoming s6Step5EntryFv_checked h3 s6Step5EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step5EntryGBefore s6Step5EntryGAfter s6Step5EntryGvAfter
    s6Step5EntryGRow s6Step5EntryGOut 256 s6Step5EntryGFresh [(s6Step5EntryFvRow,6),(s6Step5EntryGvRow,6)] [s6Step5EntryFvFresh,s6Step5EntryGvFresh] [s6Step5EntryFvOut,s6Step5EntryGvOut]
    (growRow 777 s6Step5EntryGFresh) ((growRow 776 s6Step5EntryFvFresh ++ (growRow 775 s6Step5EntryGvFresh ++ []))) s6Step5EntryG_Incoming s6Step5EntryG_checked h2 s6Step5EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step5EntryFBefore s6Step5EntryFAfter s6Step5EntryGvAfter
    s6Step5EntryFRow s6Step5EntryFOut 256 s6Step5EntryFFresh [(s6Step5EntryGRow,256),(s6Step5EntryFvRow,6),(s6Step5EntryGvRow,6)] [s6Step5EntryGFresh,s6Step5EntryFvFresh,s6Step5EntryGvFresh] [s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut]
    (growRow 795 s6Step5EntryFFresh) ((growRow 777 s6Step5EntryGFresh ++ (growRow 776 s6Step5EntryFvFresh ++ (growRow 775 s6Step5EntryGvFresh ++ [])))) s6Step5EntryF_Incoming s6Step5EntryF_checked h1 s6Step5EntryF_Outgoing
  exact h0
theorem s6Step5EntryBank_checked : compileHmrBankResizeLog .entry s6Step5EntryFBefore ⟨s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow⟩ ⟨256,256,6,6⟩ [s6Step5EntryFFresh,s6Step5EntryGFresh,s6Step5EntryFvFresh,s6Step5EntryGvFresh]=
    some (s6Step5EntryGvAfter,⟨s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut⟩,(growRow 795 s6Step5EntryFFresh ++ (growRow 777 s6Step5EntryGFresh ++ (growRow 776 s6Step5EntryFvFresh ++ (growRow 775 s6Step5EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step5EntryBank_rows]
  rfl
def s6Step6EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step6EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩
def s6Step6EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858],776⟩
def s6Step6EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 887],775⟩
theorem s6Step6EntryBank_incomingDistinct : ([s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6EntryBank_outgoingOwned : rowsOwned s6Step6EntryGvAfter [s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step6EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6EntryF_Incoming : rowsOwned s6Step6EntryFBefore [s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow] 0 s6Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6EntryF_Outgoing : rowsOwned s6Step6EntryGvAfter [s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] :=
  hmrRows_owned_drop s6Step6EntryGvAfter [s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] 0 s6Step6EntryBank_outgoingOwned
theorem s6Step6EntryG_Incoming : rowsOwned s6Step6EntryGBefore [s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow] 1 s6Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6EntryG_Outgoing : rowsOwned s6Step6EntryGvAfter [s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] :=
  hmrRows_owned_drop s6Step6EntryGvAfter [s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] 1 s6Step6EntryBank_outgoingOwned
theorem s6Step6EntryFv_Incoming : rowsOwned s6Step6EntryFvBefore [s6Step6EntryFvRow,s6Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow] 2 s6Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6EntryFv_Outgoing : rowsOwned s6Step6EntryGvAfter [s6Step6EntryFvOut,s6Step6EntryGvOut] :=
  hmrRows_owned_drop s6Step6EntryGvAfter [s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] 2 s6Step6EntryBank_outgoingOwned
theorem s6Step6EntryGv_Incoming : rowsOwned s6Step6EntryGvBefore [s6Step6EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow] 3 s6Step6EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6EntryGv_Outgoing : rowsOwned s6Step6EntryGvAfter [s6Step6EntryGvOut] :=
  hmrRows_owned_drop s6Step6EntryGvAfter [s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut] 3 s6Step6EntryBank_outgoingOwned
theorem s6Step6EntryBank_rows : planWindowRowsLog s6Step6EntryFBefore [(s6Step6EntryFRow,256),(s6Step6EntryGRow,256),(s6Step6EntryFvRow,7),(s6Step6EntryGvRow,7)] [s6Step6EntryFFresh,s6Step6EntryGFresh,s6Step6EntryFvFresh,s6Step6EntryGvFresh]=
    some (s6Step6EntryGvAfter,[s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut],(growRow 795 s6Step6EntryFFresh ++ (growRow 777 s6Step6EntryGFresh ++ (growRow 776 s6Step6EntryFvFresh ++ (growRow 775 s6Step6EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step6EntryGvAfter [] []=some (s6Step6EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step6EntryGvBefore s6Step6EntryGvAfter s6Step6EntryGvAfter
    s6Step6EntryGvRow s6Step6EntryGvOut 7 s6Step6EntryGvFresh [] [] []
    (growRow 775 s6Step6EntryGvFresh) ([]) s6Step6EntryGv_Incoming s6Step6EntryGv_checked h4 s6Step6EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step6EntryFvBefore s6Step6EntryFvAfter s6Step6EntryGvAfter
    s6Step6EntryFvRow s6Step6EntryFvOut 7 s6Step6EntryFvFresh [(s6Step6EntryGvRow,7)] [s6Step6EntryGvFresh] [s6Step6EntryGvOut]
    (growRow 776 s6Step6EntryFvFresh) ((growRow 775 s6Step6EntryGvFresh ++ [])) s6Step6EntryFv_Incoming s6Step6EntryFv_checked h3 s6Step6EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step6EntryGBefore s6Step6EntryGAfter s6Step6EntryGvAfter
    s6Step6EntryGRow s6Step6EntryGOut 256 s6Step6EntryGFresh [(s6Step6EntryFvRow,7),(s6Step6EntryGvRow,7)] [s6Step6EntryFvFresh,s6Step6EntryGvFresh] [s6Step6EntryFvOut,s6Step6EntryGvOut]
    (growRow 777 s6Step6EntryGFresh) ((growRow 776 s6Step6EntryFvFresh ++ (growRow 775 s6Step6EntryGvFresh ++ []))) s6Step6EntryG_Incoming s6Step6EntryG_checked h2 s6Step6EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step6EntryFBefore s6Step6EntryFAfter s6Step6EntryGvAfter
    s6Step6EntryFRow s6Step6EntryFOut 256 s6Step6EntryFFresh [(s6Step6EntryGRow,256),(s6Step6EntryFvRow,7),(s6Step6EntryGvRow,7)] [s6Step6EntryGFresh,s6Step6EntryFvFresh,s6Step6EntryGvFresh] [s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut]
    (growRow 795 s6Step6EntryFFresh) ((growRow 777 s6Step6EntryGFresh ++ (growRow 776 s6Step6EntryFvFresh ++ (growRow 775 s6Step6EntryGvFresh ++ [])))) s6Step6EntryF_Incoming s6Step6EntryF_checked h1 s6Step6EntryF_Outgoing
  exact h0
theorem s6Step6EntryBank_checked : compileHmrBankResizeLog .entry s6Step6EntryFBefore ⟨s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow⟩ ⟨256,256,7,7⟩ [s6Step6EntryFFresh,s6Step6EntryGFresh,s6Step6EntryFvFresh,s6Step6EntryGvFresh]=
    some (s6Step6EntryGvAfter,⟨s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut⟩,(growRow 795 s6Step6EntryFFresh ++ (growRow 777 s6Step6EntryGFresh ++ (growRow 776 s6Step6EntryFvFresh ++ (growRow 775 s6Step6EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step6EntryBank_rows]
  rfl
def s6Step7EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step7EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step7EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845],776⟩
def s6Step7EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 887],775⟩
theorem s6Step7EntryBank_incomingDistinct : ([s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7EntryBank_outgoingOwned : rowsOwned s6Step7EntryGvAfter [s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step7EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7EntryF_Incoming : rowsOwned s6Step7EntryFBefore [s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow] 0 s6Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7EntryF_Outgoing : rowsOwned s6Step7EntryGvAfter [s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] :=
  hmrRows_owned_drop s6Step7EntryGvAfter [s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] 0 s6Step7EntryBank_outgoingOwned
theorem s6Step7EntryG_Incoming : rowsOwned s6Step7EntryGBefore [s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow] 1 s6Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7EntryG_Outgoing : rowsOwned s6Step7EntryGvAfter [s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] :=
  hmrRows_owned_drop s6Step7EntryGvAfter [s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] 1 s6Step7EntryBank_outgoingOwned
theorem s6Step7EntryFv_Incoming : rowsOwned s6Step7EntryFvBefore [s6Step7EntryFvRow,s6Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow] 2 s6Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7EntryFv_Outgoing : rowsOwned s6Step7EntryGvAfter [s6Step7EntryFvOut,s6Step7EntryGvOut] :=
  hmrRows_owned_drop s6Step7EntryGvAfter [s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] 2 s6Step7EntryBank_outgoingOwned
theorem s6Step7EntryGv_Incoming : rowsOwned s6Step7EntryGvBefore [s6Step7EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow] 3 s6Step7EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7EntryGv_Outgoing : rowsOwned s6Step7EntryGvAfter [s6Step7EntryGvOut] :=
  hmrRows_owned_drop s6Step7EntryGvAfter [s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut] 3 s6Step7EntryBank_outgoingOwned
theorem s6Step7EntryBank_rows : planWindowRowsLog s6Step7EntryFBefore [(s6Step7EntryFRow,256),(s6Step7EntryGRow,256),(s6Step7EntryFvRow,8),(s6Step7EntryGvRow,8)] [s6Step7EntryFFresh,s6Step7EntryGFresh,s6Step7EntryFvFresh,s6Step7EntryGvFresh]=
    some (s6Step7EntryGvAfter,[s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut],(growRow 795 s6Step7EntryFFresh ++ (growRow 777 s6Step7EntryGFresh ++ (growRow 776 s6Step7EntryFvFresh ++ (growRow 775 s6Step7EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step7EntryGvAfter [] []=some (s6Step7EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step7EntryGvBefore s6Step7EntryGvAfter s6Step7EntryGvAfter
    s6Step7EntryGvRow s6Step7EntryGvOut 8 s6Step7EntryGvFresh [] [] []
    (growRow 775 s6Step7EntryGvFresh) ([]) s6Step7EntryGv_Incoming s6Step7EntryGv_checked h4 s6Step7EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step7EntryFvBefore s6Step7EntryFvAfter s6Step7EntryGvAfter
    s6Step7EntryFvRow s6Step7EntryFvOut 8 s6Step7EntryFvFresh [(s6Step7EntryGvRow,8)] [s6Step7EntryGvFresh] [s6Step7EntryGvOut]
    (growRow 776 s6Step7EntryFvFresh) ((growRow 775 s6Step7EntryGvFresh ++ [])) s6Step7EntryFv_Incoming s6Step7EntryFv_checked h3 s6Step7EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step7EntryGBefore s6Step7EntryGAfter s6Step7EntryGvAfter
    s6Step7EntryGRow s6Step7EntryGOut 256 s6Step7EntryGFresh [(s6Step7EntryFvRow,8),(s6Step7EntryGvRow,8)] [s6Step7EntryFvFresh,s6Step7EntryGvFresh] [s6Step7EntryFvOut,s6Step7EntryGvOut]
    (growRow 777 s6Step7EntryGFresh) ((growRow 776 s6Step7EntryFvFresh ++ (growRow 775 s6Step7EntryGvFresh ++ []))) s6Step7EntryG_Incoming s6Step7EntryG_checked h2 s6Step7EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step7EntryFBefore s6Step7EntryFAfter s6Step7EntryGvAfter
    s6Step7EntryFRow s6Step7EntryFOut 256 s6Step7EntryFFresh [(s6Step7EntryGRow,256),(s6Step7EntryFvRow,8),(s6Step7EntryGvRow,8)] [s6Step7EntryGFresh,s6Step7EntryFvFresh,s6Step7EntryGvFresh] [s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut]
    (growRow 795 s6Step7EntryFFresh) ((growRow 777 s6Step7EntryGFresh ++ (growRow 776 s6Step7EntryFvFresh ++ (growRow 775 s6Step7EntryGvFresh ++ [])))) s6Step7EntryF_Incoming s6Step7EntryF_checked h1 s6Step7EntryF_Outgoing
  exact h0
theorem s6Step7EntryBank_checked : compileHmrBankResizeLog .entry s6Step7EntryFBefore ⟨s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow⟩ ⟨256,256,8,8⟩ [s6Step7EntryFFresh,s6Step7EntryGFresh,s6Step7EntryFvFresh,s6Step7EntryGvFresh]=
    some (s6Step7EntryGvAfter,⟨s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut⟩,(growRow 795 s6Step7EntryFFresh ++ (growRow 777 s6Step7EntryGFresh ++ (growRow 776 s6Step7EntryFvFresh ++ (growRow 775 s6Step7EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step7EntryBank_rows]
  rfl
def s6Step8EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step8EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩
def s6Step8EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805],776⟩
def s6Step8EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 887],775⟩
theorem s6Step8EntryBank_incomingDistinct : ([s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8EntryBank_outgoingOwned : rowsOwned s6Step8EntryGvAfter [s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step8EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8EntryF_Incoming : rowsOwned s6Step8EntryFBefore [s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow] 0 s6Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8EntryF_Outgoing : rowsOwned s6Step8EntryGvAfter [s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] :=
  hmrRows_owned_drop s6Step8EntryGvAfter [s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] 0 s6Step8EntryBank_outgoingOwned
theorem s6Step8EntryG_Incoming : rowsOwned s6Step8EntryGBefore [s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow] 1 s6Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8EntryG_Outgoing : rowsOwned s6Step8EntryGvAfter [s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] :=
  hmrRows_owned_drop s6Step8EntryGvAfter [s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] 1 s6Step8EntryBank_outgoingOwned
theorem s6Step8EntryFv_Incoming : rowsOwned s6Step8EntryFvBefore [s6Step8EntryFvRow,s6Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow] 2 s6Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8EntryFv_Outgoing : rowsOwned s6Step8EntryGvAfter [s6Step8EntryFvOut,s6Step8EntryGvOut] :=
  hmrRows_owned_drop s6Step8EntryGvAfter [s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] 2 s6Step8EntryBank_outgoingOwned
theorem s6Step8EntryGv_Incoming : rowsOwned s6Step8EntryGvBefore [s6Step8EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow] 3 s6Step8EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8EntryGv_Outgoing : rowsOwned s6Step8EntryGvAfter [s6Step8EntryGvOut] :=
  hmrRows_owned_drop s6Step8EntryGvAfter [s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut] 3 s6Step8EntryBank_outgoingOwned
theorem s6Step8EntryBank_rows : planWindowRowsLog s6Step8EntryFBefore [(s6Step8EntryFRow,256),(s6Step8EntryGRow,256),(s6Step8EntryFvRow,9),(s6Step8EntryGvRow,9)] [s6Step8EntryFFresh,s6Step8EntryGFresh,s6Step8EntryFvFresh,s6Step8EntryGvFresh]=
    some (s6Step8EntryGvAfter,[s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut],(growRow 795 s6Step8EntryFFresh ++ (growRow 777 s6Step8EntryGFresh ++ (growRow 776 s6Step8EntryFvFresh ++ (growRow 775 s6Step8EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step8EntryGvAfter [] []=some (s6Step8EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step8EntryGvBefore s6Step8EntryGvAfter s6Step8EntryGvAfter
    s6Step8EntryGvRow s6Step8EntryGvOut 9 s6Step8EntryGvFresh [] [] []
    (growRow 775 s6Step8EntryGvFresh) ([]) s6Step8EntryGv_Incoming s6Step8EntryGv_checked h4 s6Step8EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step8EntryFvBefore s6Step8EntryFvAfter s6Step8EntryGvAfter
    s6Step8EntryFvRow s6Step8EntryFvOut 9 s6Step8EntryFvFresh [(s6Step8EntryGvRow,9)] [s6Step8EntryGvFresh] [s6Step8EntryGvOut]
    (growRow 776 s6Step8EntryFvFresh) ((growRow 775 s6Step8EntryGvFresh ++ [])) s6Step8EntryFv_Incoming s6Step8EntryFv_checked h3 s6Step8EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step8EntryGBefore s6Step8EntryGAfter s6Step8EntryGvAfter
    s6Step8EntryGRow s6Step8EntryGOut 256 s6Step8EntryGFresh [(s6Step8EntryFvRow,9),(s6Step8EntryGvRow,9)] [s6Step8EntryFvFresh,s6Step8EntryGvFresh] [s6Step8EntryFvOut,s6Step8EntryGvOut]
    (growRow 777 s6Step8EntryGFresh) ((growRow 776 s6Step8EntryFvFresh ++ (growRow 775 s6Step8EntryGvFresh ++ []))) s6Step8EntryG_Incoming s6Step8EntryG_checked h2 s6Step8EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step8EntryFBefore s6Step8EntryFAfter s6Step8EntryGvAfter
    s6Step8EntryFRow s6Step8EntryFOut 256 s6Step8EntryFFresh [(s6Step8EntryGRow,256),(s6Step8EntryFvRow,9),(s6Step8EntryGvRow,9)] [s6Step8EntryGFresh,s6Step8EntryFvFresh,s6Step8EntryGvFresh] [s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut]
    (growRow 795 s6Step8EntryFFresh) ((growRow 777 s6Step8EntryGFresh ++ (growRow 776 s6Step8EntryFvFresh ++ (growRow 775 s6Step8EntryGvFresh ++ [])))) s6Step8EntryF_Incoming s6Step8EntryF_checked h1 s6Step8EntryF_Outgoing
  exact h0
theorem s6Step8EntryBank_checked : compileHmrBankResizeLog .entry s6Step8EntryFBefore ⟨s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow⟩ ⟨256,256,9,9⟩ [s6Step8EntryFFresh,s6Step8EntryGFresh,s6Step8EntryFvFresh,s6Step8EntryGvFresh]=
    some (s6Step8EntryGvAfter,⟨s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut⟩,(growRow 795 s6Step8EntryFFresh ++ (growRow 777 s6Step8EntryGFresh ++ (growRow 776 s6Step8EntryFvFresh ++ (growRow 775 s6Step8EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step8EntryBank_rows]
  rfl
def s6Step9EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step9EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩
def s6Step9EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796],776⟩
def s6Step9EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 887],775⟩
theorem s6Step9EntryBank_incomingDistinct : ([s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9EntryBank_outgoingOwned : rowsOwned s6Step9EntryGvAfter [s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step9EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9EntryF_Incoming : rowsOwned s6Step9EntryFBefore [s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow] 0 s6Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9EntryF_Outgoing : rowsOwned s6Step9EntryGvAfter [s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] :=
  hmrRows_owned_drop s6Step9EntryGvAfter [s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] 0 s6Step9EntryBank_outgoingOwned
theorem s6Step9EntryG_Incoming : rowsOwned s6Step9EntryGBefore [s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow] 1 s6Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9EntryG_Outgoing : rowsOwned s6Step9EntryGvAfter [s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] :=
  hmrRows_owned_drop s6Step9EntryGvAfter [s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] 1 s6Step9EntryBank_outgoingOwned
theorem s6Step9EntryFv_Incoming : rowsOwned s6Step9EntryFvBefore [s6Step9EntryFvRow,s6Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow] 2 s6Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9EntryFv_Outgoing : rowsOwned s6Step9EntryGvAfter [s6Step9EntryFvOut,s6Step9EntryGvOut] :=
  hmrRows_owned_drop s6Step9EntryGvAfter [s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] 2 s6Step9EntryBank_outgoingOwned
theorem s6Step9EntryGv_Incoming : rowsOwned s6Step9EntryGvBefore [s6Step9EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow] 3 s6Step9EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9EntryGv_Outgoing : rowsOwned s6Step9EntryGvAfter [s6Step9EntryGvOut] :=
  hmrRows_owned_drop s6Step9EntryGvAfter [s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut] 3 s6Step9EntryBank_outgoingOwned
theorem s6Step9EntryBank_rows : planWindowRowsLog s6Step9EntryFBefore [(s6Step9EntryFRow,256),(s6Step9EntryGRow,256),(s6Step9EntryFvRow,10),(s6Step9EntryGvRow,10)] [s6Step9EntryFFresh,s6Step9EntryGFresh,s6Step9EntryFvFresh,s6Step9EntryGvFresh]=
    some (s6Step9EntryGvAfter,[s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut],(growRow 795 s6Step9EntryFFresh ++ (growRow 777 s6Step9EntryGFresh ++ (growRow 776 s6Step9EntryFvFresh ++ (growRow 775 s6Step9EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step9EntryGvAfter [] []=some (s6Step9EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step9EntryGvBefore s6Step9EntryGvAfter s6Step9EntryGvAfter
    s6Step9EntryGvRow s6Step9EntryGvOut 10 s6Step9EntryGvFresh [] [] []
    (growRow 775 s6Step9EntryGvFresh) ([]) s6Step9EntryGv_Incoming s6Step9EntryGv_checked h4 s6Step9EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step9EntryFvBefore s6Step9EntryFvAfter s6Step9EntryGvAfter
    s6Step9EntryFvRow s6Step9EntryFvOut 10 s6Step9EntryFvFresh [(s6Step9EntryGvRow,10)] [s6Step9EntryGvFresh] [s6Step9EntryGvOut]
    (growRow 776 s6Step9EntryFvFresh) ((growRow 775 s6Step9EntryGvFresh ++ [])) s6Step9EntryFv_Incoming s6Step9EntryFv_checked h3 s6Step9EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step9EntryGBefore s6Step9EntryGAfter s6Step9EntryGvAfter
    s6Step9EntryGRow s6Step9EntryGOut 256 s6Step9EntryGFresh [(s6Step9EntryFvRow,10),(s6Step9EntryGvRow,10)] [s6Step9EntryFvFresh,s6Step9EntryGvFresh] [s6Step9EntryFvOut,s6Step9EntryGvOut]
    (growRow 777 s6Step9EntryGFresh) ((growRow 776 s6Step9EntryFvFresh ++ (growRow 775 s6Step9EntryGvFresh ++ []))) s6Step9EntryG_Incoming s6Step9EntryG_checked h2 s6Step9EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step9EntryFBefore s6Step9EntryFAfter s6Step9EntryGvAfter
    s6Step9EntryFRow s6Step9EntryFOut 256 s6Step9EntryFFresh [(s6Step9EntryGRow,256),(s6Step9EntryFvRow,10),(s6Step9EntryGvRow,10)] [s6Step9EntryGFresh,s6Step9EntryFvFresh,s6Step9EntryGvFresh] [s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut]
    (growRow 795 s6Step9EntryFFresh) ((growRow 777 s6Step9EntryGFresh ++ (growRow 776 s6Step9EntryFvFresh ++ (growRow 775 s6Step9EntryGvFresh ++ [])))) s6Step9EntryF_Incoming s6Step9EntryF_checked h1 s6Step9EntryF_Outgoing
  exact h0
theorem s6Step9EntryBank_checked : compileHmrBankResizeLog .entry s6Step9EntryFBefore ⟨s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow⟩ ⟨256,256,10,10⟩ [s6Step9EntryFFresh,s6Step9EntryGFresh,s6Step9EntryFvFresh,s6Step9EntryGvFresh]=
    some (s6Step9EntryGvAfter,⟨s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut⟩,(growRow 795 s6Step9EntryFFresh ++ (growRow 777 s6Step9EntryGFresh ++ (growRow 776 s6Step9EntryFvFresh ++ (growRow 775 s6Step9EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step9EntryBank_rows]
  rfl
def s6Step10EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step10EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩
def s6Step10EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856],776⟩
def s6Step10EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 887],775⟩
theorem s6Step10EntryBank_incomingDistinct : ([s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10EntryBank_outgoingOwned : rowsOwned s6Step10EntryGvAfter [s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step10EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10EntryF_Incoming : rowsOwned s6Step10EntryFBefore [s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow] 0 s6Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10EntryF_Outgoing : rowsOwned s6Step10EntryGvAfter [s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] :=
  hmrRows_owned_drop s6Step10EntryGvAfter [s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] 0 s6Step10EntryBank_outgoingOwned
theorem s6Step10EntryG_Incoming : rowsOwned s6Step10EntryGBefore [s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow] 1 s6Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10EntryG_Outgoing : rowsOwned s6Step10EntryGvAfter [s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] :=
  hmrRows_owned_drop s6Step10EntryGvAfter [s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] 1 s6Step10EntryBank_outgoingOwned
theorem s6Step10EntryFv_Incoming : rowsOwned s6Step10EntryFvBefore [s6Step10EntryFvRow,s6Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow] 2 s6Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10EntryFv_Outgoing : rowsOwned s6Step10EntryGvAfter [s6Step10EntryFvOut,s6Step10EntryGvOut] :=
  hmrRows_owned_drop s6Step10EntryGvAfter [s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] 2 s6Step10EntryBank_outgoingOwned
theorem s6Step10EntryGv_Incoming : rowsOwned s6Step10EntryGvBefore [s6Step10EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow] 3 s6Step10EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10EntryGv_Outgoing : rowsOwned s6Step10EntryGvAfter [s6Step10EntryGvOut] :=
  hmrRows_owned_drop s6Step10EntryGvAfter [s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut] 3 s6Step10EntryBank_outgoingOwned
theorem s6Step10EntryBank_rows : planWindowRowsLog s6Step10EntryFBefore [(s6Step10EntryFRow,256),(s6Step10EntryGRow,256),(s6Step10EntryFvRow,11),(s6Step10EntryGvRow,11)] [s6Step10EntryFFresh,s6Step10EntryGFresh,s6Step10EntryFvFresh,s6Step10EntryGvFresh]=
    some (s6Step10EntryGvAfter,[s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut],(growRow 795 s6Step10EntryFFresh ++ (growRow 777 s6Step10EntryGFresh ++ (growRow 776 s6Step10EntryFvFresh ++ (growRow 775 s6Step10EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step10EntryGvAfter [] []=some (s6Step10EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step10EntryGvBefore s6Step10EntryGvAfter s6Step10EntryGvAfter
    s6Step10EntryGvRow s6Step10EntryGvOut 11 s6Step10EntryGvFresh [] [] []
    (growRow 775 s6Step10EntryGvFresh) ([]) s6Step10EntryGv_Incoming s6Step10EntryGv_checked h4 s6Step10EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step10EntryFvBefore s6Step10EntryFvAfter s6Step10EntryGvAfter
    s6Step10EntryFvRow s6Step10EntryFvOut 11 s6Step10EntryFvFresh [(s6Step10EntryGvRow,11)] [s6Step10EntryGvFresh] [s6Step10EntryGvOut]
    (growRow 776 s6Step10EntryFvFresh) ((growRow 775 s6Step10EntryGvFresh ++ [])) s6Step10EntryFv_Incoming s6Step10EntryFv_checked h3 s6Step10EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step10EntryGBefore s6Step10EntryGAfter s6Step10EntryGvAfter
    s6Step10EntryGRow s6Step10EntryGOut 256 s6Step10EntryGFresh [(s6Step10EntryFvRow,11),(s6Step10EntryGvRow,11)] [s6Step10EntryFvFresh,s6Step10EntryGvFresh] [s6Step10EntryFvOut,s6Step10EntryGvOut]
    (growRow 777 s6Step10EntryGFresh) ((growRow 776 s6Step10EntryFvFresh ++ (growRow 775 s6Step10EntryGvFresh ++ []))) s6Step10EntryG_Incoming s6Step10EntryG_checked h2 s6Step10EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step10EntryFBefore s6Step10EntryFAfter s6Step10EntryGvAfter
    s6Step10EntryFRow s6Step10EntryFOut 256 s6Step10EntryFFresh [(s6Step10EntryGRow,256),(s6Step10EntryFvRow,11),(s6Step10EntryGvRow,11)] [s6Step10EntryGFresh,s6Step10EntryFvFresh,s6Step10EntryGvFresh] [s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut]
    (growRow 795 s6Step10EntryFFresh) ((growRow 777 s6Step10EntryGFresh ++ (growRow 776 s6Step10EntryFvFresh ++ (growRow 775 s6Step10EntryGvFresh ++ [])))) s6Step10EntryF_Incoming s6Step10EntryF_checked h1 s6Step10EntryF_Outgoing
  exact h0
theorem s6Step10EntryBank_checked : compileHmrBankResizeLog .entry s6Step10EntryFBefore ⟨s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow⟩ ⟨256,256,11,11⟩ [s6Step10EntryFFresh,s6Step10EntryGFresh,s6Step10EntryFvFresh,s6Step10EntryGvFresh]=
    some (s6Step10EntryGvAfter,⟨s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut⟩,(growRow 795 s6Step10EntryFFresh ++ (growRow 777 s6Step10EntryGFresh ++ (growRow 776 s6Step10EntryFvFresh ++ (growRow 775 s6Step10EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step10EntryBank_rows]
  rfl
def s6Step11EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step11EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step11EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865],776⟩
def s6Step11EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 887],775⟩
theorem s6Step11EntryBank_incomingDistinct : ([s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11EntryBank_outgoingOwned : rowsOwned s6Step11EntryGvAfter [s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step11EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11EntryF_Incoming : rowsOwned s6Step11EntryFBefore [s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow] 0 s6Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11EntryF_Outgoing : rowsOwned s6Step11EntryGvAfter [s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] :=
  hmrRows_owned_drop s6Step11EntryGvAfter [s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] 0 s6Step11EntryBank_outgoingOwned
theorem s6Step11EntryG_Incoming : rowsOwned s6Step11EntryGBefore [s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow] 1 s6Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11EntryG_Outgoing : rowsOwned s6Step11EntryGvAfter [s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] :=
  hmrRows_owned_drop s6Step11EntryGvAfter [s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] 1 s6Step11EntryBank_outgoingOwned
theorem s6Step11EntryFv_Incoming : rowsOwned s6Step11EntryFvBefore [s6Step11EntryFvRow,s6Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow] 2 s6Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11EntryFv_Outgoing : rowsOwned s6Step11EntryGvAfter [s6Step11EntryFvOut,s6Step11EntryGvOut] :=
  hmrRows_owned_drop s6Step11EntryGvAfter [s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] 2 s6Step11EntryBank_outgoingOwned
theorem s6Step11EntryGv_Incoming : rowsOwned s6Step11EntryGvBefore [s6Step11EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow] 3 s6Step11EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11EntryGv_Outgoing : rowsOwned s6Step11EntryGvAfter [s6Step11EntryGvOut] :=
  hmrRows_owned_drop s6Step11EntryGvAfter [s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut] 3 s6Step11EntryBank_outgoingOwned
theorem s6Step11EntryBank_rows : planWindowRowsLog s6Step11EntryFBefore [(s6Step11EntryFRow,256),(s6Step11EntryGRow,256),(s6Step11EntryFvRow,12),(s6Step11EntryGvRow,12)] [s6Step11EntryFFresh,s6Step11EntryGFresh,s6Step11EntryFvFresh,s6Step11EntryGvFresh]=
    some (s6Step11EntryGvAfter,[s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut],(growRow 795 s6Step11EntryFFresh ++ (growRow 777 s6Step11EntryGFresh ++ (growRow 776 s6Step11EntryFvFresh ++ (growRow 775 s6Step11EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step11EntryGvAfter [] []=some (s6Step11EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step11EntryGvBefore s6Step11EntryGvAfter s6Step11EntryGvAfter
    s6Step11EntryGvRow s6Step11EntryGvOut 12 s6Step11EntryGvFresh [] [] []
    (growRow 775 s6Step11EntryGvFresh) ([]) s6Step11EntryGv_Incoming s6Step11EntryGv_checked h4 s6Step11EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step11EntryFvBefore s6Step11EntryFvAfter s6Step11EntryGvAfter
    s6Step11EntryFvRow s6Step11EntryFvOut 12 s6Step11EntryFvFresh [(s6Step11EntryGvRow,12)] [s6Step11EntryGvFresh] [s6Step11EntryGvOut]
    (growRow 776 s6Step11EntryFvFresh) ((growRow 775 s6Step11EntryGvFresh ++ [])) s6Step11EntryFv_Incoming s6Step11EntryFv_checked h3 s6Step11EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step11EntryGBefore s6Step11EntryGAfter s6Step11EntryGvAfter
    s6Step11EntryGRow s6Step11EntryGOut 256 s6Step11EntryGFresh [(s6Step11EntryFvRow,12),(s6Step11EntryGvRow,12)] [s6Step11EntryFvFresh,s6Step11EntryGvFresh] [s6Step11EntryFvOut,s6Step11EntryGvOut]
    (growRow 777 s6Step11EntryGFresh) ((growRow 776 s6Step11EntryFvFresh ++ (growRow 775 s6Step11EntryGvFresh ++ []))) s6Step11EntryG_Incoming s6Step11EntryG_checked h2 s6Step11EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step11EntryFBefore s6Step11EntryFAfter s6Step11EntryGvAfter
    s6Step11EntryFRow s6Step11EntryFOut 256 s6Step11EntryFFresh [(s6Step11EntryGRow,256),(s6Step11EntryFvRow,12),(s6Step11EntryGvRow,12)] [s6Step11EntryGFresh,s6Step11EntryFvFresh,s6Step11EntryGvFresh] [s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut]
    (growRow 795 s6Step11EntryFFresh) ((growRow 777 s6Step11EntryGFresh ++ (growRow 776 s6Step11EntryFvFresh ++ (growRow 775 s6Step11EntryGvFresh ++ [])))) s6Step11EntryF_Incoming s6Step11EntryF_checked h1 s6Step11EntryF_Outgoing
  exact h0
theorem s6Step11EntryBank_checked : compileHmrBankResizeLog .entry s6Step11EntryFBefore ⟨s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow⟩ ⟨256,256,12,12⟩ [s6Step11EntryFFresh,s6Step11EntryGFresh,s6Step11EntryFvFresh,s6Step11EntryGvFresh]=
    some (s6Step11EntryGvAfter,⟨s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut⟩,(growRow 795 s6Step11EntryFFresh ++ (growRow 777 s6Step11EntryGFresh ++ (growRow 776 s6Step11EntryFvFresh ++ (growRow 775 s6Step11EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step11EntryBank_rows]
  rfl
def s6Step12EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step12EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩
def s6Step12EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789],776⟩
def s6Step12EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 887],775⟩
theorem s6Step12EntryBank_incomingDistinct : ([s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12EntryBank_outgoingOwned : rowsOwned s6Step12EntryGvAfter [s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step12EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12EntryF_Incoming : rowsOwned s6Step12EntryFBefore [s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow] 0 s6Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12EntryF_Outgoing : rowsOwned s6Step12EntryGvAfter [s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] :=
  hmrRows_owned_drop s6Step12EntryGvAfter [s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] 0 s6Step12EntryBank_outgoingOwned
theorem s6Step12EntryG_Incoming : rowsOwned s6Step12EntryGBefore [s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow] 1 s6Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12EntryG_Outgoing : rowsOwned s6Step12EntryGvAfter [s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] :=
  hmrRows_owned_drop s6Step12EntryGvAfter [s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] 1 s6Step12EntryBank_outgoingOwned
theorem s6Step12EntryFv_Incoming : rowsOwned s6Step12EntryFvBefore [s6Step12EntryFvRow,s6Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow] 2 s6Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12EntryFv_Outgoing : rowsOwned s6Step12EntryGvAfter [s6Step12EntryFvOut,s6Step12EntryGvOut] :=
  hmrRows_owned_drop s6Step12EntryGvAfter [s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] 2 s6Step12EntryBank_outgoingOwned
theorem s6Step12EntryGv_Incoming : rowsOwned s6Step12EntryGvBefore [s6Step12EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow] 3 s6Step12EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12EntryGv_Outgoing : rowsOwned s6Step12EntryGvAfter [s6Step12EntryGvOut] :=
  hmrRows_owned_drop s6Step12EntryGvAfter [s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut] 3 s6Step12EntryBank_outgoingOwned
theorem s6Step12EntryBank_rows : planWindowRowsLog s6Step12EntryFBefore [(s6Step12EntryFRow,256),(s6Step12EntryGRow,256),(s6Step12EntryFvRow,13),(s6Step12EntryGvRow,13)] [s6Step12EntryFFresh,s6Step12EntryGFresh,s6Step12EntryFvFresh,s6Step12EntryGvFresh]=
    some (s6Step12EntryGvAfter,[s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut],(growRow 795 s6Step12EntryFFresh ++ (growRow 777 s6Step12EntryGFresh ++ (growRow 776 s6Step12EntryFvFresh ++ (growRow 775 s6Step12EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step12EntryGvAfter [] []=some (s6Step12EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step12EntryGvBefore s6Step12EntryGvAfter s6Step12EntryGvAfter
    s6Step12EntryGvRow s6Step12EntryGvOut 13 s6Step12EntryGvFresh [] [] []
    (growRow 775 s6Step12EntryGvFresh) ([]) s6Step12EntryGv_Incoming s6Step12EntryGv_checked h4 s6Step12EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step12EntryFvBefore s6Step12EntryFvAfter s6Step12EntryGvAfter
    s6Step12EntryFvRow s6Step12EntryFvOut 13 s6Step12EntryFvFresh [(s6Step12EntryGvRow,13)] [s6Step12EntryGvFresh] [s6Step12EntryGvOut]
    (growRow 776 s6Step12EntryFvFresh) ((growRow 775 s6Step12EntryGvFresh ++ [])) s6Step12EntryFv_Incoming s6Step12EntryFv_checked h3 s6Step12EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step12EntryGBefore s6Step12EntryGAfter s6Step12EntryGvAfter
    s6Step12EntryGRow s6Step12EntryGOut 256 s6Step12EntryGFresh [(s6Step12EntryFvRow,13),(s6Step12EntryGvRow,13)] [s6Step12EntryFvFresh,s6Step12EntryGvFresh] [s6Step12EntryFvOut,s6Step12EntryGvOut]
    (growRow 777 s6Step12EntryGFresh) ((growRow 776 s6Step12EntryFvFresh ++ (growRow 775 s6Step12EntryGvFresh ++ []))) s6Step12EntryG_Incoming s6Step12EntryG_checked h2 s6Step12EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step12EntryFBefore s6Step12EntryFAfter s6Step12EntryGvAfter
    s6Step12EntryFRow s6Step12EntryFOut 256 s6Step12EntryFFresh [(s6Step12EntryGRow,256),(s6Step12EntryFvRow,13),(s6Step12EntryGvRow,13)] [s6Step12EntryGFresh,s6Step12EntryFvFresh,s6Step12EntryGvFresh] [s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut]
    (growRow 795 s6Step12EntryFFresh) ((growRow 777 s6Step12EntryGFresh ++ (growRow 776 s6Step12EntryFvFresh ++ (growRow 775 s6Step12EntryGvFresh ++ [])))) s6Step12EntryF_Incoming s6Step12EntryF_checked h1 s6Step12EntryF_Outgoing
  exact h0
theorem s6Step12EntryBank_checked : compileHmrBankResizeLog .entry s6Step12EntryFBefore ⟨s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow⟩ ⟨256,256,13,13⟩ [s6Step12EntryFFresh,s6Step12EntryGFresh,s6Step12EntryFvFresh,s6Step12EntryGvFresh]=
    some (s6Step12EntryGvAfter,⟨s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut⟩,(growRow 795 s6Step12EntryFFresh ++ (growRow 777 s6Step12EntryGFresh ++ (growRow 776 s6Step12EntryFvFresh ++ (growRow 775 s6Step12EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step12EntryBank_rows]
  rfl
def s6Step13EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step13EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩
def s6Step13EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818],776⟩
def s6Step13EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 887],775⟩
theorem s6Step13EntryBank_incomingDistinct : ([s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13EntryBank_outgoingOwned : rowsOwned s6Step13EntryGvAfter [s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step13EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13EntryF_Incoming : rowsOwned s6Step13EntryFBefore [s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow] 0 s6Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13EntryF_Outgoing : rowsOwned s6Step13EntryGvAfter [s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] :=
  hmrRows_owned_drop s6Step13EntryGvAfter [s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] 0 s6Step13EntryBank_outgoingOwned
theorem s6Step13EntryG_Incoming : rowsOwned s6Step13EntryGBefore [s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow] 1 s6Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13EntryG_Outgoing : rowsOwned s6Step13EntryGvAfter [s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] :=
  hmrRows_owned_drop s6Step13EntryGvAfter [s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] 1 s6Step13EntryBank_outgoingOwned
theorem s6Step13EntryFv_Incoming : rowsOwned s6Step13EntryFvBefore [s6Step13EntryFvRow,s6Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow] 2 s6Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13EntryFv_Outgoing : rowsOwned s6Step13EntryGvAfter [s6Step13EntryFvOut,s6Step13EntryGvOut] :=
  hmrRows_owned_drop s6Step13EntryGvAfter [s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] 2 s6Step13EntryBank_outgoingOwned
theorem s6Step13EntryGv_Incoming : rowsOwned s6Step13EntryGvBefore [s6Step13EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow] 3 s6Step13EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13EntryGv_Outgoing : rowsOwned s6Step13EntryGvAfter [s6Step13EntryGvOut] :=
  hmrRows_owned_drop s6Step13EntryGvAfter [s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut] 3 s6Step13EntryBank_outgoingOwned
theorem s6Step13EntryBank_rows : planWindowRowsLog s6Step13EntryFBefore [(s6Step13EntryFRow,256),(s6Step13EntryGRow,256),(s6Step13EntryFvRow,14),(s6Step13EntryGvRow,14)] [s6Step13EntryFFresh,s6Step13EntryGFresh,s6Step13EntryFvFresh,s6Step13EntryGvFresh]=
    some (s6Step13EntryGvAfter,[s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut],(growRow 795 s6Step13EntryFFresh ++ (growRow 777 s6Step13EntryGFresh ++ (growRow 776 s6Step13EntryFvFresh ++ (growRow 775 s6Step13EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step13EntryGvAfter [] []=some (s6Step13EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step13EntryGvBefore s6Step13EntryGvAfter s6Step13EntryGvAfter
    s6Step13EntryGvRow s6Step13EntryGvOut 14 s6Step13EntryGvFresh [] [] []
    (growRow 775 s6Step13EntryGvFresh) ([]) s6Step13EntryGv_Incoming s6Step13EntryGv_checked h4 s6Step13EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step13EntryFvBefore s6Step13EntryFvAfter s6Step13EntryGvAfter
    s6Step13EntryFvRow s6Step13EntryFvOut 14 s6Step13EntryFvFresh [(s6Step13EntryGvRow,14)] [s6Step13EntryGvFresh] [s6Step13EntryGvOut]
    (growRow 776 s6Step13EntryFvFresh) ((growRow 775 s6Step13EntryGvFresh ++ [])) s6Step13EntryFv_Incoming s6Step13EntryFv_checked h3 s6Step13EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step13EntryGBefore s6Step13EntryGAfter s6Step13EntryGvAfter
    s6Step13EntryGRow s6Step13EntryGOut 256 s6Step13EntryGFresh [(s6Step13EntryFvRow,14),(s6Step13EntryGvRow,14)] [s6Step13EntryFvFresh,s6Step13EntryGvFresh] [s6Step13EntryFvOut,s6Step13EntryGvOut]
    (growRow 777 s6Step13EntryGFresh) ((growRow 776 s6Step13EntryFvFresh ++ (growRow 775 s6Step13EntryGvFresh ++ []))) s6Step13EntryG_Incoming s6Step13EntryG_checked h2 s6Step13EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step13EntryFBefore s6Step13EntryFAfter s6Step13EntryGvAfter
    s6Step13EntryFRow s6Step13EntryFOut 256 s6Step13EntryFFresh [(s6Step13EntryGRow,256),(s6Step13EntryFvRow,14),(s6Step13EntryGvRow,14)] [s6Step13EntryGFresh,s6Step13EntryFvFresh,s6Step13EntryGvFresh] [s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut]
    (growRow 795 s6Step13EntryFFresh) ((growRow 777 s6Step13EntryGFresh ++ (growRow 776 s6Step13EntryFvFresh ++ (growRow 775 s6Step13EntryGvFresh ++ [])))) s6Step13EntryF_Incoming s6Step13EntryF_checked h1 s6Step13EntryF_Outgoing
  exact h0
theorem s6Step13EntryBank_checked : compileHmrBankResizeLog .entry s6Step13EntryFBefore ⟨s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow⟩ ⟨256,256,14,14⟩ [s6Step13EntryFFresh,s6Step13EntryGFresh,s6Step13EntryFvFresh,s6Step13EntryGvFresh]=
    some (s6Step13EntryGvAfter,⟨s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut⟩,(growRow 795 s6Step13EntryFFresh ++ (growRow 777 s6Step13EntryGFresh ++ (growRow 776 s6Step13EntryFvFresh ++ (growRow 775 s6Step13EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step13EntryBank_rows]
  rfl
def s6Step14EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step14EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩
def s6Step14EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892],776⟩
def s6Step14EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 887],775⟩
theorem s6Step14EntryBank_incomingDistinct : ([s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14EntryBank_outgoingOwned : rowsOwned s6Step14EntryGvAfter [s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step14EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14EntryF_Incoming : rowsOwned s6Step14EntryFBefore [s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow] 0 s6Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14EntryF_Outgoing : rowsOwned s6Step14EntryGvAfter [s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] :=
  hmrRows_owned_drop s6Step14EntryGvAfter [s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] 0 s6Step14EntryBank_outgoingOwned
theorem s6Step14EntryG_Incoming : rowsOwned s6Step14EntryGBefore [s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow] 1 s6Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14EntryG_Outgoing : rowsOwned s6Step14EntryGvAfter [s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] :=
  hmrRows_owned_drop s6Step14EntryGvAfter [s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] 1 s6Step14EntryBank_outgoingOwned
theorem s6Step14EntryFv_Incoming : rowsOwned s6Step14EntryFvBefore [s6Step14EntryFvRow,s6Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow] 2 s6Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14EntryFv_Outgoing : rowsOwned s6Step14EntryGvAfter [s6Step14EntryFvOut,s6Step14EntryGvOut] :=
  hmrRows_owned_drop s6Step14EntryGvAfter [s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] 2 s6Step14EntryBank_outgoingOwned
theorem s6Step14EntryGv_Incoming : rowsOwned s6Step14EntryGvBefore [s6Step14EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow] 3 s6Step14EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14EntryGv_Outgoing : rowsOwned s6Step14EntryGvAfter [s6Step14EntryGvOut] :=
  hmrRows_owned_drop s6Step14EntryGvAfter [s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut] 3 s6Step14EntryBank_outgoingOwned
theorem s6Step14EntryBank_rows : planWindowRowsLog s6Step14EntryFBefore [(s6Step14EntryFRow,256),(s6Step14EntryGRow,256),(s6Step14EntryFvRow,15),(s6Step14EntryGvRow,15)] [s6Step14EntryFFresh,s6Step14EntryGFresh,s6Step14EntryFvFresh,s6Step14EntryGvFresh]=
    some (s6Step14EntryGvAfter,[s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut],(growRow 795 s6Step14EntryFFresh ++ (growRow 777 s6Step14EntryGFresh ++ (growRow 776 s6Step14EntryFvFresh ++ (growRow 775 s6Step14EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step14EntryGvAfter [] []=some (s6Step14EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step14EntryGvBefore s6Step14EntryGvAfter s6Step14EntryGvAfter
    s6Step14EntryGvRow s6Step14EntryGvOut 15 s6Step14EntryGvFresh [] [] []
    (growRow 775 s6Step14EntryGvFresh) ([]) s6Step14EntryGv_Incoming s6Step14EntryGv_checked h4 s6Step14EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step14EntryFvBefore s6Step14EntryFvAfter s6Step14EntryGvAfter
    s6Step14EntryFvRow s6Step14EntryFvOut 15 s6Step14EntryFvFresh [(s6Step14EntryGvRow,15)] [s6Step14EntryGvFresh] [s6Step14EntryGvOut]
    (growRow 776 s6Step14EntryFvFresh) ((growRow 775 s6Step14EntryGvFresh ++ [])) s6Step14EntryFv_Incoming s6Step14EntryFv_checked h3 s6Step14EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step14EntryGBefore s6Step14EntryGAfter s6Step14EntryGvAfter
    s6Step14EntryGRow s6Step14EntryGOut 256 s6Step14EntryGFresh [(s6Step14EntryFvRow,15),(s6Step14EntryGvRow,15)] [s6Step14EntryFvFresh,s6Step14EntryGvFresh] [s6Step14EntryFvOut,s6Step14EntryGvOut]
    (growRow 777 s6Step14EntryGFresh) ((growRow 776 s6Step14EntryFvFresh ++ (growRow 775 s6Step14EntryGvFresh ++ []))) s6Step14EntryG_Incoming s6Step14EntryG_checked h2 s6Step14EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step14EntryFBefore s6Step14EntryFAfter s6Step14EntryGvAfter
    s6Step14EntryFRow s6Step14EntryFOut 256 s6Step14EntryFFresh [(s6Step14EntryGRow,256),(s6Step14EntryFvRow,15),(s6Step14EntryGvRow,15)] [s6Step14EntryGFresh,s6Step14EntryFvFresh,s6Step14EntryGvFresh] [s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut]
    (growRow 795 s6Step14EntryFFresh) ((growRow 777 s6Step14EntryGFresh ++ (growRow 776 s6Step14EntryFvFresh ++ (growRow 775 s6Step14EntryGvFresh ++ [])))) s6Step14EntryF_Incoming s6Step14EntryF_checked h1 s6Step14EntryF_Outgoing
  exact h0
theorem s6Step14EntryBank_checked : compileHmrBankResizeLog .entry s6Step14EntryFBefore ⟨s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow⟩ ⟨256,256,15,15⟩ [s6Step14EntryFFresh,s6Step14EntryGFresh,s6Step14EntryFvFresh,s6Step14EntryGvFresh]=
    some (s6Step14EntryGvAfter,⟨s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut⟩,(growRow 795 s6Step14EntryFFresh ++ (growRow 777 s6Step14EntryGFresh ++ (growRow 776 s6Step14EntryFvFresh ++ (growRow 775 s6Step14EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step14EntryBank_rows]
  rfl
def s6Step15EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step15EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step15EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩
def s6Step15EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887],775⟩
theorem s6Step15EntryBank_incomingDistinct : ([s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryBank_outgoingOwned : rowsOwned s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step15EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryF_Incoming : rowsOwned s6Step15EntryFBefore [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 0 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryF_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 0 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryG_Incoming : rowsOwned s6Step15EntryGBefore [s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 1 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryG_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 1 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryFv_Incoming : rowsOwned s6Step15EntryFvBefore [s6Step15EntryFvRow,s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 2 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryFv_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryFvOut,s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 2 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryGv_Incoming : rowsOwned s6Step15EntryGvBefore [s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 3 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryGv_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 3 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryBank_rows : planWindowRowsLog s6Step15EntryFBefore [(s6Step15EntryFRow,256),(s6Step15EntryGRow,256),(s6Step15EntryFvRow,16),(s6Step15EntryGvRow,16)] [s6Step15EntryFFresh,s6Step15EntryGFresh,s6Step15EntryFvFresh,s6Step15EntryGvFresh]=
    some (s6Step15EntryGvAfter,[s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut],(growRow 795 s6Step15EntryFFresh ++ (growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step15EntryGvAfter [] []=some (s6Step15EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step15EntryGvBefore s6Step15EntryGvAfter s6Step15EntryGvAfter
    s6Step15EntryGvRow s6Step15EntryGvOut 16 s6Step15EntryGvFresh [] [] []
    (growRow 775 s6Step15EntryGvFresh) ([]) s6Step15EntryGv_Incoming s6Step15EntryGv_checked h4 s6Step15EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step15EntryFvBefore s6Step15EntryFvAfter s6Step15EntryGvAfter
    s6Step15EntryFvRow s6Step15EntryFvOut 16 s6Step15EntryFvFresh [(s6Step15EntryGvRow,16)] [s6Step15EntryGvFresh] [s6Step15EntryGvOut]
    (growRow 776 s6Step15EntryFvFresh) ((growRow 775 s6Step15EntryGvFresh ++ [])) s6Step15EntryFv_Incoming s6Step15EntryFv_checked h3 s6Step15EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step15EntryGBefore s6Step15EntryGAfter s6Step15EntryGvAfter
    s6Step15EntryGRow s6Step15EntryGOut 256 s6Step15EntryGFresh [(s6Step15EntryFvRow,16),(s6Step15EntryGvRow,16)] [s6Step15EntryFvFresh,s6Step15EntryGvFresh] [s6Step15EntryFvOut,s6Step15EntryGvOut]
    (growRow 777 s6Step15EntryGFresh) ((growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ []))) s6Step15EntryG_Incoming s6Step15EntryG_checked h2 s6Step15EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step15EntryFBefore s6Step15EntryFAfter s6Step15EntryGvAfter
    s6Step15EntryFRow s6Step15EntryFOut 256 s6Step15EntryFFresh [(s6Step15EntryGRow,256),(s6Step15EntryFvRow,16),(s6Step15EntryGvRow,16)] [s6Step15EntryGFresh,s6Step15EntryFvFresh,s6Step15EntryGvFresh] [s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut]
    (growRow 795 s6Step15EntryFFresh) ((growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ [])))) s6Step15EntryF_Incoming s6Step15EntryF_checked h1 s6Step15EntryF_Outgoing
  exact h0
theorem s6Step15EntryBank_checked : compileHmrBankResizeLog .entry s6Step15EntryFBefore ⟨s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow⟩ ⟨256,256,16,16⟩ [s6Step15EntryFFresh,s6Step15EntryGFresh,s6Step15EntryFvFresh,s6Step15EntryGvFresh]=
    some (s6Step15EntryGvAfter,⟨s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut⟩,(growRow 795 s6Step15EntryFFresh ++ (growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step15EntryBank_rows]
  rfl
def s6Step498EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 915],795⟩
def s6Step498EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855],777⟩
def s6Step498EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779],776⟩
def s6Step498EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875],775⟩
theorem s6Step498EntryBank_incomingDistinct : ([s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498EntryBank_outgoingOwned : rowsOwned s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryF_Incoming : rowsOwned s6Step498EntryFBefore [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 0 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryF_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 0 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryG_Incoming : rowsOwned s6Step498EntryGBefore [s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 1 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryG_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 1 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryFv_Incoming : rowsOwned s6Step498EntryFvBefore [s6Step498EntryFvRow,s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 2 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryFv_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryFvOut,s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 2 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryGv_Incoming : rowsOwned s6Step498EntryGvBefore [s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 3 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryGv_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 3 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryBank_rows : planWindowRowsLog s6Step498EntryFBefore [(s6Step498EntryFRow,25),(s6Step498EntryGRow,25),(s6Step498EntryFvRow,266),(s6Step498EntryGvRow,266)] [s6Step498EntryFFresh,s6Step498EntryGFresh,s6Step498EntryFvFresh,s6Step498EntryGvFresh]=
    some (s6Step498EntryGvAfter,[s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut],(growRow 795 s6Step498EntryFFresh ++ (growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step498EntryGvAfter [] []=some (s6Step498EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step498EntryGvBefore s6Step498EntryGvAfter s6Step498EntryGvAfter
    s6Step498EntryGvRow s6Step498EntryGvOut 266 s6Step498EntryGvFresh [] [] []
    (growRow 775 s6Step498EntryGvFresh) ([]) s6Step498EntryGv_Incoming s6Step498EntryGv_checked h4 s6Step498EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step498EntryFvBefore s6Step498EntryFvAfter s6Step498EntryGvAfter
    s6Step498EntryFvRow s6Step498EntryFvOut 266 s6Step498EntryFvFresh [(s6Step498EntryGvRow,266)] [s6Step498EntryGvFresh] [s6Step498EntryGvOut]
    (growRow 776 s6Step498EntryFvFresh) ((growRow 775 s6Step498EntryGvFresh ++ [])) s6Step498EntryFv_Incoming s6Step498EntryFv_checked h3 s6Step498EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step498EntryGBefore s6Step498EntryGAfter s6Step498EntryGvAfter
    s6Step498EntryGRow s6Step498EntryGOut 25 s6Step498EntryGFresh [(s6Step498EntryFvRow,266),(s6Step498EntryGvRow,266)] [s6Step498EntryFvFresh,s6Step498EntryGvFresh] [s6Step498EntryFvOut,s6Step498EntryGvOut]
    (growRow 777 s6Step498EntryGFresh) ((growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ []))) s6Step498EntryG_Incoming s6Step498EntryG_checked h2 s6Step498EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step498EntryFBefore s6Step498EntryFAfter s6Step498EntryGvAfter
    s6Step498EntryFRow s6Step498EntryFOut 25 s6Step498EntryFFresh [(s6Step498EntryGRow,25),(s6Step498EntryFvRow,266),(s6Step498EntryGvRow,266)] [s6Step498EntryGFresh,s6Step498EntryFvFresh,s6Step498EntryGvFresh] [s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut]
    (growRow 795 s6Step498EntryFFresh) ((growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ [])))) s6Step498EntryF_Incoming s6Step498EntryF_checked h1 s6Step498EntryF_Outgoing
  exact h0
theorem s6Step498EntryBank_checked : compileHmrBankResizeLog .entry s6Step498EntryFBefore ⟨s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow⟩ ⟨25,25,266,266⟩ [s6Step498EntryFFresh,s6Step498EntryGFresh,s6Step498EntryFvFresh,s6Step498EntryGvFresh]=
    some (s6Step498EntryGvAfter,⟨s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut⟩,(growRow 795 s6Step498EntryFFresh ++ (growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step498EntryBank_rows]
  rfl
end ECDSAAdd.Arithmetic.Paper935
