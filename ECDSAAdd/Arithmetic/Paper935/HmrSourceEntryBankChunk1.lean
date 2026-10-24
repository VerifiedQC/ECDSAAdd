import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk1
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step16EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step16EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩
def s2Step16EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780],771⟩
theorem s2Step16EntryBank_incomingDistinct : ([s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16EntryBank_outgoingOwned : rowsOwned s2Step16EntryGvAfter [s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step16EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16EntryF_Incoming : rowsOwned s2Step16EntryFBefore [s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow] 0 s2Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16EntryF_Outgoing : rowsOwned s2Step16EntryGvAfter [s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] :=
  hmrRows_owned_drop s2Step16EntryGvAfter [s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] 0 s2Step16EntryBank_outgoingOwned
theorem s2Step16EntryG_Incoming : rowsOwned s2Step16EntryGBefore [s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow] 1 s2Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16EntryG_Outgoing : rowsOwned s2Step16EntryGvAfter [s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] :=
  hmrRows_owned_drop s2Step16EntryGvAfter [s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] 1 s2Step16EntryBank_outgoingOwned
theorem s2Step16EntryFv_Incoming : rowsOwned s2Step16EntryFvBefore [s2Step16EntryFvRow,s2Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow] 2 s2Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16EntryFv_Outgoing : rowsOwned s2Step16EntryGvAfter [s2Step16EntryFvOut,s2Step16EntryGvOut] :=
  hmrRows_owned_drop s2Step16EntryGvAfter [s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] 2 s2Step16EntryBank_outgoingOwned
theorem s2Step16EntryGv_Incoming : rowsOwned s2Step16EntryGvBefore [s2Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow] 3 s2Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16EntryGv_Outgoing : rowsOwned s2Step16EntryGvAfter [s2Step16EntryGvOut] :=
  hmrRows_owned_drop s2Step16EntryGvAfter [s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut] 3 s2Step16EntryBank_outgoingOwned
theorem s2Step16EntryBank_rows : planWindowRowsLog s2Step16EntryFBefore [(s2Step16EntryFRow,256),(s2Step16EntryGRow,256),(s2Step16EntryFvRow,17),(s2Step16EntryGvRow,17)] [s2Step16EntryFFresh,s2Step16EntryGFresh,s2Step16EntryFvFresh,s2Step16EntryGvFresh]=
    some (s2Step16EntryGvAfter,[s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut],(growRow 768 s2Step16EntryFFresh ++ (growRow 769 s2Step16EntryGFresh ++ (growRow 770 s2Step16EntryFvFresh ++ (growRow 771 s2Step16EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step16EntryGvAfter [] []=some (s2Step16EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step16EntryGvBefore s2Step16EntryGvAfter s2Step16EntryGvAfter
    s2Step16EntryGvRow s2Step16EntryGvOut 17 s2Step16EntryGvFresh [] [] []
    (growRow 771 s2Step16EntryGvFresh) ([]) s2Step16EntryGv_Incoming s2Step16EntryGv_checked h4 s2Step16EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step16EntryFvBefore s2Step16EntryFvAfter s2Step16EntryGvAfter
    s2Step16EntryFvRow s2Step16EntryFvOut 17 s2Step16EntryFvFresh [(s2Step16EntryGvRow,17)] [s2Step16EntryGvFresh] [s2Step16EntryGvOut]
    (growRow 770 s2Step16EntryFvFresh) ((growRow 771 s2Step16EntryGvFresh ++ [])) s2Step16EntryFv_Incoming s2Step16EntryFv_checked h3 s2Step16EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step16EntryGBefore s2Step16EntryGAfter s2Step16EntryGvAfter
    s2Step16EntryGRow s2Step16EntryGOut 256 s2Step16EntryGFresh [(s2Step16EntryFvRow,17),(s2Step16EntryGvRow,17)] [s2Step16EntryFvFresh,s2Step16EntryGvFresh] [s2Step16EntryFvOut,s2Step16EntryGvOut]
    (growRow 769 s2Step16EntryGFresh) ((growRow 770 s2Step16EntryFvFresh ++ (growRow 771 s2Step16EntryGvFresh ++ []))) s2Step16EntryG_Incoming s2Step16EntryG_checked h2 s2Step16EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step16EntryFBefore s2Step16EntryFAfter s2Step16EntryGvAfter
    s2Step16EntryFRow s2Step16EntryFOut 256 s2Step16EntryFFresh [(s2Step16EntryGRow,256),(s2Step16EntryFvRow,17),(s2Step16EntryGvRow,17)] [s2Step16EntryGFresh,s2Step16EntryFvFresh,s2Step16EntryGvFresh] [s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut]
    (growRow 768 s2Step16EntryFFresh) ((growRow 769 s2Step16EntryGFresh ++ (growRow 770 s2Step16EntryFvFresh ++ (growRow 771 s2Step16EntryGvFresh ++ [])))) s2Step16EntryF_Incoming s2Step16EntryF_checked h1 s2Step16EntryF_Outgoing
  exact h0
theorem s2Step16EntryBank_checked : compileHmrBankResizeLog .entry s2Step16EntryFBefore ⟨s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow⟩ ⟨256,256,17,17⟩ [s2Step16EntryFFresh,s2Step16EntryGFresh,s2Step16EntryFvFresh,s2Step16EntryGvFresh]=
    some (s2Step16EntryGvAfter,⟨s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut⟩,(growRow 768 s2Step16EntryFFresh ++ (growRow 769 s2Step16EntryGFresh ++ (growRow 770 s2Step16EntryFvFresh ++ (growRow 771 s2Step16EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step16EntryBank_rows]
  rfl
def s2Step17EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step17EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step17EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩
def s2Step17EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780],771⟩
theorem s2Step17EntryBank_incomingDistinct : ([s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17EntryBank_outgoingOwned : rowsOwned s2Step17EntryGvAfter [s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step17EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17EntryF_Incoming : rowsOwned s2Step17EntryFBefore [s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow] 0 s2Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17EntryF_Outgoing : rowsOwned s2Step17EntryGvAfter [s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] :=
  hmrRows_owned_drop s2Step17EntryGvAfter [s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] 0 s2Step17EntryBank_outgoingOwned
theorem s2Step17EntryG_Incoming : rowsOwned s2Step17EntryGBefore [s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow] 1 s2Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17EntryG_Outgoing : rowsOwned s2Step17EntryGvAfter [s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] :=
  hmrRows_owned_drop s2Step17EntryGvAfter [s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] 1 s2Step17EntryBank_outgoingOwned
theorem s2Step17EntryFv_Incoming : rowsOwned s2Step17EntryFvBefore [s2Step17EntryFvRow,s2Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow] 2 s2Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17EntryFv_Outgoing : rowsOwned s2Step17EntryGvAfter [s2Step17EntryFvOut,s2Step17EntryGvOut] :=
  hmrRows_owned_drop s2Step17EntryGvAfter [s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] 2 s2Step17EntryBank_outgoingOwned
theorem s2Step17EntryGv_Incoming : rowsOwned s2Step17EntryGvBefore [s2Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow] 3 s2Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17EntryGv_Outgoing : rowsOwned s2Step17EntryGvAfter [s2Step17EntryGvOut] :=
  hmrRows_owned_drop s2Step17EntryGvAfter [s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut] 3 s2Step17EntryBank_outgoingOwned
theorem s2Step17EntryBank_rows : planWindowRowsLog s2Step17EntryFBefore [(s2Step17EntryFRow,256),(s2Step17EntryGRow,256),(s2Step17EntryFvRow,18),(s2Step17EntryGvRow,18)] [s2Step17EntryFFresh,s2Step17EntryGFresh,s2Step17EntryFvFresh,s2Step17EntryGvFresh]=
    some (s2Step17EntryGvAfter,[s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut],(growRow 768 s2Step17EntryFFresh ++ (growRow 769 s2Step17EntryGFresh ++ (growRow 770 s2Step17EntryFvFresh ++ (growRow 771 s2Step17EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step17EntryGvAfter [] []=some (s2Step17EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step17EntryGvBefore s2Step17EntryGvAfter s2Step17EntryGvAfter
    s2Step17EntryGvRow s2Step17EntryGvOut 18 s2Step17EntryGvFresh [] [] []
    (growRow 771 s2Step17EntryGvFresh) ([]) s2Step17EntryGv_Incoming s2Step17EntryGv_checked h4 s2Step17EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step17EntryFvBefore s2Step17EntryFvAfter s2Step17EntryGvAfter
    s2Step17EntryFvRow s2Step17EntryFvOut 18 s2Step17EntryFvFresh [(s2Step17EntryGvRow,18)] [s2Step17EntryGvFresh] [s2Step17EntryGvOut]
    (growRow 770 s2Step17EntryFvFresh) ((growRow 771 s2Step17EntryGvFresh ++ [])) s2Step17EntryFv_Incoming s2Step17EntryFv_checked h3 s2Step17EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step17EntryGBefore s2Step17EntryGAfter s2Step17EntryGvAfter
    s2Step17EntryGRow s2Step17EntryGOut 256 s2Step17EntryGFresh [(s2Step17EntryFvRow,18),(s2Step17EntryGvRow,18)] [s2Step17EntryFvFresh,s2Step17EntryGvFresh] [s2Step17EntryFvOut,s2Step17EntryGvOut]
    (growRow 769 s2Step17EntryGFresh) ((growRow 770 s2Step17EntryFvFresh ++ (growRow 771 s2Step17EntryGvFresh ++ []))) s2Step17EntryG_Incoming s2Step17EntryG_checked h2 s2Step17EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step17EntryFBefore s2Step17EntryFAfter s2Step17EntryGvAfter
    s2Step17EntryFRow s2Step17EntryFOut 256 s2Step17EntryFFresh [(s2Step17EntryGRow,256),(s2Step17EntryFvRow,18),(s2Step17EntryGvRow,18)] [s2Step17EntryGFresh,s2Step17EntryFvFresh,s2Step17EntryGvFresh] [s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut]
    (growRow 768 s2Step17EntryFFresh) ((growRow 769 s2Step17EntryGFresh ++ (growRow 770 s2Step17EntryFvFresh ++ (growRow 771 s2Step17EntryGvFresh ++ [])))) s2Step17EntryF_Incoming s2Step17EntryF_checked h1 s2Step17EntryF_Outgoing
  exact h0
theorem s2Step17EntryBank_checked : compileHmrBankResizeLog .entry s2Step17EntryFBefore ⟨s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow⟩ ⟨256,256,18,18⟩ [s2Step17EntryFFresh,s2Step17EntryGFresh,s2Step17EntryFvFresh,s2Step17EntryGvFresh]=
    some (s2Step17EntryGvAfter,⟨s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut⟩,(growRow 768 s2Step17EntryFFresh ++ (growRow 769 s2Step17EntryGFresh ++ (growRow 770 s2Step17EntryFvFresh ++ (growRow 771 s2Step17EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step17EntryBank_rows]
  rfl
def s2Step18EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step18EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step18EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩
def s2Step18EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780],771⟩
theorem s2Step18EntryBank_incomingDistinct : ([s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18EntryBank_outgoingOwned : rowsOwned s2Step18EntryGvAfter [s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step18EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18EntryF_Incoming : rowsOwned s2Step18EntryFBefore [s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow] 0 s2Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18EntryF_Outgoing : rowsOwned s2Step18EntryGvAfter [s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] :=
  hmrRows_owned_drop s2Step18EntryGvAfter [s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] 0 s2Step18EntryBank_outgoingOwned
theorem s2Step18EntryG_Incoming : rowsOwned s2Step18EntryGBefore [s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow] 1 s2Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18EntryG_Outgoing : rowsOwned s2Step18EntryGvAfter [s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] :=
  hmrRows_owned_drop s2Step18EntryGvAfter [s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] 1 s2Step18EntryBank_outgoingOwned
theorem s2Step18EntryFv_Incoming : rowsOwned s2Step18EntryFvBefore [s2Step18EntryFvRow,s2Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow] 2 s2Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18EntryFv_Outgoing : rowsOwned s2Step18EntryGvAfter [s2Step18EntryFvOut,s2Step18EntryGvOut] :=
  hmrRows_owned_drop s2Step18EntryGvAfter [s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] 2 s2Step18EntryBank_outgoingOwned
theorem s2Step18EntryGv_Incoming : rowsOwned s2Step18EntryGvBefore [s2Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow] 3 s2Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18EntryGv_Outgoing : rowsOwned s2Step18EntryGvAfter [s2Step18EntryGvOut] :=
  hmrRows_owned_drop s2Step18EntryGvAfter [s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut] 3 s2Step18EntryBank_outgoingOwned
theorem s2Step18EntryBank_rows : planWindowRowsLog s2Step18EntryFBefore [(s2Step18EntryFRow,256),(s2Step18EntryGRow,256),(s2Step18EntryFvRow,19),(s2Step18EntryGvRow,19)] [s2Step18EntryFFresh,s2Step18EntryGFresh,s2Step18EntryFvFresh,s2Step18EntryGvFresh]=
    some (s2Step18EntryGvAfter,[s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut],(growRow 768 s2Step18EntryFFresh ++ (growRow 769 s2Step18EntryGFresh ++ (growRow 770 s2Step18EntryFvFresh ++ (growRow 771 s2Step18EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step18EntryGvAfter [] []=some (s2Step18EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step18EntryGvBefore s2Step18EntryGvAfter s2Step18EntryGvAfter
    s2Step18EntryGvRow s2Step18EntryGvOut 19 s2Step18EntryGvFresh [] [] []
    (growRow 771 s2Step18EntryGvFresh) ([]) s2Step18EntryGv_Incoming s2Step18EntryGv_checked h4 s2Step18EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step18EntryFvBefore s2Step18EntryFvAfter s2Step18EntryGvAfter
    s2Step18EntryFvRow s2Step18EntryFvOut 19 s2Step18EntryFvFresh [(s2Step18EntryGvRow,19)] [s2Step18EntryGvFresh] [s2Step18EntryGvOut]
    (growRow 770 s2Step18EntryFvFresh) ((growRow 771 s2Step18EntryGvFresh ++ [])) s2Step18EntryFv_Incoming s2Step18EntryFv_checked h3 s2Step18EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step18EntryGBefore s2Step18EntryGAfter s2Step18EntryGvAfter
    s2Step18EntryGRow s2Step18EntryGOut 256 s2Step18EntryGFresh [(s2Step18EntryFvRow,19),(s2Step18EntryGvRow,19)] [s2Step18EntryFvFresh,s2Step18EntryGvFresh] [s2Step18EntryFvOut,s2Step18EntryGvOut]
    (growRow 769 s2Step18EntryGFresh) ((growRow 770 s2Step18EntryFvFresh ++ (growRow 771 s2Step18EntryGvFresh ++ []))) s2Step18EntryG_Incoming s2Step18EntryG_checked h2 s2Step18EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step18EntryFBefore s2Step18EntryFAfter s2Step18EntryGvAfter
    s2Step18EntryFRow s2Step18EntryFOut 256 s2Step18EntryFFresh [(s2Step18EntryGRow,256),(s2Step18EntryFvRow,19),(s2Step18EntryGvRow,19)] [s2Step18EntryGFresh,s2Step18EntryFvFresh,s2Step18EntryGvFresh] [s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut]
    (growRow 768 s2Step18EntryFFresh) ((growRow 769 s2Step18EntryGFresh ++ (growRow 770 s2Step18EntryFvFresh ++ (growRow 771 s2Step18EntryGvFresh ++ [])))) s2Step18EntryF_Incoming s2Step18EntryF_checked h1 s2Step18EntryF_Outgoing
  exact h0
theorem s2Step18EntryBank_checked : compileHmrBankResizeLog .entry s2Step18EntryFBefore ⟨s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow⟩ ⟨256,256,19,19⟩ [s2Step18EntryFFresh,s2Step18EntryGFresh,s2Step18EntryFvFresh,s2Step18EntryGvFresh]=
    some (s2Step18EntryGvAfter,⟨s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut⟩,(growRow 768 s2Step18EntryFFresh ++ (growRow 769 s2Step18EntryGFresh ++ (growRow 770 s2Step18EntryFvFresh ++ (growRow 771 s2Step18EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step18EntryBank_rows]
  rfl
def s2Step19EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step19EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step19EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩
def s2Step19EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780],771⟩
theorem s2Step19EntryBank_incomingDistinct : ([s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19EntryBank_outgoingOwned : rowsOwned s2Step19EntryGvAfter [s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step19EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19EntryF_Incoming : rowsOwned s2Step19EntryFBefore [s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow] 0 s2Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19EntryF_Outgoing : rowsOwned s2Step19EntryGvAfter [s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] :=
  hmrRows_owned_drop s2Step19EntryGvAfter [s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] 0 s2Step19EntryBank_outgoingOwned
theorem s2Step19EntryG_Incoming : rowsOwned s2Step19EntryGBefore [s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow] 1 s2Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19EntryG_Outgoing : rowsOwned s2Step19EntryGvAfter [s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] :=
  hmrRows_owned_drop s2Step19EntryGvAfter [s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] 1 s2Step19EntryBank_outgoingOwned
theorem s2Step19EntryFv_Incoming : rowsOwned s2Step19EntryFvBefore [s2Step19EntryFvRow,s2Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow] 2 s2Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19EntryFv_Outgoing : rowsOwned s2Step19EntryGvAfter [s2Step19EntryFvOut,s2Step19EntryGvOut] :=
  hmrRows_owned_drop s2Step19EntryGvAfter [s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] 2 s2Step19EntryBank_outgoingOwned
theorem s2Step19EntryGv_Incoming : rowsOwned s2Step19EntryGvBefore [s2Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow] 3 s2Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19EntryGv_Outgoing : rowsOwned s2Step19EntryGvAfter [s2Step19EntryGvOut] :=
  hmrRows_owned_drop s2Step19EntryGvAfter [s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut] 3 s2Step19EntryBank_outgoingOwned
theorem s2Step19EntryBank_rows : planWindowRowsLog s2Step19EntryFBefore [(s2Step19EntryFRow,256),(s2Step19EntryGRow,256),(s2Step19EntryFvRow,20),(s2Step19EntryGvRow,20)] [s2Step19EntryFFresh,s2Step19EntryGFresh,s2Step19EntryFvFresh,s2Step19EntryGvFresh]=
    some (s2Step19EntryGvAfter,[s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut],(growRow 768 s2Step19EntryFFresh ++ (growRow 769 s2Step19EntryGFresh ++ (growRow 770 s2Step19EntryFvFresh ++ (growRow 771 s2Step19EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step19EntryGvAfter [] []=some (s2Step19EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step19EntryGvBefore s2Step19EntryGvAfter s2Step19EntryGvAfter
    s2Step19EntryGvRow s2Step19EntryGvOut 20 s2Step19EntryGvFresh [] [] []
    (growRow 771 s2Step19EntryGvFresh) ([]) s2Step19EntryGv_Incoming s2Step19EntryGv_checked h4 s2Step19EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step19EntryFvBefore s2Step19EntryFvAfter s2Step19EntryGvAfter
    s2Step19EntryFvRow s2Step19EntryFvOut 20 s2Step19EntryFvFresh [(s2Step19EntryGvRow,20)] [s2Step19EntryGvFresh] [s2Step19EntryGvOut]
    (growRow 770 s2Step19EntryFvFresh) ((growRow 771 s2Step19EntryGvFresh ++ [])) s2Step19EntryFv_Incoming s2Step19EntryFv_checked h3 s2Step19EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step19EntryGBefore s2Step19EntryGAfter s2Step19EntryGvAfter
    s2Step19EntryGRow s2Step19EntryGOut 256 s2Step19EntryGFresh [(s2Step19EntryFvRow,20),(s2Step19EntryGvRow,20)] [s2Step19EntryFvFresh,s2Step19EntryGvFresh] [s2Step19EntryFvOut,s2Step19EntryGvOut]
    (growRow 769 s2Step19EntryGFresh) ((growRow 770 s2Step19EntryFvFresh ++ (growRow 771 s2Step19EntryGvFresh ++ []))) s2Step19EntryG_Incoming s2Step19EntryG_checked h2 s2Step19EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step19EntryFBefore s2Step19EntryFAfter s2Step19EntryGvAfter
    s2Step19EntryFRow s2Step19EntryFOut 256 s2Step19EntryFFresh [(s2Step19EntryGRow,256),(s2Step19EntryFvRow,20),(s2Step19EntryGvRow,20)] [s2Step19EntryGFresh,s2Step19EntryFvFresh,s2Step19EntryGvFresh] [s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut]
    (growRow 768 s2Step19EntryFFresh) ((growRow 769 s2Step19EntryGFresh ++ (growRow 770 s2Step19EntryFvFresh ++ (growRow 771 s2Step19EntryGvFresh ++ [])))) s2Step19EntryF_Incoming s2Step19EntryF_checked h1 s2Step19EntryF_Outgoing
  exact h0
theorem s2Step19EntryBank_checked : compileHmrBankResizeLog .entry s2Step19EntryFBefore ⟨s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow⟩ ⟨256,256,20,20⟩ [s2Step19EntryFFresh,s2Step19EntryGFresh,s2Step19EntryFvFresh,s2Step19EntryGvFresh]=
    some (s2Step19EntryGvAfter,⟨s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut⟩,(growRow 768 s2Step19EntryFFresh ++ (growRow 769 s2Step19EntryGFresh ++ (growRow 770 s2Step19EntryFvFresh ++ (growRow 771 s2Step19EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step19EntryBank_rows]
  rfl
def s2Step20EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step20EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step20EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩
def s2Step20EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780],771⟩
theorem s2Step20EntryBank_incomingDistinct : ([s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20EntryBank_outgoingOwned : rowsOwned s2Step20EntryGvAfter [s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step20EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20EntryF_Incoming : rowsOwned s2Step20EntryFBefore [s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow] 0 s2Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20EntryF_Outgoing : rowsOwned s2Step20EntryGvAfter [s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] :=
  hmrRows_owned_drop s2Step20EntryGvAfter [s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] 0 s2Step20EntryBank_outgoingOwned
theorem s2Step20EntryG_Incoming : rowsOwned s2Step20EntryGBefore [s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow] 1 s2Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20EntryG_Outgoing : rowsOwned s2Step20EntryGvAfter [s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] :=
  hmrRows_owned_drop s2Step20EntryGvAfter [s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] 1 s2Step20EntryBank_outgoingOwned
theorem s2Step20EntryFv_Incoming : rowsOwned s2Step20EntryFvBefore [s2Step20EntryFvRow,s2Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow] 2 s2Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20EntryFv_Outgoing : rowsOwned s2Step20EntryGvAfter [s2Step20EntryFvOut,s2Step20EntryGvOut] :=
  hmrRows_owned_drop s2Step20EntryGvAfter [s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] 2 s2Step20EntryBank_outgoingOwned
theorem s2Step20EntryGv_Incoming : rowsOwned s2Step20EntryGvBefore [s2Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow] 3 s2Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20EntryGv_Outgoing : rowsOwned s2Step20EntryGvAfter [s2Step20EntryGvOut] :=
  hmrRows_owned_drop s2Step20EntryGvAfter [s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut] 3 s2Step20EntryBank_outgoingOwned
theorem s2Step20EntryBank_rows : planWindowRowsLog s2Step20EntryFBefore [(s2Step20EntryFRow,256),(s2Step20EntryGRow,256),(s2Step20EntryFvRow,21),(s2Step20EntryGvRow,21)] [s2Step20EntryFFresh,s2Step20EntryGFresh,s2Step20EntryFvFresh,s2Step20EntryGvFresh]=
    some (s2Step20EntryGvAfter,[s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut],(growRow 768 s2Step20EntryFFresh ++ (growRow 769 s2Step20EntryGFresh ++ (growRow 770 s2Step20EntryFvFresh ++ (growRow 771 s2Step20EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step20EntryGvAfter [] []=some (s2Step20EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step20EntryGvBefore s2Step20EntryGvAfter s2Step20EntryGvAfter
    s2Step20EntryGvRow s2Step20EntryGvOut 21 s2Step20EntryGvFresh [] [] []
    (growRow 771 s2Step20EntryGvFresh) ([]) s2Step20EntryGv_Incoming s2Step20EntryGv_checked h4 s2Step20EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step20EntryFvBefore s2Step20EntryFvAfter s2Step20EntryGvAfter
    s2Step20EntryFvRow s2Step20EntryFvOut 21 s2Step20EntryFvFresh [(s2Step20EntryGvRow,21)] [s2Step20EntryGvFresh] [s2Step20EntryGvOut]
    (growRow 770 s2Step20EntryFvFresh) ((growRow 771 s2Step20EntryGvFresh ++ [])) s2Step20EntryFv_Incoming s2Step20EntryFv_checked h3 s2Step20EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step20EntryGBefore s2Step20EntryGAfter s2Step20EntryGvAfter
    s2Step20EntryGRow s2Step20EntryGOut 256 s2Step20EntryGFresh [(s2Step20EntryFvRow,21),(s2Step20EntryGvRow,21)] [s2Step20EntryFvFresh,s2Step20EntryGvFresh] [s2Step20EntryFvOut,s2Step20EntryGvOut]
    (growRow 769 s2Step20EntryGFresh) ((growRow 770 s2Step20EntryFvFresh ++ (growRow 771 s2Step20EntryGvFresh ++ []))) s2Step20EntryG_Incoming s2Step20EntryG_checked h2 s2Step20EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step20EntryFBefore s2Step20EntryFAfter s2Step20EntryGvAfter
    s2Step20EntryFRow s2Step20EntryFOut 256 s2Step20EntryFFresh [(s2Step20EntryGRow,256),(s2Step20EntryFvRow,21),(s2Step20EntryGvRow,21)] [s2Step20EntryGFresh,s2Step20EntryFvFresh,s2Step20EntryGvFresh] [s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut]
    (growRow 768 s2Step20EntryFFresh) ((growRow 769 s2Step20EntryGFresh ++ (growRow 770 s2Step20EntryFvFresh ++ (growRow 771 s2Step20EntryGvFresh ++ [])))) s2Step20EntryF_Incoming s2Step20EntryF_checked h1 s2Step20EntryF_Outgoing
  exact h0
theorem s2Step20EntryBank_checked : compileHmrBankResizeLog .entry s2Step20EntryFBefore ⟨s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow⟩ ⟨256,256,21,21⟩ [s2Step20EntryFFresh,s2Step20EntryGFresh,s2Step20EntryFvFresh,s2Step20EntryGvFresh]=
    some (s2Step20EntryGvAfter,⟨s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut⟩,(growRow 768 s2Step20EntryFFresh ++ (growRow 769 s2Step20EntryGFresh ++ (growRow 770 s2Step20EntryFvFresh ++ (growRow 771 s2Step20EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step20EntryBank_rows]
  rfl
def s2Step21EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step21EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step21EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩
def s2Step21EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780],771⟩
theorem s2Step21EntryBank_incomingDistinct : ([s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21EntryBank_outgoingOwned : rowsOwned s2Step21EntryGvAfter [s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step21EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21EntryF_Incoming : rowsOwned s2Step21EntryFBefore [s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow] 0 s2Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21EntryF_Outgoing : rowsOwned s2Step21EntryGvAfter [s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] :=
  hmrRows_owned_drop s2Step21EntryGvAfter [s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] 0 s2Step21EntryBank_outgoingOwned
theorem s2Step21EntryG_Incoming : rowsOwned s2Step21EntryGBefore [s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow] 1 s2Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21EntryG_Outgoing : rowsOwned s2Step21EntryGvAfter [s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] :=
  hmrRows_owned_drop s2Step21EntryGvAfter [s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] 1 s2Step21EntryBank_outgoingOwned
theorem s2Step21EntryFv_Incoming : rowsOwned s2Step21EntryFvBefore [s2Step21EntryFvRow,s2Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow] 2 s2Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21EntryFv_Outgoing : rowsOwned s2Step21EntryGvAfter [s2Step21EntryFvOut,s2Step21EntryGvOut] :=
  hmrRows_owned_drop s2Step21EntryGvAfter [s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] 2 s2Step21EntryBank_outgoingOwned
theorem s2Step21EntryGv_Incoming : rowsOwned s2Step21EntryGvBefore [s2Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow] 3 s2Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21EntryGv_Outgoing : rowsOwned s2Step21EntryGvAfter [s2Step21EntryGvOut] :=
  hmrRows_owned_drop s2Step21EntryGvAfter [s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut] 3 s2Step21EntryBank_outgoingOwned
theorem s2Step21EntryBank_rows : planWindowRowsLog s2Step21EntryFBefore [(s2Step21EntryFRow,256),(s2Step21EntryGRow,256),(s2Step21EntryFvRow,22),(s2Step21EntryGvRow,22)] [s2Step21EntryFFresh,s2Step21EntryGFresh,s2Step21EntryFvFresh,s2Step21EntryGvFresh]=
    some (s2Step21EntryGvAfter,[s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut],(growRow 768 s2Step21EntryFFresh ++ (growRow 769 s2Step21EntryGFresh ++ (growRow 770 s2Step21EntryFvFresh ++ (growRow 771 s2Step21EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step21EntryGvAfter [] []=some (s2Step21EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step21EntryGvBefore s2Step21EntryGvAfter s2Step21EntryGvAfter
    s2Step21EntryGvRow s2Step21EntryGvOut 22 s2Step21EntryGvFresh [] [] []
    (growRow 771 s2Step21EntryGvFresh) ([]) s2Step21EntryGv_Incoming s2Step21EntryGv_checked h4 s2Step21EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step21EntryFvBefore s2Step21EntryFvAfter s2Step21EntryGvAfter
    s2Step21EntryFvRow s2Step21EntryFvOut 22 s2Step21EntryFvFresh [(s2Step21EntryGvRow,22)] [s2Step21EntryGvFresh] [s2Step21EntryGvOut]
    (growRow 770 s2Step21EntryFvFresh) ((growRow 771 s2Step21EntryGvFresh ++ [])) s2Step21EntryFv_Incoming s2Step21EntryFv_checked h3 s2Step21EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step21EntryGBefore s2Step21EntryGAfter s2Step21EntryGvAfter
    s2Step21EntryGRow s2Step21EntryGOut 256 s2Step21EntryGFresh [(s2Step21EntryFvRow,22),(s2Step21EntryGvRow,22)] [s2Step21EntryFvFresh,s2Step21EntryGvFresh] [s2Step21EntryFvOut,s2Step21EntryGvOut]
    (growRow 769 s2Step21EntryGFresh) ((growRow 770 s2Step21EntryFvFresh ++ (growRow 771 s2Step21EntryGvFresh ++ []))) s2Step21EntryG_Incoming s2Step21EntryG_checked h2 s2Step21EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step21EntryFBefore s2Step21EntryFAfter s2Step21EntryGvAfter
    s2Step21EntryFRow s2Step21EntryFOut 256 s2Step21EntryFFresh [(s2Step21EntryGRow,256),(s2Step21EntryFvRow,22),(s2Step21EntryGvRow,22)] [s2Step21EntryGFresh,s2Step21EntryFvFresh,s2Step21EntryGvFresh] [s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut]
    (growRow 768 s2Step21EntryFFresh) ((growRow 769 s2Step21EntryGFresh ++ (growRow 770 s2Step21EntryFvFresh ++ (growRow 771 s2Step21EntryGvFresh ++ [])))) s2Step21EntryF_Incoming s2Step21EntryF_checked h1 s2Step21EntryF_Outgoing
  exact h0
theorem s2Step21EntryBank_checked : compileHmrBankResizeLog .entry s2Step21EntryFBefore ⟨s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow⟩ ⟨256,256,22,22⟩ [s2Step21EntryFFresh,s2Step21EntryGFresh,s2Step21EntryFvFresh,s2Step21EntryGvFresh]=
    some (s2Step21EntryGvAfter,⟨s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut⟩,(growRow 768 s2Step21EntryFFresh ++ (growRow 769 s2Step21EntryGFresh ++ (growRow 770 s2Step21EntryFvFresh ++ (growRow 771 s2Step21EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step21EntryBank_rows]
  rfl
def s2Step22EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step22EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step22EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩
def s2Step22EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780],771⟩
theorem s2Step22EntryBank_incomingDistinct : ([s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22EntryBank_outgoingOwned : rowsOwned s2Step22EntryGvAfter [s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step22EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22EntryF_Incoming : rowsOwned s2Step22EntryFBefore [s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow] 0 s2Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22EntryF_Outgoing : rowsOwned s2Step22EntryGvAfter [s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] :=
  hmrRows_owned_drop s2Step22EntryGvAfter [s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] 0 s2Step22EntryBank_outgoingOwned
theorem s2Step22EntryG_Incoming : rowsOwned s2Step22EntryGBefore [s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow] 1 s2Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22EntryG_Outgoing : rowsOwned s2Step22EntryGvAfter [s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] :=
  hmrRows_owned_drop s2Step22EntryGvAfter [s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] 1 s2Step22EntryBank_outgoingOwned
theorem s2Step22EntryFv_Incoming : rowsOwned s2Step22EntryFvBefore [s2Step22EntryFvRow,s2Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow] 2 s2Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22EntryFv_Outgoing : rowsOwned s2Step22EntryGvAfter [s2Step22EntryFvOut,s2Step22EntryGvOut] :=
  hmrRows_owned_drop s2Step22EntryGvAfter [s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] 2 s2Step22EntryBank_outgoingOwned
theorem s2Step22EntryGv_Incoming : rowsOwned s2Step22EntryGvBefore [s2Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow] 3 s2Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22EntryGv_Outgoing : rowsOwned s2Step22EntryGvAfter [s2Step22EntryGvOut] :=
  hmrRows_owned_drop s2Step22EntryGvAfter [s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut] 3 s2Step22EntryBank_outgoingOwned
theorem s2Step22EntryBank_rows : planWindowRowsLog s2Step22EntryFBefore [(s2Step22EntryFRow,256),(s2Step22EntryGRow,256),(s2Step22EntryFvRow,23),(s2Step22EntryGvRow,23)] [s2Step22EntryFFresh,s2Step22EntryGFresh,s2Step22EntryFvFresh,s2Step22EntryGvFresh]=
    some (s2Step22EntryGvAfter,[s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut],(growRow 768 s2Step22EntryFFresh ++ (growRow 769 s2Step22EntryGFresh ++ (growRow 770 s2Step22EntryFvFresh ++ (growRow 771 s2Step22EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step22EntryGvAfter [] []=some (s2Step22EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step22EntryGvBefore s2Step22EntryGvAfter s2Step22EntryGvAfter
    s2Step22EntryGvRow s2Step22EntryGvOut 23 s2Step22EntryGvFresh [] [] []
    (growRow 771 s2Step22EntryGvFresh) ([]) s2Step22EntryGv_Incoming s2Step22EntryGv_checked h4 s2Step22EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step22EntryFvBefore s2Step22EntryFvAfter s2Step22EntryGvAfter
    s2Step22EntryFvRow s2Step22EntryFvOut 23 s2Step22EntryFvFresh [(s2Step22EntryGvRow,23)] [s2Step22EntryGvFresh] [s2Step22EntryGvOut]
    (growRow 770 s2Step22EntryFvFresh) ((growRow 771 s2Step22EntryGvFresh ++ [])) s2Step22EntryFv_Incoming s2Step22EntryFv_checked h3 s2Step22EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step22EntryGBefore s2Step22EntryGAfter s2Step22EntryGvAfter
    s2Step22EntryGRow s2Step22EntryGOut 256 s2Step22EntryGFresh [(s2Step22EntryFvRow,23),(s2Step22EntryGvRow,23)] [s2Step22EntryFvFresh,s2Step22EntryGvFresh] [s2Step22EntryFvOut,s2Step22EntryGvOut]
    (growRow 769 s2Step22EntryGFresh) ((growRow 770 s2Step22EntryFvFresh ++ (growRow 771 s2Step22EntryGvFresh ++ []))) s2Step22EntryG_Incoming s2Step22EntryG_checked h2 s2Step22EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step22EntryFBefore s2Step22EntryFAfter s2Step22EntryGvAfter
    s2Step22EntryFRow s2Step22EntryFOut 256 s2Step22EntryFFresh [(s2Step22EntryGRow,256),(s2Step22EntryFvRow,23),(s2Step22EntryGvRow,23)] [s2Step22EntryGFresh,s2Step22EntryFvFresh,s2Step22EntryGvFresh] [s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut]
    (growRow 768 s2Step22EntryFFresh) ((growRow 769 s2Step22EntryGFresh ++ (growRow 770 s2Step22EntryFvFresh ++ (growRow 771 s2Step22EntryGvFresh ++ [])))) s2Step22EntryF_Incoming s2Step22EntryF_checked h1 s2Step22EntryF_Outgoing
  exact h0
theorem s2Step22EntryBank_checked : compileHmrBankResizeLog .entry s2Step22EntryFBefore ⟨s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow⟩ ⟨256,256,23,23⟩ [s2Step22EntryFFresh,s2Step22EntryGFresh,s2Step22EntryFvFresh,s2Step22EntryGvFresh]=
    some (s2Step22EntryGvAfter,⟨s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut⟩,(growRow 768 s2Step22EntryFFresh ++ (growRow 769 s2Step22EntryGFresh ++ (growRow 770 s2Step22EntryFvFresh ++ (growRow 771 s2Step22EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step22EntryBank_rows]
  rfl
def s2Step23EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step23EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step23EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩
def s2Step23EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780],771⟩
theorem s2Step23EntryBank_incomingDistinct : ([s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23EntryBank_outgoingOwned : rowsOwned s2Step23EntryGvAfter [s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step23EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23EntryF_Incoming : rowsOwned s2Step23EntryFBefore [s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow] 0 s2Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23EntryF_Outgoing : rowsOwned s2Step23EntryGvAfter [s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] :=
  hmrRows_owned_drop s2Step23EntryGvAfter [s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] 0 s2Step23EntryBank_outgoingOwned
theorem s2Step23EntryG_Incoming : rowsOwned s2Step23EntryGBefore [s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow] 1 s2Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23EntryG_Outgoing : rowsOwned s2Step23EntryGvAfter [s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] :=
  hmrRows_owned_drop s2Step23EntryGvAfter [s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] 1 s2Step23EntryBank_outgoingOwned
theorem s2Step23EntryFv_Incoming : rowsOwned s2Step23EntryFvBefore [s2Step23EntryFvRow,s2Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow] 2 s2Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23EntryFv_Outgoing : rowsOwned s2Step23EntryGvAfter [s2Step23EntryFvOut,s2Step23EntryGvOut] :=
  hmrRows_owned_drop s2Step23EntryGvAfter [s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] 2 s2Step23EntryBank_outgoingOwned
theorem s2Step23EntryGv_Incoming : rowsOwned s2Step23EntryGvBefore [s2Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow] 3 s2Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23EntryGv_Outgoing : rowsOwned s2Step23EntryGvAfter [s2Step23EntryGvOut] :=
  hmrRows_owned_drop s2Step23EntryGvAfter [s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut] 3 s2Step23EntryBank_outgoingOwned
theorem s2Step23EntryBank_rows : planWindowRowsLog s2Step23EntryFBefore [(s2Step23EntryFRow,256),(s2Step23EntryGRow,256),(s2Step23EntryFvRow,24),(s2Step23EntryGvRow,24)] [s2Step23EntryFFresh,s2Step23EntryGFresh,s2Step23EntryFvFresh,s2Step23EntryGvFresh]=
    some (s2Step23EntryGvAfter,[s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut],(growRow 768 s2Step23EntryFFresh ++ (growRow 769 s2Step23EntryGFresh ++ (growRow 770 s2Step23EntryFvFresh ++ (growRow 771 s2Step23EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step23EntryGvAfter [] []=some (s2Step23EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step23EntryGvBefore s2Step23EntryGvAfter s2Step23EntryGvAfter
    s2Step23EntryGvRow s2Step23EntryGvOut 24 s2Step23EntryGvFresh [] [] []
    (growRow 771 s2Step23EntryGvFresh) ([]) s2Step23EntryGv_Incoming s2Step23EntryGv_checked h4 s2Step23EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step23EntryFvBefore s2Step23EntryFvAfter s2Step23EntryGvAfter
    s2Step23EntryFvRow s2Step23EntryFvOut 24 s2Step23EntryFvFresh [(s2Step23EntryGvRow,24)] [s2Step23EntryGvFresh] [s2Step23EntryGvOut]
    (growRow 770 s2Step23EntryFvFresh) ((growRow 771 s2Step23EntryGvFresh ++ [])) s2Step23EntryFv_Incoming s2Step23EntryFv_checked h3 s2Step23EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step23EntryGBefore s2Step23EntryGAfter s2Step23EntryGvAfter
    s2Step23EntryGRow s2Step23EntryGOut 256 s2Step23EntryGFresh [(s2Step23EntryFvRow,24),(s2Step23EntryGvRow,24)] [s2Step23EntryFvFresh,s2Step23EntryGvFresh] [s2Step23EntryFvOut,s2Step23EntryGvOut]
    (growRow 769 s2Step23EntryGFresh) ((growRow 770 s2Step23EntryFvFresh ++ (growRow 771 s2Step23EntryGvFresh ++ []))) s2Step23EntryG_Incoming s2Step23EntryG_checked h2 s2Step23EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step23EntryFBefore s2Step23EntryFAfter s2Step23EntryGvAfter
    s2Step23EntryFRow s2Step23EntryFOut 256 s2Step23EntryFFresh [(s2Step23EntryGRow,256),(s2Step23EntryFvRow,24),(s2Step23EntryGvRow,24)] [s2Step23EntryGFresh,s2Step23EntryFvFresh,s2Step23EntryGvFresh] [s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut]
    (growRow 768 s2Step23EntryFFresh) ((growRow 769 s2Step23EntryGFresh ++ (growRow 770 s2Step23EntryFvFresh ++ (growRow 771 s2Step23EntryGvFresh ++ [])))) s2Step23EntryF_Incoming s2Step23EntryF_checked h1 s2Step23EntryF_Outgoing
  exact h0
theorem s2Step23EntryBank_checked : compileHmrBankResizeLog .entry s2Step23EntryFBefore ⟨s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow⟩ ⟨256,256,24,24⟩ [s2Step23EntryFFresh,s2Step23EntryGFresh,s2Step23EntryFvFresh,s2Step23EntryGvFresh]=
    some (s2Step23EntryGvAfter,⟨s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut⟩,(growRow 768 s2Step23EntryFFresh ++ (growRow 769 s2Step23EntryGFresh ++ (growRow 770 s2Step23EntryFvFresh ++ (growRow 771 s2Step23EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step23EntryBank_rows]
  rfl
def s2Step24EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step24EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step24EntryFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step24EntryGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780],771⟩
theorem s2Step24EntryBank_incomingDistinct : ([s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24EntryBank_outgoingOwned : rowsOwned s2Step24EntryGvAfter [s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step24EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24EntryF_Incoming : rowsOwned s2Step24EntryFBefore [s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow] 0 s2Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24EntryF_Outgoing : rowsOwned s2Step24EntryGvAfter [s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] :=
  hmrRows_owned_drop s2Step24EntryGvAfter [s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] 0 s2Step24EntryBank_outgoingOwned
theorem s2Step24EntryG_Incoming : rowsOwned s2Step24EntryGBefore [s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow] 1 s2Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24EntryG_Outgoing : rowsOwned s2Step24EntryGvAfter [s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] :=
  hmrRows_owned_drop s2Step24EntryGvAfter [s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] 1 s2Step24EntryBank_outgoingOwned
theorem s2Step24EntryFv_Incoming : rowsOwned s2Step24EntryFvBefore [s2Step24EntryFvRow,s2Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow] 2 s2Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24EntryFv_Outgoing : rowsOwned s2Step24EntryGvAfter [s2Step24EntryFvOut,s2Step24EntryGvOut] :=
  hmrRows_owned_drop s2Step24EntryGvAfter [s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] 2 s2Step24EntryBank_outgoingOwned
theorem s2Step24EntryGv_Incoming : rowsOwned s2Step24EntryGvBefore [s2Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow] 3 s2Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24EntryGv_Outgoing : rowsOwned s2Step24EntryGvAfter [s2Step24EntryGvOut] :=
  hmrRows_owned_drop s2Step24EntryGvAfter [s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut] 3 s2Step24EntryBank_outgoingOwned
theorem s2Step24EntryBank_rows : planWindowRowsLog s2Step24EntryFBefore [(s2Step24EntryFRow,256),(s2Step24EntryGRow,256),(s2Step24EntryFvRow,25),(s2Step24EntryGvRow,25)] [s2Step24EntryFFresh,s2Step24EntryGFresh,s2Step24EntryFvFresh,s2Step24EntryGvFresh]=
    some (s2Step24EntryGvAfter,[s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut],(growRow 768 s2Step24EntryFFresh ++ (growRow 769 s2Step24EntryGFresh ++ (growRow 770 s2Step24EntryFvFresh ++ (growRow 771 s2Step24EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step24EntryGvAfter [] []=some (s2Step24EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step24EntryGvBefore s2Step24EntryGvAfter s2Step24EntryGvAfter
    s2Step24EntryGvRow s2Step24EntryGvOut 25 s2Step24EntryGvFresh [] [] []
    (growRow 771 s2Step24EntryGvFresh) ([]) s2Step24EntryGv_Incoming s2Step24EntryGv_checked h4 s2Step24EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step24EntryFvBefore s2Step24EntryFvAfter s2Step24EntryGvAfter
    s2Step24EntryFvRow s2Step24EntryFvOut 25 s2Step24EntryFvFresh [(s2Step24EntryGvRow,25)] [s2Step24EntryGvFresh] [s2Step24EntryGvOut]
    (growRow 770 s2Step24EntryFvFresh) ((growRow 771 s2Step24EntryGvFresh ++ [])) s2Step24EntryFv_Incoming s2Step24EntryFv_checked h3 s2Step24EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step24EntryGBefore s2Step24EntryGAfter s2Step24EntryGvAfter
    s2Step24EntryGRow s2Step24EntryGOut 256 s2Step24EntryGFresh [(s2Step24EntryFvRow,25),(s2Step24EntryGvRow,25)] [s2Step24EntryFvFresh,s2Step24EntryGvFresh] [s2Step24EntryFvOut,s2Step24EntryGvOut]
    (growRow 769 s2Step24EntryGFresh) ((growRow 770 s2Step24EntryFvFresh ++ (growRow 771 s2Step24EntryGvFresh ++ []))) s2Step24EntryG_Incoming s2Step24EntryG_checked h2 s2Step24EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step24EntryFBefore s2Step24EntryFAfter s2Step24EntryGvAfter
    s2Step24EntryFRow s2Step24EntryFOut 256 s2Step24EntryFFresh [(s2Step24EntryGRow,256),(s2Step24EntryFvRow,25),(s2Step24EntryGvRow,25)] [s2Step24EntryGFresh,s2Step24EntryFvFresh,s2Step24EntryGvFresh] [s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut]
    (growRow 768 s2Step24EntryFFresh) ((growRow 769 s2Step24EntryGFresh ++ (growRow 770 s2Step24EntryFvFresh ++ (growRow 771 s2Step24EntryGvFresh ++ [])))) s2Step24EntryF_Incoming s2Step24EntryF_checked h1 s2Step24EntryF_Outgoing
  exact h0
theorem s2Step24EntryBank_checked : compileHmrBankResizeLog .entry s2Step24EntryFBefore ⟨s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow⟩ ⟨256,256,25,25⟩ [s2Step24EntryFFresh,s2Step24EntryGFresh,s2Step24EntryFvFresh,s2Step24EntryGvFresh]=
    some (s2Step24EntryGvAfter,⟨s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut⟩,(growRow 768 s2Step24EntryFFresh ++ (growRow 769 s2Step24EntryGFresh ++ (growRow 770 s2Step24EntryFvFresh ++ (growRow 771 s2Step24EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step24EntryBank_rows]
  rfl
def s2Step25EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step25EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781],769⟩
def s2Step25EntryFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step25EntryGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩
theorem s2Step25EntryBank_incomingDistinct : ([s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25EntryBank_outgoingOwned : rowsOwned s2Step25EntryGvAfter [s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step25EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25EntryF_Incoming : rowsOwned s2Step25EntryFBefore [s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow] 0 s2Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25EntryF_Outgoing : rowsOwned s2Step25EntryGvAfter [s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] :=
  hmrRows_owned_drop s2Step25EntryGvAfter [s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] 0 s2Step25EntryBank_outgoingOwned
theorem s2Step25EntryG_Incoming : rowsOwned s2Step25EntryGBefore [s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow] 1 s2Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25EntryG_Outgoing : rowsOwned s2Step25EntryGvAfter [s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] :=
  hmrRows_owned_drop s2Step25EntryGvAfter [s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] 1 s2Step25EntryBank_outgoingOwned
theorem s2Step25EntryFv_Incoming : rowsOwned s2Step25EntryFvBefore [s2Step25EntryFvRow,s2Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow] 2 s2Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25EntryFv_Outgoing : rowsOwned s2Step25EntryGvAfter [s2Step25EntryFvOut,s2Step25EntryGvOut] :=
  hmrRows_owned_drop s2Step25EntryGvAfter [s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] 2 s2Step25EntryBank_outgoingOwned
theorem s2Step25EntryGv_Incoming : rowsOwned s2Step25EntryGvBefore [s2Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow] 3 s2Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25EntryGv_Outgoing : rowsOwned s2Step25EntryGvAfter [s2Step25EntryGvOut] :=
  hmrRows_owned_drop s2Step25EntryGvAfter [s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut] 3 s2Step25EntryBank_outgoingOwned
theorem s2Step25EntryBank_rows : planWindowRowsLog s2Step25EntryFBefore [(s2Step25EntryFRow,255),(s2Step25EntryGRow,255),(s2Step25EntryFvRow,25),(s2Step25EntryGvRow,25)] [s2Step25EntryFFresh,s2Step25EntryGFresh,s2Step25EntryFvFresh,s2Step25EntryGvFresh]=
    some (s2Step25EntryGvAfter,[s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut],(growRow 768 s2Step25EntryFFresh ++ (growRow 769 s2Step25EntryGFresh ++ (growRow 770 s2Step25EntryFvFresh ++ (growRow 771 s2Step25EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step25EntryGvAfter [] []=some (s2Step25EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step25EntryGvBefore s2Step25EntryGvAfter s2Step25EntryGvAfter
    s2Step25EntryGvRow s2Step25EntryGvOut 25 s2Step25EntryGvFresh [] [] []
    (growRow 771 s2Step25EntryGvFresh) ([]) s2Step25EntryGv_Incoming s2Step25EntryGv_checked h4 s2Step25EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step25EntryFvBefore s2Step25EntryFvAfter s2Step25EntryGvAfter
    s2Step25EntryFvRow s2Step25EntryFvOut 25 s2Step25EntryFvFresh [(s2Step25EntryGvRow,25)] [s2Step25EntryGvFresh] [s2Step25EntryGvOut]
    (growRow 770 s2Step25EntryFvFresh) ((growRow 771 s2Step25EntryGvFresh ++ [])) s2Step25EntryFv_Incoming s2Step25EntryFv_checked h3 s2Step25EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step25EntryGBefore s2Step25EntryGAfter s2Step25EntryGvAfter
    s2Step25EntryGRow s2Step25EntryGOut 255 s2Step25EntryGFresh [(s2Step25EntryFvRow,25),(s2Step25EntryGvRow,25)] [s2Step25EntryFvFresh,s2Step25EntryGvFresh] [s2Step25EntryFvOut,s2Step25EntryGvOut]
    (growRow 769 s2Step25EntryGFresh) ((growRow 770 s2Step25EntryFvFresh ++ (growRow 771 s2Step25EntryGvFresh ++ []))) s2Step25EntryG_Incoming s2Step25EntryG_checked h2 s2Step25EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step25EntryFBefore s2Step25EntryFAfter s2Step25EntryGvAfter
    s2Step25EntryFRow s2Step25EntryFOut 255 s2Step25EntryFFresh [(s2Step25EntryGRow,255),(s2Step25EntryFvRow,25),(s2Step25EntryGvRow,25)] [s2Step25EntryGFresh,s2Step25EntryFvFresh,s2Step25EntryGvFresh] [s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut]
    (growRow 768 s2Step25EntryFFresh) ((growRow 769 s2Step25EntryGFresh ++ (growRow 770 s2Step25EntryFvFresh ++ (growRow 771 s2Step25EntryGvFresh ++ [])))) s2Step25EntryF_Incoming s2Step25EntryF_checked h1 s2Step25EntryF_Outgoing
  exact h0
theorem s2Step25EntryBank_checked : compileHmrBankResizeLog .entry s2Step25EntryFBefore ⟨s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow⟩ ⟨255,255,25,25⟩ [s2Step25EntryFFresh,s2Step25EntryGFresh,s2Step25EntryFvFresh,s2Step25EntryGvFresh]=
    some (s2Step25EntryGvAfter,⟨s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut⟩,(growRow 768 s2Step25EntryFFresh ++ (growRow 769 s2Step25EntryGFresh ++ (growRow 770 s2Step25EntryFvFresh ++ (growRow 771 s2Step25EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step25EntryBank_rows]
  rfl
def s2Step26EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step26EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785],769⟩
def s2Step26EntryFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩
def s2Step26EntryGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779],771⟩
theorem s2Step26EntryBank_incomingDistinct : ([s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26EntryBank_outgoingOwned : rowsOwned s2Step26EntryGvAfter [s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step26EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26EntryF_Incoming : rowsOwned s2Step26EntryFBefore [s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow] 0 s2Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26EntryF_Outgoing : rowsOwned s2Step26EntryGvAfter [s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] :=
  hmrRows_owned_drop s2Step26EntryGvAfter [s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] 0 s2Step26EntryBank_outgoingOwned
theorem s2Step26EntryG_Incoming : rowsOwned s2Step26EntryGBefore [s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow] 1 s2Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26EntryG_Outgoing : rowsOwned s2Step26EntryGvAfter [s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] :=
  hmrRows_owned_drop s2Step26EntryGvAfter [s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] 1 s2Step26EntryBank_outgoingOwned
theorem s2Step26EntryFv_Incoming : rowsOwned s2Step26EntryFvBefore [s2Step26EntryFvRow,s2Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow] 2 s2Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26EntryFv_Outgoing : rowsOwned s2Step26EntryGvAfter [s2Step26EntryFvOut,s2Step26EntryGvOut] :=
  hmrRows_owned_drop s2Step26EntryGvAfter [s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] 2 s2Step26EntryBank_outgoingOwned
theorem s2Step26EntryGv_Incoming : rowsOwned s2Step26EntryGvBefore [s2Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow] 3 s2Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26EntryGv_Outgoing : rowsOwned s2Step26EntryGvAfter [s2Step26EntryGvOut] :=
  hmrRows_owned_drop s2Step26EntryGvAfter [s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut] 3 s2Step26EntryBank_outgoingOwned
theorem s2Step26EntryBank_rows : planWindowRowsLog s2Step26EntryFBefore [(s2Step26EntryFRow,255),(s2Step26EntryGRow,255),(s2Step26EntryFvRow,26),(s2Step26EntryGvRow,26)] [s2Step26EntryFFresh,s2Step26EntryGFresh,s2Step26EntryFvFresh,s2Step26EntryGvFresh]=
    some (s2Step26EntryGvAfter,[s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut],(growRow 768 s2Step26EntryFFresh ++ (growRow 769 s2Step26EntryGFresh ++ (growRow 770 s2Step26EntryFvFresh ++ (growRow 771 s2Step26EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step26EntryGvAfter [] []=some (s2Step26EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step26EntryGvBefore s2Step26EntryGvAfter s2Step26EntryGvAfter
    s2Step26EntryGvRow s2Step26EntryGvOut 26 s2Step26EntryGvFresh [] [] []
    (growRow 771 s2Step26EntryGvFresh) ([]) s2Step26EntryGv_Incoming s2Step26EntryGv_checked h4 s2Step26EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step26EntryFvBefore s2Step26EntryFvAfter s2Step26EntryGvAfter
    s2Step26EntryFvRow s2Step26EntryFvOut 26 s2Step26EntryFvFresh [(s2Step26EntryGvRow,26)] [s2Step26EntryGvFresh] [s2Step26EntryGvOut]
    (growRow 770 s2Step26EntryFvFresh) ((growRow 771 s2Step26EntryGvFresh ++ [])) s2Step26EntryFv_Incoming s2Step26EntryFv_checked h3 s2Step26EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step26EntryGBefore s2Step26EntryGAfter s2Step26EntryGvAfter
    s2Step26EntryGRow s2Step26EntryGOut 255 s2Step26EntryGFresh [(s2Step26EntryFvRow,26),(s2Step26EntryGvRow,26)] [s2Step26EntryFvFresh,s2Step26EntryGvFresh] [s2Step26EntryFvOut,s2Step26EntryGvOut]
    (growRow 769 s2Step26EntryGFresh) ((growRow 770 s2Step26EntryFvFresh ++ (growRow 771 s2Step26EntryGvFresh ++ []))) s2Step26EntryG_Incoming s2Step26EntryG_checked h2 s2Step26EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step26EntryFBefore s2Step26EntryFAfter s2Step26EntryGvAfter
    s2Step26EntryFRow s2Step26EntryFOut 255 s2Step26EntryFFresh [(s2Step26EntryGRow,255),(s2Step26EntryFvRow,26),(s2Step26EntryGvRow,26)] [s2Step26EntryGFresh,s2Step26EntryFvFresh,s2Step26EntryGvFresh] [s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut]
    (growRow 768 s2Step26EntryFFresh) ((growRow 769 s2Step26EntryGFresh ++ (growRow 770 s2Step26EntryFvFresh ++ (growRow 771 s2Step26EntryGvFresh ++ [])))) s2Step26EntryF_Incoming s2Step26EntryF_checked h1 s2Step26EntryF_Outgoing
  exact h0
theorem s2Step26EntryBank_checked : compileHmrBankResizeLog .entry s2Step26EntryFBefore ⟨s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow⟩ ⟨255,255,26,26⟩ [s2Step26EntryFFresh,s2Step26EntryGFresh,s2Step26EntryFvFresh,s2Step26EntryGvFresh]=
    some (s2Step26EntryGvAfter,⟨s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut⟩,(growRow 768 s2Step26EntryFFresh ++ (growRow 769 s2Step26EntryGFresh ++ (growRow 770 s2Step26EntryFvFresh ++ (growRow 771 s2Step26EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step26EntryBank_rows]
  rfl
def s2Step27EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step27EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839],769⟩
def s2Step27EntryFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩
def s2Step27EntryGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779],771⟩
theorem s2Step27EntryBank_incomingDistinct : ([s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27EntryBank_outgoingOwned : rowsOwned s2Step27EntryGvAfter [s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step27EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27EntryF_Incoming : rowsOwned s2Step27EntryFBefore [s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow] 0 s2Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27EntryF_Outgoing : rowsOwned s2Step27EntryGvAfter [s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] :=
  hmrRows_owned_drop s2Step27EntryGvAfter [s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] 0 s2Step27EntryBank_outgoingOwned
theorem s2Step27EntryG_Incoming : rowsOwned s2Step27EntryGBefore [s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow] 1 s2Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27EntryG_Outgoing : rowsOwned s2Step27EntryGvAfter [s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] :=
  hmrRows_owned_drop s2Step27EntryGvAfter [s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] 1 s2Step27EntryBank_outgoingOwned
theorem s2Step27EntryFv_Incoming : rowsOwned s2Step27EntryFvBefore [s2Step27EntryFvRow,s2Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow] 2 s2Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27EntryFv_Outgoing : rowsOwned s2Step27EntryGvAfter [s2Step27EntryFvOut,s2Step27EntryGvOut] :=
  hmrRows_owned_drop s2Step27EntryGvAfter [s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] 2 s2Step27EntryBank_outgoingOwned
theorem s2Step27EntryGv_Incoming : rowsOwned s2Step27EntryGvBefore [s2Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow] 3 s2Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27EntryGv_Outgoing : rowsOwned s2Step27EntryGvAfter [s2Step27EntryGvOut] :=
  hmrRows_owned_drop s2Step27EntryGvAfter [s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut] 3 s2Step27EntryBank_outgoingOwned
theorem s2Step27EntryBank_rows : planWindowRowsLog s2Step27EntryFBefore [(s2Step27EntryFRow,255),(s2Step27EntryGRow,255),(s2Step27EntryFvRow,27),(s2Step27EntryGvRow,27)] [s2Step27EntryFFresh,s2Step27EntryGFresh,s2Step27EntryFvFresh,s2Step27EntryGvFresh]=
    some (s2Step27EntryGvAfter,[s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut],(growRow 768 s2Step27EntryFFresh ++ (growRow 769 s2Step27EntryGFresh ++ (growRow 770 s2Step27EntryFvFresh ++ (growRow 771 s2Step27EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step27EntryGvAfter [] []=some (s2Step27EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step27EntryGvBefore s2Step27EntryGvAfter s2Step27EntryGvAfter
    s2Step27EntryGvRow s2Step27EntryGvOut 27 s2Step27EntryGvFresh [] [] []
    (growRow 771 s2Step27EntryGvFresh) ([]) s2Step27EntryGv_Incoming s2Step27EntryGv_checked h4 s2Step27EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step27EntryFvBefore s2Step27EntryFvAfter s2Step27EntryGvAfter
    s2Step27EntryFvRow s2Step27EntryFvOut 27 s2Step27EntryFvFresh [(s2Step27EntryGvRow,27)] [s2Step27EntryGvFresh] [s2Step27EntryGvOut]
    (growRow 770 s2Step27EntryFvFresh) ((growRow 771 s2Step27EntryGvFresh ++ [])) s2Step27EntryFv_Incoming s2Step27EntryFv_checked h3 s2Step27EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step27EntryGBefore s2Step27EntryGAfter s2Step27EntryGvAfter
    s2Step27EntryGRow s2Step27EntryGOut 255 s2Step27EntryGFresh [(s2Step27EntryFvRow,27),(s2Step27EntryGvRow,27)] [s2Step27EntryFvFresh,s2Step27EntryGvFresh] [s2Step27EntryFvOut,s2Step27EntryGvOut]
    (growRow 769 s2Step27EntryGFresh) ((growRow 770 s2Step27EntryFvFresh ++ (growRow 771 s2Step27EntryGvFresh ++ []))) s2Step27EntryG_Incoming s2Step27EntryG_checked h2 s2Step27EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step27EntryFBefore s2Step27EntryFAfter s2Step27EntryGvAfter
    s2Step27EntryFRow s2Step27EntryFOut 255 s2Step27EntryFFresh [(s2Step27EntryGRow,255),(s2Step27EntryFvRow,27),(s2Step27EntryGvRow,27)] [s2Step27EntryGFresh,s2Step27EntryFvFresh,s2Step27EntryGvFresh] [s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut]
    (growRow 768 s2Step27EntryFFresh) ((growRow 769 s2Step27EntryGFresh ++ (growRow 770 s2Step27EntryFvFresh ++ (growRow 771 s2Step27EntryGvFresh ++ [])))) s2Step27EntryF_Incoming s2Step27EntryF_checked h1 s2Step27EntryF_Outgoing
  exact h0
theorem s2Step27EntryBank_checked : compileHmrBankResizeLog .entry s2Step27EntryFBefore ⟨s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow⟩ ⟨255,255,27,27⟩ [s2Step27EntryFFresh,s2Step27EntryGFresh,s2Step27EntryFvFresh,s2Step27EntryGvFresh]=
    some (s2Step27EntryGvAfter,⟨s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut⟩,(growRow 768 s2Step27EntryFFresh ++ (growRow 769 s2Step27EntryGFresh ++ (growRow 770 s2Step27EntryFvFresh ++ (growRow 771 s2Step27EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step27EntryBank_rows]
  rfl
def s2Step28EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step28EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780],769⟩
def s2Step28EntryFvOut : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step28EntryGvOut : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
theorem s2Step28EntryBank_incomingDistinct : ([s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28EntryBank_outgoingOwned : rowsOwned s2Step28EntryGvAfter [s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step28EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28EntryF_Incoming : rowsOwned s2Step28EntryFBefore [s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow] 0 s2Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28EntryF_Outgoing : rowsOwned s2Step28EntryGvAfter [s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] :=
  hmrRows_owned_drop s2Step28EntryGvAfter [s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] 0 s2Step28EntryBank_outgoingOwned
theorem s2Step28EntryG_Incoming : rowsOwned s2Step28EntryGBefore [s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow] 1 s2Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28EntryG_Outgoing : rowsOwned s2Step28EntryGvAfter [s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] :=
  hmrRows_owned_drop s2Step28EntryGvAfter [s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] 1 s2Step28EntryBank_outgoingOwned
theorem s2Step28EntryFv_Incoming : rowsOwned s2Step28EntryFvBefore [s2Step28EntryFvRow,s2Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow] 2 s2Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28EntryFv_Outgoing : rowsOwned s2Step28EntryGvAfter [s2Step28EntryFvOut,s2Step28EntryGvOut] :=
  hmrRows_owned_drop s2Step28EntryGvAfter [s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] 2 s2Step28EntryBank_outgoingOwned
theorem s2Step28EntryGv_Incoming : rowsOwned s2Step28EntryGvBefore [s2Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow] 3 s2Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28EntryGv_Outgoing : rowsOwned s2Step28EntryGvAfter [s2Step28EntryGvOut] :=
  hmrRows_owned_drop s2Step28EntryGvAfter [s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut] 3 s2Step28EntryBank_outgoingOwned
theorem s2Step28EntryBank_rows : planWindowRowsLog s2Step28EntryFBefore [(s2Step28EntryFRow,254),(s2Step28EntryGRow,254),(s2Step28EntryFvRow,28),(s2Step28EntryGvRow,28)] [s2Step28EntryFFresh,s2Step28EntryGFresh,s2Step28EntryFvFresh,s2Step28EntryGvFresh]=
    some (s2Step28EntryGvAfter,[s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut],(growRow 768 s2Step28EntryFFresh ++ (growRow 769 s2Step28EntryGFresh ++ (growRow 770 s2Step28EntryFvFresh ++ (growRow 771 s2Step28EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step28EntryGvAfter [] []=some (s2Step28EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step28EntryGvBefore s2Step28EntryGvAfter s2Step28EntryGvAfter
    s2Step28EntryGvRow s2Step28EntryGvOut 28 s2Step28EntryGvFresh [] [] []
    (growRow 771 s2Step28EntryGvFresh) ([]) s2Step28EntryGv_Incoming s2Step28EntryGv_checked h4 s2Step28EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step28EntryFvBefore s2Step28EntryFvAfter s2Step28EntryGvAfter
    s2Step28EntryFvRow s2Step28EntryFvOut 28 s2Step28EntryFvFresh [(s2Step28EntryGvRow,28)] [s2Step28EntryGvFresh] [s2Step28EntryGvOut]
    (growRow 770 s2Step28EntryFvFresh) ((growRow 771 s2Step28EntryGvFresh ++ [])) s2Step28EntryFv_Incoming s2Step28EntryFv_checked h3 s2Step28EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step28EntryGBefore s2Step28EntryGAfter s2Step28EntryGvAfter
    s2Step28EntryGRow s2Step28EntryGOut 254 s2Step28EntryGFresh [(s2Step28EntryFvRow,28),(s2Step28EntryGvRow,28)] [s2Step28EntryFvFresh,s2Step28EntryGvFresh] [s2Step28EntryFvOut,s2Step28EntryGvOut]
    (growRow 769 s2Step28EntryGFresh) ((growRow 770 s2Step28EntryFvFresh ++ (growRow 771 s2Step28EntryGvFresh ++ []))) s2Step28EntryG_Incoming s2Step28EntryG_checked h2 s2Step28EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step28EntryFBefore s2Step28EntryFAfter s2Step28EntryGvAfter
    s2Step28EntryFRow s2Step28EntryFOut 254 s2Step28EntryFFresh [(s2Step28EntryGRow,254),(s2Step28EntryFvRow,28),(s2Step28EntryGvRow,28)] [s2Step28EntryGFresh,s2Step28EntryFvFresh,s2Step28EntryGvFresh] [s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut]
    (growRow 768 s2Step28EntryFFresh) ((growRow 769 s2Step28EntryGFresh ++ (growRow 770 s2Step28EntryFvFresh ++ (growRow 771 s2Step28EntryGvFresh ++ [])))) s2Step28EntryF_Incoming s2Step28EntryF_checked h1 s2Step28EntryF_Outgoing
  exact h0
theorem s2Step28EntryBank_checked : compileHmrBankResizeLog .entry s2Step28EntryFBefore ⟨s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow⟩ ⟨254,254,28,28⟩ [s2Step28EntryFFresh,s2Step28EntryGFresh,s2Step28EntryFvFresh,s2Step28EntryGvFresh]=
    some (s2Step28EntryGvAfter,⟨s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut⟩,(growRow 768 s2Step28EntryFFresh ++ (growRow 769 s2Step28EntryGFresh ++ (growRow 770 s2Step28EntryFvFresh ++ (growRow 771 s2Step28EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step28EntryBank_rows]
  rfl
def s2Step29EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step29EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779],769⟩
def s2Step29EntryFvOut : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step29EntryGvOut : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787],771⟩
theorem s2Step29EntryBank_incomingDistinct : ([s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29EntryBank_outgoingOwned : rowsOwned s2Step29EntryGvAfter [s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step29EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29EntryF_Incoming : rowsOwned s2Step29EntryFBefore [s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow] 0 s2Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29EntryF_Outgoing : rowsOwned s2Step29EntryGvAfter [s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] :=
  hmrRows_owned_drop s2Step29EntryGvAfter [s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] 0 s2Step29EntryBank_outgoingOwned
theorem s2Step29EntryG_Incoming : rowsOwned s2Step29EntryGBefore [s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow] 1 s2Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29EntryG_Outgoing : rowsOwned s2Step29EntryGvAfter [s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] :=
  hmrRows_owned_drop s2Step29EntryGvAfter [s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] 1 s2Step29EntryBank_outgoingOwned
theorem s2Step29EntryFv_Incoming : rowsOwned s2Step29EntryFvBefore [s2Step29EntryFvRow,s2Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow] 2 s2Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29EntryFv_Outgoing : rowsOwned s2Step29EntryGvAfter [s2Step29EntryFvOut,s2Step29EntryGvOut] :=
  hmrRows_owned_drop s2Step29EntryGvAfter [s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] 2 s2Step29EntryBank_outgoingOwned
theorem s2Step29EntryGv_Incoming : rowsOwned s2Step29EntryGvBefore [s2Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow] 3 s2Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29EntryGv_Outgoing : rowsOwned s2Step29EntryGvAfter [s2Step29EntryGvOut] :=
  hmrRows_owned_drop s2Step29EntryGvAfter [s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut] 3 s2Step29EntryBank_outgoingOwned
theorem s2Step29EntryBank_rows : planWindowRowsLog s2Step29EntryFBefore [(s2Step29EntryFRow,254),(s2Step29EntryGRow,254),(s2Step29EntryFvRow,28),(s2Step29EntryGvRow,28)] [s2Step29EntryFFresh,s2Step29EntryGFresh,s2Step29EntryFvFresh,s2Step29EntryGvFresh]=
    some (s2Step29EntryGvAfter,[s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut],(growRow 768 s2Step29EntryFFresh ++ (growRow 769 s2Step29EntryGFresh ++ (growRow 770 s2Step29EntryFvFresh ++ (growRow 771 s2Step29EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step29EntryGvAfter [] []=some (s2Step29EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step29EntryGvBefore s2Step29EntryGvAfter s2Step29EntryGvAfter
    s2Step29EntryGvRow s2Step29EntryGvOut 28 s2Step29EntryGvFresh [] [] []
    (growRow 771 s2Step29EntryGvFresh) ([]) s2Step29EntryGv_Incoming s2Step29EntryGv_checked h4 s2Step29EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step29EntryFvBefore s2Step29EntryFvAfter s2Step29EntryGvAfter
    s2Step29EntryFvRow s2Step29EntryFvOut 28 s2Step29EntryFvFresh [(s2Step29EntryGvRow,28)] [s2Step29EntryGvFresh] [s2Step29EntryGvOut]
    (growRow 770 s2Step29EntryFvFresh) ((growRow 771 s2Step29EntryGvFresh ++ [])) s2Step29EntryFv_Incoming s2Step29EntryFv_checked h3 s2Step29EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step29EntryGBefore s2Step29EntryGAfter s2Step29EntryGvAfter
    s2Step29EntryGRow s2Step29EntryGOut 254 s2Step29EntryGFresh [(s2Step29EntryFvRow,28),(s2Step29EntryGvRow,28)] [s2Step29EntryFvFresh,s2Step29EntryGvFresh] [s2Step29EntryFvOut,s2Step29EntryGvOut]
    (growRow 769 s2Step29EntryGFresh) ((growRow 770 s2Step29EntryFvFresh ++ (growRow 771 s2Step29EntryGvFresh ++ []))) s2Step29EntryG_Incoming s2Step29EntryG_checked h2 s2Step29EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step29EntryFBefore s2Step29EntryFAfter s2Step29EntryGvAfter
    s2Step29EntryFRow s2Step29EntryFOut 254 s2Step29EntryFFresh [(s2Step29EntryGRow,254),(s2Step29EntryFvRow,28),(s2Step29EntryGvRow,28)] [s2Step29EntryGFresh,s2Step29EntryFvFresh,s2Step29EntryGvFresh] [s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut]
    (growRow 768 s2Step29EntryFFresh) ((growRow 769 s2Step29EntryGFresh ++ (growRow 770 s2Step29EntryFvFresh ++ (growRow 771 s2Step29EntryGvFresh ++ [])))) s2Step29EntryF_Incoming s2Step29EntryF_checked h1 s2Step29EntryF_Outgoing
  exact h0
theorem s2Step29EntryBank_checked : compileHmrBankResizeLog .entry s2Step29EntryFBefore ⟨s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow⟩ ⟨254,254,28,28⟩ [s2Step29EntryFFresh,s2Step29EntryGFresh,s2Step29EntryFvFresh,s2Step29EntryGvFresh]=
    some (s2Step29EntryGvAfter,⟨s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut⟩,(growRow 768 s2Step29EntryFFresh ++ (growRow 769 s2Step29EntryGFresh ++ (growRow 770 s2Step29EntryFvFresh ++ (growRow 771 s2Step29EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step29EntryBank_rows]
  rfl
def s2Step30EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step30EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839],769⟩
def s2Step30EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step30EntryGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786],771⟩
theorem s2Step30EntryBank_incomingDistinct : ([s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30EntryBank_outgoingOwned : rowsOwned s2Step30EntryGvAfter [s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step30EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30EntryF_Incoming : rowsOwned s2Step30EntryFBefore [s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow] 0 s2Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30EntryF_Outgoing : rowsOwned s2Step30EntryGvAfter [s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] :=
  hmrRows_owned_drop s2Step30EntryGvAfter [s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] 0 s2Step30EntryBank_outgoingOwned
theorem s2Step30EntryG_Incoming : rowsOwned s2Step30EntryGBefore [s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow] 1 s2Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30EntryG_Outgoing : rowsOwned s2Step30EntryGvAfter [s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] :=
  hmrRows_owned_drop s2Step30EntryGvAfter [s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] 1 s2Step30EntryBank_outgoingOwned
theorem s2Step30EntryFv_Incoming : rowsOwned s2Step30EntryFvBefore [s2Step30EntryFvRow,s2Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow] 2 s2Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30EntryFv_Outgoing : rowsOwned s2Step30EntryGvAfter [s2Step30EntryFvOut,s2Step30EntryGvOut] :=
  hmrRows_owned_drop s2Step30EntryGvAfter [s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] 2 s2Step30EntryBank_outgoingOwned
theorem s2Step30EntryGv_Incoming : rowsOwned s2Step30EntryGvBefore [s2Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow] 3 s2Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30EntryGv_Outgoing : rowsOwned s2Step30EntryGvAfter [s2Step30EntryGvOut] :=
  hmrRows_owned_drop s2Step30EntryGvAfter [s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut] 3 s2Step30EntryBank_outgoingOwned
theorem s2Step30EntryBank_rows : planWindowRowsLog s2Step30EntryFBefore [(s2Step30EntryFRow,253),(s2Step30EntryGRow,253),(s2Step30EntryFvRow,29),(s2Step30EntryGvRow,29)] [s2Step30EntryFFresh,s2Step30EntryGFresh,s2Step30EntryFvFresh,s2Step30EntryGvFresh]=
    some (s2Step30EntryGvAfter,[s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut],(growRow 768 s2Step30EntryFFresh ++ (growRow 769 s2Step30EntryGFresh ++ (growRow 770 s2Step30EntryFvFresh ++ (growRow 771 s2Step30EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step30EntryGvAfter [] []=some (s2Step30EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step30EntryGvBefore s2Step30EntryGvAfter s2Step30EntryGvAfter
    s2Step30EntryGvRow s2Step30EntryGvOut 29 s2Step30EntryGvFresh [] [] []
    (growRow 771 s2Step30EntryGvFresh) ([]) s2Step30EntryGv_Incoming s2Step30EntryGv_checked h4 s2Step30EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step30EntryFvBefore s2Step30EntryFvAfter s2Step30EntryGvAfter
    s2Step30EntryFvRow s2Step30EntryFvOut 29 s2Step30EntryFvFresh [(s2Step30EntryGvRow,29)] [s2Step30EntryGvFresh] [s2Step30EntryGvOut]
    (growRow 770 s2Step30EntryFvFresh) ((growRow 771 s2Step30EntryGvFresh ++ [])) s2Step30EntryFv_Incoming s2Step30EntryFv_checked h3 s2Step30EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step30EntryGBefore s2Step30EntryGAfter s2Step30EntryGvAfter
    s2Step30EntryGRow s2Step30EntryGOut 253 s2Step30EntryGFresh [(s2Step30EntryFvRow,29),(s2Step30EntryGvRow,29)] [s2Step30EntryFvFresh,s2Step30EntryGvFresh] [s2Step30EntryFvOut,s2Step30EntryGvOut]
    (growRow 769 s2Step30EntryGFresh) ((growRow 770 s2Step30EntryFvFresh ++ (growRow 771 s2Step30EntryGvFresh ++ []))) s2Step30EntryG_Incoming s2Step30EntryG_checked h2 s2Step30EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step30EntryFBefore s2Step30EntryFAfter s2Step30EntryGvAfter
    s2Step30EntryFRow s2Step30EntryFOut 253 s2Step30EntryFFresh [(s2Step30EntryGRow,253),(s2Step30EntryFvRow,29),(s2Step30EntryGvRow,29)] [s2Step30EntryGFresh,s2Step30EntryFvFresh,s2Step30EntryGvFresh] [s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut]
    (growRow 768 s2Step30EntryFFresh) ((growRow 769 s2Step30EntryGFresh ++ (growRow 770 s2Step30EntryFvFresh ++ (growRow 771 s2Step30EntryGvFresh ++ [])))) s2Step30EntryF_Incoming s2Step30EntryF_checked h1 s2Step30EntryF_Outgoing
  exact h0
theorem s2Step30EntryBank_checked : compileHmrBankResizeLog .entry s2Step30EntryFBefore ⟨s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow⟩ ⟨253,253,29,29⟩ [s2Step30EntryFFresh,s2Step30EntryGFresh,s2Step30EntryFvFresh,s2Step30EntryGvFresh]=
    some (s2Step30EntryGvAfter,⟨s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut⟩,(growRow 768 s2Step30EntryFFresh ++ (growRow 769 s2Step30EntryGFresh ++ (growRow 770 s2Step30EntryFvFresh ++ (growRow 771 s2Step30EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step30EntryBank_rows]
  rfl
def s2Step31EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step31EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787],769⟩
def s2Step31EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step31EntryGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789],771⟩
theorem s2Step31EntryBank_incomingDistinct : ([s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31EntryBank_outgoingOwned : rowsOwned s2Step31EntryGvAfter [s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step31EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31EntryF_Incoming : rowsOwned s2Step31EntryFBefore [s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow] 0 s2Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31EntryF_Outgoing : rowsOwned s2Step31EntryGvAfter [s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] :=
  hmrRows_owned_drop s2Step31EntryGvAfter [s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] 0 s2Step31EntryBank_outgoingOwned
theorem s2Step31EntryG_Incoming : rowsOwned s2Step31EntryGBefore [s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow] 1 s2Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31EntryG_Outgoing : rowsOwned s2Step31EntryGvAfter [s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] :=
  hmrRows_owned_drop s2Step31EntryGvAfter [s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] 1 s2Step31EntryBank_outgoingOwned
theorem s2Step31EntryFv_Incoming : rowsOwned s2Step31EntryFvBefore [s2Step31EntryFvRow,s2Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow] 2 s2Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31EntryFv_Outgoing : rowsOwned s2Step31EntryGvAfter [s2Step31EntryFvOut,s2Step31EntryGvOut] :=
  hmrRows_owned_drop s2Step31EntryGvAfter [s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] 2 s2Step31EntryBank_outgoingOwned
theorem s2Step31EntryGv_Incoming : rowsOwned s2Step31EntryGvBefore [s2Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow] 3 s2Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31EntryGv_Outgoing : rowsOwned s2Step31EntryGvAfter [s2Step31EntryGvOut] :=
  hmrRows_owned_drop s2Step31EntryGvAfter [s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut] 3 s2Step31EntryBank_outgoingOwned
theorem s2Step31EntryBank_rows : planWindowRowsLog s2Step31EntryFBefore [(s2Step31EntryFRow,253),(s2Step31EntryGRow,253),(s2Step31EntryFvRow,29),(s2Step31EntryGvRow,29)] [s2Step31EntryFFresh,s2Step31EntryGFresh,s2Step31EntryFvFresh,s2Step31EntryGvFresh]=
    some (s2Step31EntryGvAfter,[s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut],(growRow 768 s2Step31EntryFFresh ++ (growRow 769 s2Step31EntryGFresh ++ (growRow 770 s2Step31EntryFvFresh ++ (growRow 771 s2Step31EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step31EntryGvAfter [] []=some (s2Step31EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step31EntryGvBefore s2Step31EntryGvAfter s2Step31EntryGvAfter
    s2Step31EntryGvRow s2Step31EntryGvOut 29 s2Step31EntryGvFresh [] [] []
    (growRow 771 s2Step31EntryGvFresh) ([]) s2Step31EntryGv_Incoming s2Step31EntryGv_checked h4 s2Step31EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step31EntryFvBefore s2Step31EntryFvAfter s2Step31EntryGvAfter
    s2Step31EntryFvRow s2Step31EntryFvOut 29 s2Step31EntryFvFresh [(s2Step31EntryGvRow,29)] [s2Step31EntryGvFresh] [s2Step31EntryGvOut]
    (growRow 770 s2Step31EntryFvFresh) ((growRow 771 s2Step31EntryGvFresh ++ [])) s2Step31EntryFv_Incoming s2Step31EntryFv_checked h3 s2Step31EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step31EntryGBefore s2Step31EntryGAfter s2Step31EntryGvAfter
    s2Step31EntryGRow s2Step31EntryGOut 253 s2Step31EntryGFresh [(s2Step31EntryFvRow,29),(s2Step31EntryGvRow,29)] [s2Step31EntryFvFresh,s2Step31EntryGvFresh] [s2Step31EntryFvOut,s2Step31EntryGvOut]
    (growRow 769 s2Step31EntryGFresh) ((growRow 770 s2Step31EntryFvFresh ++ (growRow 771 s2Step31EntryGvFresh ++ []))) s2Step31EntryG_Incoming s2Step31EntryG_checked h2 s2Step31EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step31EntryFBefore s2Step31EntryFAfter s2Step31EntryGvAfter
    s2Step31EntryFRow s2Step31EntryFOut 253 s2Step31EntryFFresh [(s2Step31EntryGRow,253),(s2Step31EntryFvRow,29),(s2Step31EntryGvRow,29)] [s2Step31EntryGFresh,s2Step31EntryFvFresh,s2Step31EntryGvFresh] [s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut]
    (growRow 768 s2Step31EntryFFresh) ((growRow 769 s2Step31EntryGFresh ++ (growRow 770 s2Step31EntryFvFresh ++ (growRow 771 s2Step31EntryGvFresh ++ [])))) s2Step31EntryF_Incoming s2Step31EntryF_checked h1 s2Step31EntryF_Outgoing
  exact h0
theorem s2Step31EntryBank_checked : compileHmrBankResizeLog .entry s2Step31EntryFBefore ⟨s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow⟩ ⟨253,253,29,29⟩ [s2Step31EntryFFresh,s2Step31EntryGFresh,s2Step31EntryFvFresh,s2Step31EntryGvFresh]=
    some (s2Step31EntryGvAfter,⟨s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut⟩,(growRow 768 s2Step31EntryFFresh ++ (growRow 769 s2Step31EntryGFresh ++ (growRow 770 s2Step31EntryFvFresh ++ (growRow 771 s2Step31EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step31EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
