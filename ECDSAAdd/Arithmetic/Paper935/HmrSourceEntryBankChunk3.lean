import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step48EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step48EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step48EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
theorem s2Step48EntryBank_incomingDistinct : ([s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48EntryBank_outgoingOwned : rowsOwned s2Step48EntryGvAfter [s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step48EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48EntryF_Incoming : rowsOwned s2Step48EntryFBefore [s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow] 0 s2Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48EntryF_Outgoing : rowsOwned s2Step48EntryGvAfter [s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] :=
  hmrRows_owned_drop s2Step48EntryGvAfter [s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] 0 s2Step48EntryBank_outgoingOwned
theorem s2Step48EntryG_Incoming : rowsOwned s2Step48EntryGBefore [s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow] 1 s2Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48EntryG_Outgoing : rowsOwned s2Step48EntryGvAfter [s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] :=
  hmrRows_owned_drop s2Step48EntryGvAfter [s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] 1 s2Step48EntryBank_outgoingOwned
theorem s2Step48EntryFv_Incoming : rowsOwned s2Step48EntryFvBefore [s2Step48EntryFvRow,s2Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow] 2 s2Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48EntryFv_Outgoing : rowsOwned s2Step48EntryGvAfter [s2Step48EntryFvOut,s2Step48EntryGvOut] :=
  hmrRows_owned_drop s2Step48EntryGvAfter [s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] 2 s2Step48EntryBank_outgoingOwned
theorem s2Step48EntryGv_Incoming : rowsOwned s2Step48EntryGvBefore [s2Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow] 3 s2Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48EntryGv_Outgoing : rowsOwned s2Step48EntryGvAfter [s2Step48EntryGvOut] :=
  hmrRows_owned_drop s2Step48EntryGvAfter [s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut] 3 s2Step48EntryBank_outgoingOwned
theorem s2Step48EntryBank_rows : planWindowRowsLog s2Step48EntryFBefore [(s2Step48EntryFRow,244),(s2Step48EntryGRow,244),(s2Step48EntryFvRow,37),(s2Step48EntryGvRow,37)] [s2Step48EntryFFresh,s2Step48EntryGFresh,s2Step48EntryFvFresh,s2Step48EntryGvFresh]=
    some (s2Step48EntryGvAfter,[s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut],(growRow 768 s2Step48EntryFFresh ++ (growRow 769 s2Step48EntryGFresh ++ (growRow 770 s2Step48EntryFvFresh ++ (growRow 771 s2Step48EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step48EntryGvAfter [] []=some (s2Step48EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step48EntryGvBefore s2Step48EntryGvAfter s2Step48EntryGvAfter
    s2Step48EntryGvRow s2Step48EntryGvOut 37 s2Step48EntryGvFresh [] [] []
    (growRow 771 s2Step48EntryGvFresh) ([]) s2Step48EntryGv_Incoming s2Step48EntryGv_checked h4 s2Step48EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step48EntryFvBefore s2Step48EntryFvAfter s2Step48EntryGvAfter
    s2Step48EntryFvRow s2Step48EntryFvOut 37 s2Step48EntryFvFresh [(s2Step48EntryGvRow,37)] [s2Step48EntryGvFresh] [s2Step48EntryGvOut]
    (growRow 770 s2Step48EntryFvFresh) ((growRow 771 s2Step48EntryGvFresh ++ [])) s2Step48EntryFv_Incoming s2Step48EntryFv_checked h3 s2Step48EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step48EntryGBefore s2Step48EntryGAfter s2Step48EntryGvAfter
    s2Step48EntryGRow s2Step48EntryGOut 244 s2Step48EntryGFresh [(s2Step48EntryFvRow,37),(s2Step48EntryGvRow,37)] [s2Step48EntryFvFresh,s2Step48EntryGvFresh] [s2Step48EntryFvOut,s2Step48EntryGvOut]
    (growRow 769 s2Step48EntryGFresh) ((growRow 770 s2Step48EntryFvFresh ++ (growRow 771 s2Step48EntryGvFresh ++ []))) s2Step48EntryG_Incoming s2Step48EntryG_checked h2 s2Step48EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step48EntryFBefore s2Step48EntryFAfter s2Step48EntryGvAfter
    s2Step48EntryFRow s2Step48EntryFOut 244 s2Step48EntryFFresh [(s2Step48EntryGRow,244),(s2Step48EntryFvRow,37),(s2Step48EntryGvRow,37)] [s2Step48EntryGFresh,s2Step48EntryFvFresh,s2Step48EntryGvFresh] [s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut]
    (growRow 768 s2Step48EntryFFresh) ((growRow 769 s2Step48EntryGFresh ++ (growRow 770 s2Step48EntryFvFresh ++ (growRow 771 s2Step48EntryGvFresh ++ [])))) s2Step48EntryF_Incoming s2Step48EntryF_checked h1 s2Step48EntryF_Outgoing
  exact h0
theorem s2Step48EntryBank_checked : compileHmrBankResizeLog .entry s2Step48EntryFBefore ⟨s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow⟩ ⟨244,244,37,37⟩ [s2Step48EntryFFresh,s2Step48EntryGFresh,s2Step48EntryFvFresh,s2Step48EntryGvFresh]=
    some (s2Step48EntryGvAfter,⟨s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut⟩,(growRow 768 s2Step48EntryFFresh ++ (growRow 769 s2Step48EntryGFresh ++ (growRow 770 s2Step48EntryFvFresh ++ (growRow 771 s2Step48EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step48EntryBank_rows]
  rfl
def s2Step49EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step49EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803],769⟩
def s2Step49EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step49EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
theorem s2Step49EntryBank_incomingDistinct : ([s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49EntryBank_outgoingOwned : rowsOwned s2Step49EntryGvAfter [s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step49EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49EntryF_Incoming : rowsOwned s2Step49EntryFBefore [s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow] 0 s2Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49EntryF_Outgoing : rowsOwned s2Step49EntryGvAfter [s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] :=
  hmrRows_owned_drop s2Step49EntryGvAfter [s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] 0 s2Step49EntryBank_outgoingOwned
theorem s2Step49EntryG_Incoming : rowsOwned s2Step49EntryGBefore [s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow] 1 s2Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49EntryG_Outgoing : rowsOwned s2Step49EntryGvAfter [s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] :=
  hmrRows_owned_drop s2Step49EntryGvAfter [s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] 1 s2Step49EntryBank_outgoingOwned
theorem s2Step49EntryFv_Incoming : rowsOwned s2Step49EntryFvBefore [s2Step49EntryFvRow,s2Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow] 2 s2Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49EntryFv_Outgoing : rowsOwned s2Step49EntryGvAfter [s2Step49EntryFvOut,s2Step49EntryGvOut] :=
  hmrRows_owned_drop s2Step49EntryGvAfter [s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] 2 s2Step49EntryBank_outgoingOwned
theorem s2Step49EntryGv_Incoming : rowsOwned s2Step49EntryGvBefore [s2Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow] 3 s2Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49EntryGv_Outgoing : rowsOwned s2Step49EntryGvAfter [s2Step49EntryGvOut] :=
  hmrRows_owned_drop s2Step49EntryGvAfter [s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut] 3 s2Step49EntryBank_outgoingOwned
theorem s2Step49EntryBank_rows : planWindowRowsLog s2Step49EntryFBefore [(s2Step49EntryFRow,244),(s2Step49EntryGRow,244),(s2Step49EntryFvRow,37),(s2Step49EntryGvRow,37)] [s2Step49EntryFFresh,s2Step49EntryGFresh,s2Step49EntryFvFresh,s2Step49EntryGvFresh]=
    some (s2Step49EntryGvAfter,[s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut],(growRow 768 s2Step49EntryFFresh ++ (growRow 769 s2Step49EntryGFresh ++ (growRow 770 s2Step49EntryFvFresh ++ (growRow 771 s2Step49EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step49EntryGvAfter [] []=some (s2Step49EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step49EntryGvBefore s2Step49EntryGvAfter s2Step49EntryGvAfter
    s2Step49EntryGvRow s2Step49EntryGvOut 37 s2Step49EntryGvFresh [] [] []
    (growRow 771 s2Step49EntryGvFresh) ([]) s2Step49EntryGv_Incoming s2Step49EntryGv_checked h4 s2Step49EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step49EntryFvBefore s2Step49EntryFvAfter s2Step49EntryGvAfter
    s2Step49EntryFvRow s2Step49EntryFvOut 37 s2Step49EntryFvFresh [(s2Step49EntryGvRow,37)] [s2Step49EntryGvFresh] [s2Step49EntryGvOut]
    (growRow 770 s2Step49EntryFvFresh) ((growRow 771 s2Step49EntryGvFresh ++ [])) s2Step49EntryFv_Incoming s2Step49EntryFv_checked h3 s2Step49EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step49EntryGBefore s2Step49EntryGAfter s2Step49EntryGvAfter
    s2Step49EntryGRow s2Step49EntryGOut 244 s2Step49EntryGFresh [(s2Step49EntryFvRow,37),(s2Step49EntryGvRow,37)] [s2Step49EntryFvFresh,s2Step49EntryGvFresh] [s2Step49EntryFvOut,s2Step49EntryGvOut]
    (growRow 769 s2Step49EntryGFresh) ((growRow 770 s2Step49EntryFvFresh ++ (growRow 771 s2Step49EntryGvFresh ++ []))) s2Step49EntryG_Incoming s2Step49EntryG_checked h2 s2Step49EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step49EntryFBefore s2Step49EntryFAfter s2Step49EntryGvAfter
    s2Step49EntryFRow s2Step49EntryFOut 244 s2Step49EntryFFresh [(s2Step49EntryGRow,244),(s2Step49EntryFvRow,37),(s2Step49EntryGvRow,37)] [s2Step49EntryGFresh,s2Step49EntryFvFresh,s2Step49EntryGvFresh] [s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut]
    (growRow 768 s2Step49EntryFFresh) ((growRow 769 s2Step49EntryGFresh ++ (growRow 770 s2Step49EntryFvFresh ++ (growRow 771 s2Step49EntryGvFresh ++ [])))) s2Step49EntryF_Incoming s2Step49EntryF_checked h1 s2Step49EntryF_Outgoing
  exact h0
theorem s2Step49EntryBank_checked : compileHmrBankResizeLog .entry s2Step49EntryFBefore ⟨s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow⟩ ⟨244,244,37,37⟩ [s2Step49EntryFFresh,s2Step49EntryGFresh,s2Step49EntryFvFresh,s2Step49EntryGvFresh]=
    some (s2Step49EntryGvAfter,⟨s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut⟩,(growRow 768 s2Step49EntryFFresh ++ (growRow 769 s2Step49EntryGFresh ++ (growRow 770 s2Step49EntryFvFresh ++ (growRow 771 s2Step49EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step49EntryBank_rows]
  rfl
def s2Step50EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step50EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩
def s2Step50EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step50EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808],771⟩
theorem s2Step50EntryBank_incomingDistinct : ([s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50EntryBank_outgoingOwned : rowsOwned s2Step50EntryGvAfter [s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step50EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50EntryF_Incoming : rowsOwned s2Step50EntryFBefore [s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow] 0 s2Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50EntryF_Outgoing : rowsOwned s2Step50EntryGvAfter [s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] :=
  hmrRows_owned_drop s2Step50EntryGvAfter [s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] 0 s2Step50EntryBank_outgoingOwned
theorem s2Step50EntryG_Incoming : rowsOwned s2Step50EntryGBefore [s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow] 1 s2Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50EntryG_Outgoing : rowsOwned s2Step50EntryGvAfter [s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] :=
  hmrRows_owned_drop s2Step50EntryGvAfter [s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] 1 s2Step50EntryBank_outgoingOwned
theorem s2Step50EntryFv_Incoming : rowsOwned s2Step50EntryFvBefore [s2Step50EntryFvRow,s2Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow] 2 s2Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50EntryFv_Outgoing : rowsOwned s2Step50EntryGvAfter [s2Step50EntryFvOut,s2Step50EntryGvOut] :=
  hmrRows_owned_drop s2Step50EntryGvAfter [s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] 2 s2Step50EntryBank_outgoingOwned
theorem s2Step50EntryGv_Incoming : rowsOwned s2Step50EntryGvBefore [s2Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow] 3 s2Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50EntryGv_Outgoing : rowsOwned s2Step50EntryGvAfter [s2Step50EntryGvOut] :=
  hmrRows_owned_drop s2Step50EntryGvAfter [s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut] 3 s2Step50EntryBank_outgoingOwned
theorem s2Step50EntryBank_rows : planWindowRowsLog s2Step50EntryFBefore [(s2Step50EntryFRow,243),(s2Step50EntryGRow,243),(s2Step50EntryFvRow,38),(s2Step50EntryGvRow,38)] [s2Step50EntryFFresh,s2Step50EntryGFresh,s2Step50EntryFvFresh,s2Step50EntryGvFresh]=
    some (s2Step50EntryGvAfter,[s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut],(growRow 768 s2Step50EntryFFresh ++ (growRow 769 s2Step50EntryGFresh ++ (growRow 770 s2Step50EntryFvFresh ++ (growRow 771 s2Step50EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step50EntryGvAfter [] []=some (s2Step50EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step50EntryGvBefore s2Step50EntryGvAfter s2Step50EntryGvAfter
    s2Step50EntryGvRow s2Step50EntryGvOut 38 s2Step50EntryGvFresh [] [] []
    (growRow 771 s2Step50EntryGvFresh) ([]) s2Step50EntryGv_Incoming s2Step50EntryGv_checked h4 s2Step50EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step50EntryFvBefore s2Step50EntryFvAfter s2Step50EntryGvAfter
    s2Step50EntryFvRow s2Step50EntryFvOut 38 s2Step50EntryFvFresh [(s2Step50EntryGvRow,38)] [s2Step50EntryGvFresh] [s2Step50EntryGvOut]
    (growRow 770 s2Step50EntryFvFresh) ((growRow 771 s2Step50EntryGvFresh ++ [])) s2Step50EntryFv_Incoming s2Step50EntryFv_checked h3 s2Step50EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step50EntryGBefore s2Step50EntryGAfter s2Step50EntryGvAfter
    s2Step50EntryGRow s2Step50EntryGOut 243 s2Step50EntryGFresh [(s2Step50EntryFvRow,38),(s2Step50EntryGvRow,38)] [s2Step50EntryFvFresh,s2Step50EntryGvFresh] [s2Step50EntryFvOut,s2Step50EntryGvOut]
    (growRow 769 s2Step50EntryGFresh) ((growRow 770 s2Step50EntryFvFresh ++ (growRow 771 s2Step50EntryGvFresh ++ []))) s2Step50EntryG_Incoming s2Step50EntryG_checked h2 s2Step50EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step50EntryFBefore s2Step50EntryFAfter s2Step50EntryGvAfter
    s2Step50EntryFRow s2Step50EntryFOut 243 s2Step50EntryFFresh [(s2Step50EntryGRow,243),(s2Step50EntryFvRow,38),(s2Step50EntryGvRow,38)] [s2Step50EntryGFresh,s2Step50EntryFvFresh,s2Step50EntryGvFresh] [s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut]
    (growRow 768 s2Step50EntryFFresh) ((growRow 769 s2Step50EntryGFresh ++ (growRow 770 s2Step50EntryFvFresh ++ (growRow 771 s2Step50EntryGvFresh ++ [])))) s2Step50EntryF_Incoming s2Step50EntryF_checked h1 s2Step50EntryF_Outgoing
  exact h0
theorem s2Step50EntryBank_checked : compileHmrBankResizeLog .entry s2Step50EntryFBefore ⟨s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow⟩ ⟨243,243,38,38⟩ [s2Step50EntryFFresh,s2Step50EntryGFresh,s2Step50EntryFvFresh,s2Step50EntryGvFresh]=
    some (s2Step50EntryGvAfter,⟨s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut⟩,(growRow 768 s2Step50EntryFFresh ++ (growRow 769 s2Step50EntryGFresh ++ (growRow 770 s2Step50EntryFvFresh ++ (growRow 771 s2Step50EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step50EntryBank_rows]
  rfl
def s2Step51EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step51EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807],769⟩
def s2Step51EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step51EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩
theorem s2Step51EntryBank_incomingDistinct : ([s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51EntryBank_outgoingOwned : rowsOwned s2Step51EntryGvAfter [s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step51EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51EntryF_Incoming : rowsOwned s2Step51EntryFBefore [s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow] 0 s2Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51EntryF_Outgoing : rowsOwned s2Step51EntryGvAfter [s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] :=
  hmrRows_owned_drop s2Step51EntryGvAfter [s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] 0 s2Step51EntryBank_outgoingOwned
theorem s2Step51EntryG_Incoming : rowsOwned s2Step51EntryGBefore [s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow] 1 s2Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51EntryG_Outgoing : rowsOwned s2Step51EntryGvAfter [s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] :=
  hmrRows_owned_drop s2Step51EntryGvAfter [s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] 1 s2Step51EntryBank_outgoingOwned
theorem s2Step51EntryFv_Incoming : rowsOwned s2Step51EntryFvBefore [s2Step51EntryFvRow,s2Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow] 2 s2Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51EntryFv_Outgoing : rowsOwned s2Step51EntryGvAfter [s2Step51EntryFvOut,s2Step51EntryGvOut] :=
  hmrRows_owned_drop s2Step51EntryGvAfter [s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] 2 s2Step51EntryBank_outgoingOwned
theorem s2Step51EntryGv_Incoming : rowsOwned s2Step51EntryGvBefore [s2Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow] 3 s2Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51EntryGv_Outgoing : rowsOwned s2Step51EntryGvAfter [s2Step51EntryGvOut] :=
  hmrRows_owned_drop s2Step51EntryGvAfter [s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut] 3 s2Step51EntryBank_outgoingOwned
theorem s2Step51EntryBank_rows : planWindowRowsLog s2Step51EntryFBefore [(s2Step51EntryFRow,243),(s2Step51EntryGRow,243),(s2Step51EntryFvRow,38),(s2Step51EntryGvRow,38)] [s2Step51EntryFFresh,s2Step51EntryGFresh,s2Step51EntryFvFresh,s2Step51EntryGvFresh]=
    some (s2Step51EntryGvAfter,[s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut],(growRow 768 s2Step51EntryFFresh ++ (growRow 769 s2Step51EntryGFresh ++ (growRow 770 s2Step51EntryFvFresh ++ (growRow 771 s2Step51EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step51EntryGvAfter [] []=some (s2Step51EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step51EntryGvBefore s2Step51EntryGvAfter s2Step51EntryGvAfter
    s2Step51EntryGvRow s2Step51EntryGvOut 38 s2Step51EntryGvFresh [] [] []
    (growRow 771 s2Step51EntryGvFresh) ([]) s2Step51EntryGv_Incoming s2Step51EntryGv_checked h4 s2Step51EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step51EntryFvBefore s2Step51EntryFvAfter s2Step51EntryGvAfter
    s2Step51EntryFvRow s2Step51EntryFvOut 38 s2Step51EntryFvFresh [(s2Step51EntryGvRow,38)] [s2Step51EntryGvFresh] [s2Step51EntryGvOut]
    (growRow 770 s2Step51EntryFvFresh) ((growRow 771 s2Step51EntryGvFresh ++ [])) s2Step51EntryFv_Incoming s2Step51EntryFv_checked h3 s2Step51EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step51EntryGBefore s2Step51EntryGAfter s2Step51EntryGvAfter
    s2Step51EntryGRow s2Step51EntryGOut 243 s2Step51EntryGFresh [(s2Step51EntryFvRow,38),(s2Step51EntryGvRow,38)] [s2Step51EntryFvFresh,s2Step51EntryGvFresh] [s2Step51EntryFvOut,s2Step51EntryGvOut]
    (growRow 769 s2Step51EntryGFresh) ((growRow 770 s2Step51EntryFvFresh ++ (growRow 771 s2Step51EntryGvFresh ++ []))) s2Step51EntryG_Incoming s2Step51EntryG_checked h2 s2Step51EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step51EntryFBefore s2Step51EntryFAfter s2Step51EntryGvAfter
    s2Step51EntryFRow s2Step51EntryFOut 243 s2Step51EntryFFresh [(s2Step51EntryGRow,243),(s2Step51EntryFvRow,38),(s2Step51EntryGvRow,38)] [s2Step51EntryGFresh,s2Step51EntryFvFresh,s2Step51EntryGvFresh] [s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut]
    (growRow 768 s2Step51EntryFFresh) ((growRow 769 s2Step51EntryGFresh ++ (growRow 770 s2Step51EntryFvFresh ++ (growRow 771 s2Step51EntryGvFresh ++ [])))) s2Step51EntryF_Incoming s2Step51EntryF_checked h1 s2Step51EntryF_Outgoing
  exact h0
theorem s2Step51EntryBank_checked : compileHmrBankResizeLog .entry s2Step51EntryFBefore ⟨s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow⟩ ⟨243,243,38,38⟩ [s2Step51EntryFFresh,s2Step51EntryGFresh,s2Step51EntryFvFresh,s2Step51EntryGvFresh]=
    some (s2Step51EntryGvAfter,⟨s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut⟩,(growRow 768 s2Step51EntryFFresh ++ (growRow 769 s2Step51EntryGFresh ++ (growRow 770 s2Step51EntryFvFresh ++ (growRow 771 s2Step51EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step51EntryBank_rows]
  rfl
def s2Step52EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753],768⟩
def s2Step52EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩
def s2Step52EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step52EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808],771⟩
theorem s2Step52EntryBank_incomingDistinct : ([s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52EntryBank_outgoingOwned : rowsOwned s2Step52EntryGvAfter [s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step52EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52EntryF_Incoming : rowsOwned s2Step52EntryFBefore [s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow] 0 s2Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52EntryF_Outgoing : rowsOwned s2Step52EntryGvAfter [s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] :=
  hmrRows_owned_drop s2Step52EntryGvAfter [s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] 0 s2Step52EntryBank_outgoingOwned
theorem s2Step52EntryG_Incoming : rowsOwned s2Step52EntryGBefore [s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow] 1 s2Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52EntryG_Outgoing : rowsOwned s2Step52EntryGvAfter [s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] :=
  hmrRows_owned_drop s2Step52EntryGvAfter [s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] 1 s2Step52EntryBank_outgoingOwned
theorem s2Step52EntryFv_Incoming : rowsOwned s2Step52EntryFvBefore [s2Step52EntryFvRow,s2Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow] 2 s2Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52EntryFv_Outgoing : rowsOwned s2Step52EntryGvAfter [s2Step52EntryFvOut,s2Step52EntryGvOut] :=
  hmrRows_owned_drop s2Step52EntryGvAfter [s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] 2 s2Step52EntryBank_outgoingOwned
theorem s2Step52EntryGv_Incoming : rowsOwned s2Step52EntryGvBefore [s2Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow] 3 s2Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52EntryGv_Outgoing : rowsOwned s2Step52EntryGvAfter [s2Step52EntryGvOut] :=
  hmrRows_owned_drop s2Step52EntryGvAfter [s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut] 3 s2Step52EntryBank_outgoingOwned
theorem s2Step52EntryBank_rows : planWindowRowsLog s2Step52EntryFBefore [(s2Step52EntryFRow,242),(s2Step52EntryGRow,242),(s2Step52EntryFvRow,39),(s2Step52EntryGvRow,39)] [s2Step52EntryFFresh,s2Step52EntryGFresh,s2Step52EntryFvFresh,s2Step52EntryGvFresh]=
    some (s2Step52EntryGvAfter,[s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut],(growRow 768 s2Step52EntryFFresh ++ (growRow 769 s2Step52EntryGFresh ++ (growRow 770 s2Step52EntryFvFresh ++ (growRow 771 s2Step52EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step52EntryGvAfter [] []=some (s2Step52EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step52EntryGvBefore s2Step52EntryGvAfter s2Step52EntryGvAfter
    s2Step52EntryGvRow s2Step52EntryGvOut 39 s2Step52EntryGvFresh [] [] []
    (growRow 771 s2Step52EntryGvFresh) ([]) s2Step52EntryGv_Incoming s2Step52EntryGv_checked h4 s2Step52EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step52EntryFvBefore s2Step52EntryFvAfter s2Step52EntryGvAfter
    s2Step52EntryFvRow s2Step52EntryFvOut 39 s2Step52EntryFvFresh [(s2Step52EntryGvRow,39)] [s2Step52EntryGvFresh] [s2Step52EntryGvOut]
    (growRow 770 s2Step52EntryFvFresh) ((growRow 771 s2Step52EntryGvFresh ++ [])) s2Step52EntryFv_Incoming s2Step52EntryFv_checked h3 s2Step52EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step52EntryGBefore s2Step52EntryGAfter s2Step52EntryGvAfter
    s2Step52EntryGRow s2Step52EntryGOut 242 s2Step52EntryGFresh [(s2Step52EntryFvRow,39),(s2Step52EntryGvRow,39)] [s2Step52EntryFvFresh,s2Step52EntryGvFresh] [s2Step52EntryFvOut,s2Step52EntryGvOut]
    (growRow 769 s2Step52EntryGFresh) ((growRow 770 s2Step52EntryFvFresh ++ (growRow 771 s2Step52EntryGvFresh ++ []))) s2Step52EntryG_Incoming s2Step52EntryG_checked h2 s2Step52EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step52EntryFBefore s2Step52EntryFAfter s2Step52EntryGvAfter
    s2Step52EntryFRow s2Step52EntryFOut 242 s2Step52EntryFFresh [(s2Step52EntryGRow,242),(s2Step52EntryFvRow,39),(s2Step52EntryGvRow,39)] [s2Step52EntryGFresh,s2Step52EntryFvFresh,s2Step52EntryGvFresh] [s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut]
    (growRow 768 s2Step52EntryFFresh) ((growRow 769 s2Step52EntryGFresh ++ (growRow 770 s2Step52EntryFvFresh ++ (growRow 771 s2Step52EntryGvFresh ++ [])))) s2Step52EntryF_Incoming s2Step52EntryF_checked h1 s2Step52EntryF_Outgoing
  exact h0
theorem s2Step52EntryBank_checked : compileHmrBankResizeLog .entry s2Step52EntryFBefore ⟨s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow⟩ ⟨242,242,39,39⟩ [s2Step52EntryFFresh,s2Step52EntryGFresh,s2Step52EntryFvFresh,s2Step52EntryGvFresh]=
    some (s2Step52EntryGvAfter,⟨s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut⟩,(growRow 768 s2Step52EntryFFresh ++ (growRow 769 s2Step52EntryGFresh ++ (growRow 770 s2Step52EntryFvFresh ++ (growRow 771 s2Step52EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step52EntryBank_rows]
  rfl
def s2Step53EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step53EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step53EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step53EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809],771⟩
theorem s2Step53EntryBank_incomingDistinct : ([s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53EntryBank_outgoingOwned : rowsOwned s2Step53EntryGvAfter [s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step53EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53EntryF_Incoming : rowsOwned s2Step53EntryFBefore [s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow] 0 s2Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53EntryF_Outgoing : rowsOwned s2Step53EntryGvAfter [s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] :=
  hmrRows_owned_drop s2Step53EntryGvAfter [s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] 0 s2Step53EntryBank_outgoingOwned
theorem s2Step53EntryG_Incoming : rowsOwned s2Step53EntryGBefore [s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow] 1 s2Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53EntryG_Outgoing : rowsOwned s2Step53EntryGvAfter [s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] :=
  hmrRows_owned_drop s2Step53EntryGvAfter [s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] 1 s2Step53EntryBank_outgoingOwned
theorem s2Step53EntryFv_Incoming : rowsOwned s2Step53EntryFvBefore [s2Step53EntryFvRow,s2Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow] 2 s2Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53EntryFv_Outgoing : rowsOwned s2Step53EntryGvAfter [s2Step53EntryFvOut,s2Step53EntryGvOut] :=
  hmrRows_owned_drop s2Step53EntryGvAfter [s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] 2 s2Step53EntryBank_outgoingOwned
theorem s2Step53EntryGv_Incoming : rowsOwned s2Step53EntryGvBefore [s2Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow] 3 s2Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53EntryGv_Outgoing : rowsOwned s2Step53EntryGvAfter [s2Step53EntryGvOut] :=
  hmrRows_owned_drop s2Step53EntryGvAfter [s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut] 3 s2Step53EntryBank_outgoingOwned
theorem s2Step53EntryBank_rows : planWindowRowsLog s2Step53EntryFBefore [(s2Step53EntryFRow,241),(s2Step53EntryGRow,241),(s2Step53EntryFvRow,39),(s2Step53EntryGvRow,39)] [s2Step53EntryFFresh,s2Step53EntryGFresh,s2Step53EntryFvFresh,s2Step53EntryGvFresh]=
    some (s2Step53EntryGvAfter,[s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut],(growRow 768 s2Step53EntryFFresh ++ (growRow 769 s2Step53EntryGFresh ++ (growRow 770 s2Step53EntryFvFresh ++ (growRow 771 s2Step53EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step53EntryGvAfter [] []=some (s2Step53EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step53EntryGvBefore s2Step53EntryGvAfter s2Step53EntryGvAfter
    s2Step53EntryGvRow s2Step53EntryGvOut 39 s2Step53EntryGvFresh [] [] []
    (growRow 771 s2Step53EntryGvFresh) ([]) s2Step53EntryGv_Incoming s2Step53EntryGv_checked h4 s2Step53EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step53EntryFvBefore s2Step53EntryFvAfter s2Step53EntryGvAfter
    s2Step53EntryFvRow s2Step53EntryFvOut 39 s2Step53EntryFvFresh [(s2Step53EntryGvRow,39)] [s2Step53EntryGvFresh] [s2Step53EntryGvOut]
    (growRow 770 s2Step53EntryFvFresh) ((growRow 771 s2Step53EntryGvFresh ++ [])) s2Step53EntryFv_Incoming s2Step53EntryFv_checked h3 s2Step53EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step53EntryGBefore s2Step53EntryGAfter s2Step53EntryGvAfter
    s2Step53EntryGRow s2Step53EntryGOut 241 s2Step53EntryGFresh [(s2Step53EntryFvRow,39),(s2Step53EntryGvRow,39)] [s2Step53EntryFvFresh,s2Step53EntryGvFresh] [s2Step53EntryFvOut,s2Step53EntryGvOut]
    (growRow 769 s2Step53EntryGFresh) ((growRow 770 s2Step53EntryFvFresh ++ (growRow 771 s2Step53EntryGvFresh ++ []))) s2Step53EntryG_Incoming s2Step53EntryG_checked h2 s2Step53EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step53EntryFBefore s2Step53EntryFAfter s2Step53EntryGvAfter
    s2Step53EntryFRow s2Step53EntryFOut 241 s2Step53EntryFFresh [(s2Step53EntryGRow,241),(s2Step53EntryFvRow,39),(s2Step53EntryGvRow,39)] [s2Step53EntryGFresh,s2Step53EntryFvFresh,s2Step53EntryGvFresh] [s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut]
    (growRow 768 s2Step53EntryFFresh) ((growRow 769 s2Step53EntryGFresh ++ (growRow 770 s2Step53EntryFvFresh ++ (growRow 771 s2Step53EntryGvFresh ++ [])))) s2Step53EntryF_Incoming s2Step53EntryF_checked h1 s2Step53EntryF_Outgoing
  exact h0
theorem s2Step53EntryBank_checked : compileHmrBankResizeLog .entry s2Step53EntryFBefore ⟨s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow⟩ ⟨241,241,39,39⟩ [s2Step53EntryFFresh,s2Step53EntryGFresh,s2Step53EntryFvFresh,s2Step53EntryGvFresh]=
    some (s2Step53EntryGvAfter,⟨s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut⟩,(growRow 768 s2Step53EntryFFresh ++ (growRow 769 s2Step53EntryGFresh ++ (growRow 770 s2Step53EntryFvFresh ++ (growRow 771 s2Step53EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step53EntryBank_rows]
  rfl
def s2Step54EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step54EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step54EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step54EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811],771⟩
theorem s2Step54EntryBank_incomingDistinct : ([s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54EntryBank_outgoingOwned : rowsOwned s2Step54EntryGvAfter [s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step54EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54EntryF_Incoming : rowsOwned s2Step54EntryFBefore [s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow] 0 s2Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54EntryF_Outgoing : rowsOwned s2Step54EntryGvAfter [s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] :=
  hmrRows_owned_drop s2Step54EntryGvAfter [s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] 0 s2Step54EntryBank_outgoingOwned
theorem s2Step54EntryG_Incoming : rowsOwned s2Step54EntryGBefore [s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow] 1 s2Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54EntryG_Outgoing : rowsOwned s2Step54EntryGvAfter [s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] :=
  hmrRows_owned_drop s2Step54EntryGvAfter [s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] 1 s2Step54EntryBank_outgoingOwned
theorem s2Step54EntryFv_Incoming : rowsOwned s2Step54EntryFvBefore [s2Step54EntryFvRow,s2Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow] 2 s2Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54EntryFv_Outgoing : rowsOwned s2Step54EntryGvAfter [s2Step54EntryFvOut,s2Step54EntryGvOut] :=
  hmrRows_owned_drop s2Step54EntryGvAfter [s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] 2 s2Step54EntryBank_outgoingOwned
theorem s2Step54EntryGv_Incoming : rowsOwned s2Step54EntryGvBefore [s2Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow] 3 s2Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54EntryGv_Outgoing : rowsOwned s2Step54EntryGvAfter [s2Step54EntryGvOut] :=
  hmrRows_owned_drop s2Step54EntryGvAfter [s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut] 3 s2Step54EntryBank_outgoingOwned
theorem s2Step54EntryBank_rows : planWindowRowsLog s2Step54EntryFBefore [(s2Step54EntryFRow,241),(s2Step54EntryGRow,241),(s2Step54EntryFvRow,40),(s2Step54EntryGvRow,40)] [s2Step54EntryFFresh,s2Step54EntryGFresh,s2Step54EntryFvFresh,s2Step54EntryGvFresh]=
    some (s2Step54EntryGvAfter,[s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut],(growRow 768 s2Step54EntryFFresh ++ (growRow 769 s2Step54EntryGFresh ++ (growRow 770 s2Step54EntryFvFresh ++ (growRow 771 s2Step54EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step54EntryGvAfter [] []=some (s2Step54EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step54EntryGvBefore s2Step54EntryGvAfter s2Step54EntryGvAfter
    s2Step54EntryGvRow s2Step54EntryGvOut 40 s2Step54EntryGvFresh [] [] []
    (growRow 771 s2Step54EntryGvFresh) ([]) s2Step54EntryGv_Incoming s2Step54EntryGv_checked h4 s2Step54EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step54EntryFvBefore s2Step54EntryFvAfter s2Step54EntryGvAfter
    s2Step54EntryFvRow s2Step54EntryFvOut 40 s2Step54EntryFvFresh [(s2Step54EntryGvRow,40)] [s2Step54EntryGvFresh] [s2Step54EntryGvOut]
    (growRow 770 s2Step54EntryFvFresh) ((growRow 771 s2Step54EntryGvFresh ++ [])) s2Step54EntryFv_Incoming s2Step54EntryFv_checked h3 s2Step54EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step54EntryGBefore s2Step54EntryGAfter s2Step54EntryGvAfter
    s2Step54EntryGRow s2Step54EntryGOut 241 s2Step54EntryGFresh [(s2Step54EntryFvRow,40),(s2Step54EntryGvRow,40)] [s2Step54EntryFvFresh,s2Step54EntryGvFresh] [s2Step54EntryFvOut,s2Step54EntryGvOut]
    (growRow 769 s2Step54EntryGFresh) ((growRow 770 s2Step54EntryFvFresh ++ (growRow 771 s2Step54EntryGvFresh ++ []))) s2Step54EntryG_Incoming s2Step54EntryG_checked h2 s2Step54EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step54EntryFBefore s2Step54EntryFAfter s2Step54EntryGvAfter
    s2Step54EntryFRow s2Step54EntryFOut 241 s2Step54EntryFFresh [(s2Step54EntryGRow,241),(s2Step54EntryFvRow,40),(s2Step54EntryGvRow,40)] [s2Step54EntryGFresh,s2Step54EntryFvFresh,s2Step54EntryGvFresh] [s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut]
    (growRow 768 s2Step54EntryFFresh) ((growRow 769 s2Step54EntryGFresh ++ (growRow 770 s2Step54EntryFvFresh ++ (growRow 771 s2Step54EntryGvFresh ++ [])))) s2Step54EntryF_Incoming s2Step54EntryF_checked h1 s2Step54EntryF_Outgoing
  exact h0
theorem s2Step54EntryBank_checked : compileHmrBankResizeLog .entry s2Step54EntryFBefore ⟨s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow⟩ ⟨241,241,40,40⟩ [s2Step54EntryFFresh,s2Step54EntryGFresh,s2Step54EntryFvFresh,s2Step54EntryGvFresh]=
    some (s2Step54EntryGvAfter,⟨s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut⟩,(growRow 768 s2Step54EntryFFresh ++ (growRow 769 s2Step54EntryGFresh ++ (growRow 770 s2Step54EntryFvFresh ++ (growRow 771 s2Step54EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step54EntryBank_rows]
  rfl
def s2Step55EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step55EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807],769⟩
def s2Step55EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩
def s2Step55EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
theorem s2Step55EntryBank_incomingDistinct : ([s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55EntryBank_outgoingOwned : rowsOwned s2Step55EntryGvAfter [s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step55EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55EntryF_Incoming : rowsOwned s2Step55EntryFBefore [s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow] 0 s2Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55EntryF_Outgoing : rowsOwned s2Step55EntryGvAfter [s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] :=
  hmrRows_owned_drop s2Step55EntryGvAfter [s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] 0 s2Step55EntryBank_outgoingOwned
theorem s2Step55EntryG_Incoming : rowsOwned s2Step55EntryGBefore [s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow] 1 s2Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55EntryG_Outgoing : rowsOwned s2Step55EntryGvAfter [s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] :=
  hmrRows_owned_drop s2Step55EntryGvAfter [s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] 1 s2Step55EntryBank_outgoingOwned
theorem s2Step55EntryFv_Incoming : rowsOwned s2Step55EntryFvBefore [s2Step55EntryFvRow,s2Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow] 2 s2Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55EntryFv_Outgoing : rowsOwned s2Step55EntryGvAfter [s2Step55EntryFvOut,s2Step55EntryGvOut] :=
  hmrRows_owned_drop s2Step55EntryGvAfter [s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] 2 s2Step55EntryBank_outgoingOwned
theorem s2Step55EntryGv_Incoming : rowsOwned s2Step55EntryGvBefore [s2Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow] 3 s2Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55EntryGv_Outgoing : rowsOwned s2Step55EntryGvAfter [s2Step55EntryGvOut] :=
  hmrRows_owned_drop s2Step55EntryGvAfter [s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut] 3 s2Step55EntryBank_outgoingOwned
theorem s2Step55EntryBank_rows : planWindowRowsLog s2Step55EntryFBefore [(s2Step55EntryFRow,241),(s2Step55EntryGRow,241),(s2Step55EntryFvRow,41),(s2Step55EntryGvRow,41)] [s2Step55EntryFFresh,s2Step55EntryGFresh,s2Step55EntryFvFresh,s2Step55EntryGvFresh]=
    some (s2Step55EntryGvAfter,[s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut],(growRow 768 s2Step55EntryFFresh ++ (growRow 769 s2Step55EntryGFresh ++ (growRow 770 s2Step55EntryFvFresh ++ (growRow 771 s2Step55EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step55EntryGvAfter [] []=some (s2Step55EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step55EntryGvBefore s2Step55EntryGvAfter s2Step55EntryGvAfter
    s2Step55EntryGvRow s2Step55EntryGvOut 41 s2Step55EntryGvFresh [] [] []
    (growRow 771 s2Step55EntryGvFresh) ([]) s2Step55EntryGv_Incoming s2Step55EntryGv_checked h4 s2Step55EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step55EntryFvBefore s2Step55EntryFvAfter s2Step55EntryGvAfter
    s2Step55EntryFvRow s2Step55EntryFvOut 41 s2Step55EntryFvFresh [(s2Step55EntryGvRow,41)] [s2Step55EntryGvFresh] [s2Step55EntryGvOut]
    (growRow 770 s2Step55EntryFvFresh) ((growRow 771 s2Step55EntryGvFresh ++ [])) s2Step55EntryFv_Incoming s2Step55EntryFv_checked h3 s2Step55EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step55EntryGBefore s2Step55EntryGAfter s2Step55EntryGvAfter
    s2Step55EntryGRow s2Step55EntryGOut 241 s2Step55EntryGFresh [(s2Step55EntryFvRow,41),(s2Step55EntryGvRow,41)] [s2Step55EntryFvFresh,s2Step55EntryGvFresh] [s2Step55EntryFvOut,s2Step55EntryGvOut]
    (growRow 769 s2Step55EntryGFresh) ((growRow 770 s2Step55EntryFvFresh ++ (growRow 771 s2Step55EntryGvFresh ++ []))) s2Step55EntryG_Incoming s2Step55EntryG_checked h2 s2Step55EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step55EntryFBefore s2Step55EntryFAfter s2Step55EntryGvAfter
    s2Step55EntryFRow s2Step55EntryFOut 241 s2Step55EntryFFresh [(s2Step55EntryGRow,241),(s2Step55EntryFvRow,41),(s2Step55EntryGvRow,41)] [s2Step55EntryGFresh,s2Step55EntryFvFresh,s2Step55EntryGvFresh] [s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut]
    (growRow 768 s2Step55EntryFFresh) ((growRow 769 s2Step55EntryGFresh ++ (growRow 770 s2Step55EntryFvFresh ++ (growRow 771 s2Step55EntryGvFresh ++ [])))) s2Step55EntryF_Incoming s2Step55EntryF_checked h1 s2Step55EntryF_Outgoing
  exact h0
theorem s2Step55EntryBank_checked : compileHmrBankResizeLog .entry s2Step55EntryFBefore ⟨s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow⟩ ⟨241,241,41,41⟩ [s2Step55EntryFFresh,s2Step55EntryGFresh,s2Step55EntryFvFresh,s2Step55EntryGvFresh]=
    some (s2Step55EntryGvAfter,⟨s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut⟩,(growRow 768 s2Step55EntryFFresh ++ (growRow 769 s2Step55EntryGFresh ++ (growRow 770 s2Step55EntryFvFresh ++ (growRow 771 s2Step55EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step55EntryBank_rows]
  rfl
def s2Step56EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step56EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩
def s2Step56EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step56EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
theorem s2Step56EntryBank_incomingDistinct : ([s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56EntryBank_outgoingOwned : rowsOwned s2Step56EntryGvAfter [s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step56EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56EntryF_Incoming : rowsOwned s2Step56EntryFBefore [s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow] 0 s2Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56EntryF_Outgoing : rowsOwned s2Step56EntryGvAfter [s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] :=
  hmrRows_owned_drop s2Step56EntryGvAfter [s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] 0 s2Step56EntryBank_outgoingOwned
theorem s2Step56EntryG_Incoming : rowsOwned s2Step56EntryGBefore [s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow] 1 s2Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56EntryG_Outgoing : rowsOwned s2Step56EntryGvAfter [s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] :=
  hmrRows_owned_drop s2Step56EntryGvAfter [s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] 1 s2Step56EntryBank_outgoingOwned
theorem s2Step56EntryFv_Incoming : rowsOwned s2Step56EntryFvBefore [s2Step56EntryFvRow,s2Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow] 2 s2Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56EntryFv_Outgoing : rowsOwned s2Step56EntryGvAfter [s2Step56EntryFvOut,s2Step56EntryGvOut] :=
  hmrRows_owned_drop s2Step56EntryGvAfter [s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] 2 s2Step56EntryBank_outgoingOwned
theorem s2Step56EntryGv_Incoming : rowsOwned s2Step56EntryGvBefore [s2Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow] 3 s2Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56EntryGv_Outgoing : rowsOwned s2Step56EntryGvAfter [s2Step56EntryGvOut] :=
  hmrRows_owned_drop s2Step56EntryGvAfter [s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut] 3 s2Step56EntryBank_outgoingOwned
theorem s2Step56EntryBank_rows : planWindowRowsLog s2Step56EntryFBefore [(s2Step56EntryFRow,240),(s2Step56EntryGRow,240),(s2Step56EntryFvRow,41),(s2Step56EntryGvRow,41)] [s2Step56EntryFFresh,s2Step56EntryGFresh,s2Step56EntryFvFresh,s2Step56EntryGvFresh]=
    some (s2Step56EntryGvAfter,[s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut],(growRow 768 s2Step56EntryFFresh ++ (growRow 769 s2Step56EntryGFresh ++ (growRow 770 s2Step56EntryFvFresh ++ (growRow 771 s2Step56EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step56EntryGvAfter [] []=some (s2Step56EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step56EntryGvBefore s2Step56EntryGvAfter s2Step56EntryGvAfter
    s2Step56EntryGvRow s2Step56EntryGvOut 41 s2Step56EntryGvFresh [] [] []
    (growRow 771 s2Step56EntryGvFresh) ([]) s2Step56EntryGv_Incoming s2Step56EntryGv_checked h4 s2Step56EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step56EntryFvBefore s2Step56EntryFvAfter s2Step56EntryGvAfter
    s2Step56EntryFvRow s2Step56EntryFvOut 41 s2Step56EntryFvFresh [(s2Step56EntryGvRow,41)] [s2Step56EntryGvFresh] [s2Step56EntryGvOut]
    (growRow 770 s2Step56EntryFvFresh) ((growRow 771 s2Step56EntryGvFresh ++ [])) s2Step56EntryFv_Incoming s2Step56EntryFv_checked h3 s2Step56EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step56EntryGBefore s2Step56EntryGAfter s2Step56EntryGvAfter
    s2Step56EntryGRow s2Step56EntryGOut 240 s2Step56EntryGFresh [(s2Step56EntryFvRow,41),(s2Step56EntryGvRow,41)] [s2Step56EntryFvFresh,s2Step56EntryGvFresh] [s2Step56EntryFvOut,s2Step56EntryGvOut]
    (growRow 769 s2Step56EntryGFresh) ((growRow 770 s2Step56EntryFvFresh ++ (growRow 771 s2Step56EntryGvFresh ++ []))) s2Step56EntryG_Incoming s2Step56EntryG_checked h2 s2Step56EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step56EntryFBefore s2Step56EntryFAfter s2Step56EntryGvAfter
    s2Step56EntryFRow s2Step56EntryFOut 240 s2Step56EntryFFresh [(s2Step56EntryGRow,240),(s2Step56EntryFvRow,41),(s2Step56EntryGvRow,41)] [s2Step56EntryGFresh,s2Step56EntryFvFresh,s2Step56EntryGvFresh] [s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut]
    (growRow 768 s2Step56EntryFFresh) ((growRow 769 s2Step56EntryGFresh ++ (growRow 770 s2Step56EntryFvFresh ++ (growRow 771 s2Step56EntryGvFresh ++ [])))) s2Step56EntryF_Incoming s2Step56EntryF_checked h1 s2Step56EntryF_Outgoing
  exact h0
theorem s2Step56EntryBank_checked : compileHmrBankResizeLog .entry s2Step56EntryFBefore ⟨s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow⟩ ⟨240,240,41,41⟩ [s2Step56EntryFFresh,s2Step56EntryGFresh,s2Step56EntryFvFresh,s2Step56EntryGvFresh]=
    some (s2Step56EntryGvAfter,⟨s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut⟩,(growRow 768 s2Step56EntryFFresh ++ (growRow 769 s2Step56EntryGFresh ++ (growRow 770 s2Step56EntryFvFresh ++ (growRow 771 s2Step56EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step56EntryBank_rows]
  rfl
def s2Step57EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step57EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814],769⟩
def s2Step57EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step57EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
theorem s2Step57EntryBank_incomingDistinct : ([s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57EntryBank_outgoingOwned : rowsOwned s2Step57EntryGvAfter [s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step57EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57EntryF_Incoming : rowsOwned s2Step57EntryFBefore [s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow] 0 s2Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57EntryF_Outgoing : rowsOwned s2Step57EntryGvAfter [s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] :=
  hmrRows_owned_drop s2Step57EntryGvAfter [s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] 0 s2Step57EntryBank_outgoingOwned
theorem s2Step57EntryG_Incoming : rowsOwned s2Step57EntryGBefore [s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow] 1 s2Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57EntryG_Outgoing : rowsOwned s2Step57EntryGvAfter [s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] :=
  hmrRows_owned_drop s2Step57EntryGvAfter [s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] 1 s2Step57EntryBank_outgoingOwned
theorem s2Step57EntryFv_Incoming : rowsOwned s2Step57EntryFvBefore [s2Step57EntryFvRow,s2Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow] 2 s2Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57EntryFv_Outgoing : rowsOwned s2Step57EntryGvAfter [s2Step57EntryFvOut,s2Step57EntryGvOut] :=
  hmrRows_owned_drop s2Step57EntryGvAfter [s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] 2 s2Step57EntryBank_outgoingOwned
theorem s2Step57EntryGv_Incoming : rowsOwned s2Step57EntryGvBefore [s2Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow] 3 s2Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57EntryGv_Outgoing : rowsOwned s2Step57EntryGvAfter [s2Step57EntryGvOut] :=
  hmrRows_owned_drop s2Step57EntryGvAfter [s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut] 3 s2Step57EntryBank_outgoingOwned
theorem s2Step57EntryBank_rows : planWindowRowsLog s2Step57EntryFBefore [(s2Step57EntryFRow,240),(s2Step57EntryGRow,240),(s2Step57EntryFvRow,41),(s2Step57EntryGvRow,41)] [s2Step57EntryFFresh,s2Step57EntryGFresh,s2Step57EntryFvFresh,s2Step57EntryGvFresh]=
    some (s2Step57EntryGvAfter,[s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut],(growRow 768 s2Step57EntryFFresh ++ (growRow 769 s2Step57EntryGFresh ++ (growRow 770 s2Step57EntryFvFresh ++ (growRow 771 s2Step57EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step57EntryGvAfter [] []=some (s2Step57EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step57EntryGvBefore s2Step57EntryGvAfter s2Step57EntryGvAfter
    s2Step57EntryGvRow s2Step57EntryGvOut 41 s2Step57EntryGvFresh [] [] []
    (growRow 771 s2Step57EntryGvFresh) ([]) s2Step57EntryGv_Incoming s2Step57EntryGv_checked h4 s2Step57EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step57EntryFvBefore s2Step57EntryFvAfter s2Step57EntryGvAfter
    s2Step57EntryFvRow s2Step57EntryFvOut 41 s2Step57EntryFvFresh [(s2Step57EntryGvRow,41)] [s2Step57EntryGvFresh] [s2Step57EntryGvOut]
    (growRow 770 s2Step57EntryFvFresh) ((growRow 771 s2Step57EntryGvFresh ++ [])) s2Step57EntryFv_Incoming s2Step57EntryFv_checked h3 s2Step57EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step57EntryGBefore s2Step57EntryGAfter s2Step57EntryGvAfter
    s2Step57EntryGRow s2Step57EntryGOut 240 s2Step57EntryGFresh [(s2Step57EntryFvRow,41),(s2Step57EntryGvRow,41)] [s2Step57EntryFvFresh,s2Step57EntryGvFresh] [s2Step57EntryFvOut,s2Step57EntryGvOut]
    (growRow 769 s2Step57EntryGFresh) ((growRow 770 s2Step57EntryFvFresh ++ (growRow 771 s2Step57EntryGvFresh ++ []))) s2Step57EntryG_Incoming s2Step57EntryG_checked h2 s2Step57EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step57EntryFBefore s2Step57EntryFAfter s2Step57EntryGvAfter
    s2Step57EntryFRow s2Step57EntryFOut 240 s2Step57EntryFFresh [(s2Step57EntryGRow,240),(s2Step57EntryFvRow,41),(s2Step57EntryGvRow,41)] [s2Step57EntryGFresh,s2Step57EntryFvFresh,s2Step57EntryGvFresh] [s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut]
    (growRow 768 s2Step57EntryFFresh) ((growRow 769 s2Step57EntryGFresh ++ (growRow 770 s2Step57EntryFvFresh ++ (growRow 771 s2Step57EntryGvFresh ++ [])))) s2Step57EntryF_Incoming s2Step57EntryF_checked h1 s2Step57EntryF_Outgoing
  exact h0
theorem s2Step57EntryBank_checked : compileHmrBankResizeLog .entry s2Step57EntryFBefore ⟨s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow⟩ ⟨240,240,41,41⟩ [s2Step57EntryFFresh,s2Step57EntryGFresh,s2Step57EntryFvFresh,s2Step57EntryGvFresh]=
    some (s2Step57EntryGvAfter,⟨s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut⟩,(growRow 768 s2Step57EntryFFresh ++ (growRow 769 s2Step57EntryGFresh ++ (growRow 770 s2Step57EntryFvFresh ++ (growRow 771 s2Step57EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step57EntryBank_rows]
  rfl
def s2Step58EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step58EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817],769⟩
def s2Step58EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step58EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
theorem s2Step58EntryBank_incomingDistinct : ([s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58EntryBank_outgoingOwned : rowsOwned s2Step58EntryGvAfter [s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step58EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58EntryF_Incoming : rowsOwned s2Step58EntryFBefore [s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow] 0 s2Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58EntryF_Outgoing : rowsOwned s2Step58EntryGvAfter [s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] :=
  hmrRows_owned_drop s2Step58EntryGvAfter [s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] 0 s2Step58EntryBank_outgoingOwned
theorem s2Step58EntryG_Incoming : rowsOwned s2Step58EntryGBefore [s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow] 1 s2Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58EntryG_Outgoing : rowsOwned s2Step58EntryGvAfter [s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] :=
  hmrRows_owned_drop s2Step58EntryGvAfter [s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] 1 s2Step58EntryBank_outgoingOwned
theorem s2Step58EntryFv_Incoming : rowsOwned s2Step58EntryFvBefore [s2Step58EntryFvRow,s2Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow] 2 s2Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58EntryFv_Outgoing : rowsOwned s2Step58EntryGvAfter [s2Step58EntryFvOut,s2Step58EntryGvOut] :=
  hmrRows_owned_drop s2Step58EntryGvAfter [s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] 2 s2Step58EntryBank_outgoingOwned
theorem s2Step58EntryGv_Incoming : rowsOwned s2Step58EntryGvBefore [s2Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow] 3 s2Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58EntryGv_Outgoing : rowsOwned s2Step58EntryGvAfter [s2Step58EntryGvOut] :=
  hmrRows_owned_drop s2Step58EntryGvAfter [s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut] 3 s2Step58EntryBank_outgoingOwned
theorem s2Step58EntryBank_rows : planWindowRowsLog s2Step58EntryFBefore [(s2Step58EntryFRow,239),(s2Step58EntryGRow,239),(s2Step58EntryFvRow,41),(s2Step58EntryGvRow,41)] [s2Step58EntryFFresh,s2Step58EntryGFresh,s2Step58EntryFvFresh,s2Step58EntryGvFresh]=
    some (s2Step58EntryGvAfter,[s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut],(growRow 768 s2Step58EntryFFresh ++ (growRow 769 s2Step58EntryGFresh ++ (growRow 770 s2Step58EntryFvFresh ++ (growRow 771 s2Step58EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step58EntryGvAfter [] []=some (s2Step58EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step58EntryGvBefore s2Step58EntryGvAfter s2Step58EntryGvAfter
    s2Step58EntryGvRow s2Step58EntryGvOut 41 s2Step58EntryGvFresh [] [] []
    (growRow 771 s2Step58EntryGvFresh) ([]) s2Step58EntryGv_Incoming s2Step58EntryGv_checked h4 s2Step58EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step58EntryFvBefore s2Step58EntryFvAfter s2Step58EntryGvAfter
    s2Step58EntryFvRow s2Step58EntryFvOut 41 s2Step58EntryFvFresh [(s2Step58EntryGvRow,41)] [s2Step58EntryGvFresh] [s2Step58EntryGvOut]
    (growRow 770 s2Step58EntryFvFresh) ((growRow 771 s2Step58EntryGvFresh ++ [])) s2Step58EntryFv_Incoming s2Step58EntryFv_checked h3 s2Step58EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step58EntryGBefore s2Step58EntryGAfter s2Step58EntryGvAfter
    s2Step58EntryGRow s2Step58EntryGOut 239 s2Step58EntryGFresh [(s2Step58EntryFvRow,41),(s2Step58EntryGvRow,41)] [s2Step58EntryFvFresh,s2Step58EntryGvFresh] [s2Step58EntryFvOut,s2Step58EntryGvOut]
    (growRow 769 s2Step58EntryGFresh) ((growRow 770 s2Step58EntryFvFresh ++ (growRow 771 s2Step58EntryGvFresh ++ []))) s2Step58EntryG_Incoming s2Step58EntryG_checked h2 s2Step58EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step58EntryFBefore s2Step58EntryFAfter s2Step58EntryGvAfter
    s2Step58EntryFRow s2Step58EntryFOut 239 s2Step58EntryFFresh [(s2Step58EntryGRow,239),(s2Step58EntryFvRow,41),(s2Step58EntryGvRow,41)] [s2Step58EntryGFresh,s2Step58EntryFvFresh,s2Step58EntryGvFresh] [s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut]
    (growRow 768 s2Step58EntryFFresh) ((growRow 769 s2Step58EntryGFresh ++ (growRow 770 s2Step58EntryFvFresh ++ (growRow 771 s2Step58EntryGvFresh ++ [])))) s2Step58EntryF_Incoming s2Step58EntryF_checked h1 s2Step58EntryF_Outgoing
  exact h0
theorem s2Step58EntryBank_checked : compileHmrBankResizeLog .entry s2Step58EntryFBefore ⟨s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow⟩ ⟨239,239,41,41⟩ [s2Step58EntryFFresh,s2Step58EntryGFresh,s2Step58EntryFvFresh,s2Step58EntryGvFresh]=
    some (s2Step58EntryGvAfter,⟨s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut⟩,(growRow 768 s2Step58EntryFFresh ++ (growRow 769 s2Step58EntryGFresh ++ (growRow 770 s2Step58EntryFvFresh ++ (growRow 771 s2Step58EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step58EntryBank_rows]
  rfl
def s2Step59EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step59EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816],769⟩
def s2Step59EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
def s2Step59EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815],771⟩
theorem s2Step59EntryBank_incomingDistinct : ([s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59EntryBank_outgoingOwned : rowsOwned s2Step59EntryGvAfter [s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step59EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59EntryF_Incoming : rowsOwned s2Step59EntryFBefore [s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow] 0 s2Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59EntryF_Outgoing : rowsOwned s2Step59EntryGvAfter [s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] :=
  hmrRows_owned_drop s2Step59EntryGvAfter [s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] 0 s2Step59EntryBank_outgoingOwned
theorem s2Step59EntryG_Incoming : rowsOwned s2Step59EntryGBefore [s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow] 1 s2Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59EntryG_Outgoing : rowsOwned s2Step59EntryGvAfter [s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] :=
  hmrRows_owned_drop s2Step59EntryGvAfter [s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] 1 s2Step59EntryBank_outgoingOwned
theorem s2Step59EntryFv_Incoming : rowsOwned s2Step59EntryFvBefore [s2Step59EntryFvRow,s2Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow] 2 s2Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59EntryFv_Outgoing : rowsOwned s2Step59EntryGvAfter [s2Step59EntryFvOut,s2Step59EntryGvOut] :=
  hmrRows_owned_drop s2Step59EntryGvAfter [s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] 2 s2Step59EntryBank_outgoingOwned
theorem s2Step59EntryGv_Incoming : rowsOwned s2Step59EntryGvBefore [s2Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow] 3 s2Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59EntryGv_Outgoing : rowsOwned s2Step59EntryGvAfter [s2Step59EntryGvOut] :=
  hmrRows_owned_drop s2Step59EntryGvAfter [s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut] 3 s2Step59EntryBank_outgoingOwned
theorem s2Step59EntryBank_rows : planWindowRowsLog s2Step59EntryFBefore [(s2Step59EntryFRow,239),(s2Step59EntryGRow,239),(s2Step59EntryFvRow,42),(s2Step59EntryGvRow,42)] [s2Step59EntryFFresh,s2Step59EntryGFresh,s2Step59EntryFvFresh,s2Step59EntryGvFresh]=
    some (s2Step59EntryGvAfter,[s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut],(growRow 768 s2Step59EntryFFresh ++ (growRow 769 s2Step59EntryGFresh ++ (growRow 770 s2Step59EntryFvFresh ++ (growRow 771 s2Step59EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step59EntryGvAfter [] []=some (s2Step59EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step59EntryGvBefore s2Step59EntryGvAfter s2Step59EntryGvAfter
    s2Step59EntryGvRow s2Step59EntryGvOut 42 s2Step59EntryGvFresh [] [] []
    (growRow 771 s2Step59EntryGvFresh) ([]) s2Step59EntryGv_Incoming s2Step59EntryGv_checked h4 s2Step59EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step59EntryFvBefore s2Step59EntryFvAfter s2Step59EntryGvAfter
    s2Step59EntryFvRow s2Step59EntryFvOut 42 s2Step59EntryFvFresh [(s2Step59EntryGvRow,42)] [s2Step59EntryGvFresh] [s2Step59EntryGvOut]
    (growRow 770 s2Step59EntryFvFresh) ((growRow 771 s2Step59EntryGvFresh ++ [])) s2Step59EntryFv_Incoming s2Step59EntryFv_checked h3 s2Step59EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step59EntryGBefore s2Step59EntryGAfter s2Step59EntryGvAfter
    s2Step59EntryGRow s2Step59EntryGOut 239 s2Step59EntryGFresh [(s2Step59EntryFvRow,42),(s2Step59EntryGvRow,42)] [s2Step59EntryFvFresh,s2Step59EntryGvFresh] [s2Step59EntryFvOut,s2Step59EntryGvOut]
    (growRow 769 s2Step59EntryGFresh) ((growRow 770 s2Step59EntryFvFresh ++ (growRow 771 s2Step59EntryGvFresh ++ []))) s2Step59EntryG_Incoming s2Step59EntryG_checked h2 s2Step59EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step59EntryFBefore s2Step59EntryFAfter s2Step59EntryGvAfter
    s2Step59EntryFRow s2Step59EntryFOut 239 s2Step59EntryFFresh [(s2Step59EntryGRow,239),(s2Step59EntryFvRow,42),(s2Step59EntryGvRow,42)] [s2Step59EntryGFresh,s2Step59EntryFvFresh,s2Step59EntryGvFresh] [s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut]
    (growRow 768 s2Step59EntryFFresh) ((growRow 769 s2Step59EntryGFresh ++ (growRow 770 s2Step59EntryFvFresh ++ (growRow 771 s2Step59EntryGvFresh ++ [])))) s2Step59EntryF_Incoming s2Step59EntryF_checked h1 s2Step59EntryF_Outgoing
  exact h0
theorem s2Step59EntryBank_checked : compileHmrBankResizeLog .entry s2Step59EntryFBefore ⟨s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow⟩ ⟨239,239,42,42⟩ [s2Step59EntryFFresh,s2Step59EntryGFresh,s2Step59EntryFvFresh,s2Step59EntryGvFresh]=
    some (s2Step59EntryGvAfter,⟨s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut⟩,(growRow 768 s2Step59EntryFFresh ++ (growRow 769 s2Step59EntryGFresh ++ (growRow 770 s2Step59EntryFvFresh ++ (growRow 771 s2Step59EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step59EntryBank_rows]
  rfl
def s2Step60EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step60EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790],769⟩
def s2Step60EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩
def s2Step60EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩
theorem s2Step60EntryBank_incomingDistinct : ([s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60EntryBank_outgoingOwned : rowsOwned s2Step60EntryGvAfter [s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step60EntryGvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60EntryF_Incoming : rowsOwned s2Step60EntryFBefore [s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow] 0 s2Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60EntryF_Outgoing : rowsOwned s2Step60EntryGvAfter [s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] :=
  hmrRows_owned_drop s2Step60EntryGvAfter [s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] 0 s2Step60EntryBank_outgoingOwned
theorem s2Step60EntryG_Incoming : rowsOwned s2Step60EntryGBefore [s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow] 1 s2Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60EntryG_Outgoing : rowsOwned s2Step60EntryGvAfter [s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] :=
  hmrRows_owned_drop s2Step60EntryGvAfter [s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] 1 s2Step60EntryBank_outgoingOwned
theorem s2Step60EntryFv_Incoming : rowsOwned s2Step60EntryFvBefore [s2Step60EntryFvRow,s2Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow] 2 s2Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60EntryFv_Outgoing : rowsOwned s2Step60EntryGvAfter [s2Step60EntryFvOut,s2Step60EntryGvOut] :=
  hmrRows_owned_drop s2Step60EntryGvAfter [s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] 2 s2Step60EntryBank_outgoingOwned
theorem s2Step60EntryGv_Incoming : rowsOwned s2Step60EntryGvBefore [s2Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow] 3 s2Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60EntryGv_Outgoing : rowsOwned s2Step60EntryGvAfter [s2Step60EntryGvOut] :=
  hmrRows_owned_drop s2Step60EntryGvAfter [s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut] 3 s2Step60EntryBank_outgoingOwned
theorem s2Step60EntryBank_rows : planWindowRowsLog s2Step60EntryFBefore [(s2Step60EntryFRow,239),(s2Step60EntryGRow,239),(s2Step60EntryFvRow,43),(s2Step60EntryGvRow,43)] [s2Step60EntryFFresh,s2Step60EntryGFresh,s2Step60EntryFvFresh,s2Step60EntryGvFresh]=
    some (s2Step60EntryGvAfter,[s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut],(growRow 768 s2Step60EntryFFresh ++ (growRow 769 s2Step60EntryGFresh ++ (growRow 770 s2Step60EntryFvFresh ++ (growRow 771 s2Step60EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step60EntryGvAfter [] []=some (s2Step60EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step60EntryGvBefore s2Step60EntryGvAfter s2Step60EntryGvAfter
    s2Step60EntryGvRow s2Step60EntryGvOut 43 s2Step60EntryGvFresh [] [] []
    (growRow 771 s2Step60EntryGvFresh) ([]) s2Step60EntryGv_Incoming s2Step60EntryGv_checked h4 s2Step60EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step60EntryFvBefore s2Step60EntryFvAfter s2Step60EntryGvAfter
    s2Step60EntryFvRow s2Step60EntryFvOut 43 s2Step60EntryFvFresh [(s2Step60EntryGvRow,43)] [s2Step60EntryGvFresh] [s2Step60EntryGvOut]
    (growRow 770 s2Step60EntryFvFresh) ((growRow 771 s2Step60EntryGvFresh ++ [])) s2Step60EntryFv_Incoming s2Step60EntryFv_checked h3 s2Step60EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step60EntryGBefore s2Step60EntryGAfter s2Step60EntryGvAfter
    s2Step60EntryGRow s2Step60EntryGOut 239 s2Step60EntryGFresh [(s2Step60EntryFvRow,43),(s2Step60EntryGvRow,43)] [s2Step60EntryFvFresh,s2Step60EntryGvFresh] [s2Step60EntryFvOut,s2Step60EntryGvOut]
    (growRow 769 s2Step60EntryGFresh) ((growRow 770 s2Step60EntryFvFresh ++ (growRow 771 s2Step60EntryGvFresh ++ []))) s2Step60EntryG_Incoming s2Step60EntryG_checked h2 s2Step60EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step60EntryFBefore s2Step60EntryFAfter s2Step60EntryGvAfter
    s2Step60EntryFRow s2Step60EntryFOut 239 s2Step60EntryFFresh [(s2Step60EntryGRow,239),(s2Step60EntryFvRow,43),(s2Step60EntryGvRow,43)] [s2Step60EntryGFresh,s2Step60EntryFvFresh,s2Step60EntryGvFresh] [s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut]
    (growRow 768 s2Step60EntryFFresh) ((growRow 769 s2Step60EntryGFresh ++ (growRow 770 s2Step60EntryFvFresh ++ (growRow 771 s2Step60EntryGvFresh ++ [])))) s2Step60EntryF_Incoming s2Step60EntryF_checked h1 s2Step60EntryF_Outgoing
  exact h0
theorem s2Step60EntryBank_checked : compileHmrBankResizeLog .entry s2Step60EntryFBefore ⟨s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow⟩ ⟨239,239,43,43⟩ [s2Step60EntryFFresh,s2Step60EntryGFresh,s2Step60EntryFvFresh,s2Step60EntryGvFresh]=
    some (s2Step60EntryGvAfter,⟨s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut⟩,(growRow 768 s2Step60EntryFFresh ++ (growRow 769 s2Step60EntryGFresh ++ (growRow 770 s2Step60EntryFvFresh ++ (growRow 771 s2Step60EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step60EntryBank_rows]
  rfl
def s2Step61EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step61EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814],769⟩
def s2Step61EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step61EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822],771⟩
theorem s2Step61EntryBank_incomingDistinct : ([s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61EntryBank_outgoingOwned : rowsOwned s2Step61EntryGvAfter [s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step61EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61EntryF_Incoming : rowsOwned s2Step61EntryFBefore [s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow] 0 s2Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61EntryF_Outgoing : rowsOwned s2Step61EntryGvAfter [s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] :=
  hmrRows_owned_drop s2Step61EntryGvAfter [s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] 0 s2Step61EntryBank_outgoingOwned
theorem s2Step61EntryG_Incoming : rowsOwned s2Step61EntryGBefore [s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow] 1 s2Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61EntryG_Outgoing : rowsOwned s2Step61EntryGvAfter [s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] :=
  hmrRows_owned_drop s2Step61EntryGvAfter [s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] 1 s2Step61EntryBank_outgoingOwned
theorem s2Step61EntryFv_Incoming : rowsOwned s2Step61EntryFvBefore [s2Step61EntryFvRow,s2Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow] 2 s2Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61EntryFv_Outgoing : rowsOwned s2Step61EntryGvAfter [s2Step61EntryFvOut,s2Step61EntryGvOut] :=
  hmrRows_owned_drop s2Step61EntryGvAfter [s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] 2 s2Step61EntryBank_outgoingOwned
theorem s2Step61EntryGv_Incoming : rowsOwned s2Step61EntryGvBefore [s2Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow] 3 s2Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61EntryGv_Outgoing : rowsOwned s2Step61EntryGvAfter [s2Step61EntryGvOut] :=
  hmrRows_owned_drop s2Step61EntryGvAfter [s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut] 3 s2Step61EntryBank_outgoingOwned
theorem s2Step61EntryBank_rows : planWindowRowsLog s2Step61EntryFBefore [(s2Step61EntryFRow,239),(s2Step61EntryGRow,239),(s2Step61EntryFvRow,44),(s2Step61EntryGvRow,44)] [s2Step61EntryFFresh,s2Step61EntryGFresh,s2Step61EntryFvFresh,s2Step61EntryGvFresh]=
    some (s2Step61EntryGvAfter,[s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut],(growRow 768 s2Step61EntryFFresh ++ (growRow 769 s2Step61EntryGFresh ++ (growRow 770 s2Step61EntryFvFresh ++ (growRow 771 s2Step61EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step61EntryGvAfter [] []=some (s2Step61EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step61EntryGvBefore s2Step61EntryGvAfter s2Step61EntryGvAfter
    s2Step61EntryGvRow s2Step61EntryGvOut 44 s2Step61EntryGvFresh [] [] []
    (growRow 771 s2Step61EntryGvFresh) ([]) s2Step61EntryGv_Incoming s2Step61EntryGv_checked h4 s2Step61EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step61EntryFvBefore s2Step61EntryFvAfter s2Step61EntryGvAfter
    s2Step61EntryFvRow s2Step61EntryFvOut 44 s2Step61EntryFvFresh [(s2Step61EntryGvRow,44)] [s2Step61EntryGvFresh] [s2Step61EntryGvOut]
    (growRow 770 s2Step61EntryFvFresh) ((growRow 771 s2Step61EntryGvFresh ++ [])) s2Step61EntryFv_Incoming s2Step61EntryFv_checked h3 s2Step61EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step61EntryGBefore s2Step61EntryGAfter s2Step61EntryGvAfter
    s2Step61EntryGRow s2Step61EntryGOut 239 s2Step61EntryGFresh [(s2Step61EntryFvRow,44),(s2Step61EntryGvRow,44)] [s2Step61EntryFvFresh,s2Step61EntryGvFresh] [s2Step61EntryFvOut,s2Step61EntryGvOut]
    (growRow 769 s2Step61EntryGFresh) ((growRow 770 s2Step61EntryFvFresh ++ (growRow 771 s2Step61EntryGvFresh ++ []))) s2Step61EntryG_Incoming s2Step61EntryG_checked h2 s2Step61EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step61EntryFBefore s2Step61EntryFAfter s2Step61EntryGvAfter
    s2Step61EntryFRow s2Step61EntryFOut 239 s2Step61EntryFFresh [(s2Step61EntryGRow,239),(s2Step61EntryFvRow,44),(s2Step61EntryGvRow,44)] [s2Step61EntryGFresh,s2Step61EntryFvFresh,s2Step61EntryGvFresh] [s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut]
    (growRow 768 s2Step61EntryFFresh) ((growRow 769 s2Step61EntryGFresh ++ (growRow 770 s2Step61EntryFvFresh ++ (growRow 771 s2Step61EntryGvFresh ++ [])))) s2Step61EntryF_Incoming s2Step61EntryF_checked h1 s2Step61EntryF_Outgoing
  exact h0
theorem s2Step61EntryBank_checked : compileHmrBankResizeLog .entry s2Step61EntryFBefore ⟨s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow⟩ ⟨239,239,44,44⟩ [s2Step61EntryFFresh,s2Step61EntryGFresh,s2Step61EntryFvFresh,s2Step61EntryGvFresh]=
    some (s2Step61EntryGvAfter,⟨s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut⟩,(growRow 768 s2Step61EntryFFresh ++ (growRow 769 s2Step61EntryGFresh ++ (growRow 770 s2Step61EntryFvFresh ++ (growRow 771 s2Step61EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step61EntryBank_rows]
  rfl
def s2Step62EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749],768⟩
def s2Step62EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817],769⟩
def s2Step62EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step62EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
theorem s2Step62EntryBank_incomingDistinct : ([s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62EntryBank_outgoingOwned : rowsOwned s2Step62EntryGvAfter [s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step62EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62EntryF_Incoming : rowsOwned s2Step62EntryFBefore [s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow] 0 s2Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62EntryF_Outgoing : rowsOwned s2Step62EntryGvAfter [s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] :=
  hmrRows_owned_drop s2Step62EntryGvAfter [s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] 0 s2Step62EntryBank_outgoingOwned
theorem s2Step62EntryG_Incoming : rowsOwned s2Step62EntryGBefore [s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow] 1 s2Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62EntryG_Outgoing : rowsOwned s2Step62EntryGvAfter [s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] :=
  hmrRows_owned_drop s2Step62EntryGvAfter [s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] 1 s2Step62EntryBank_outgoingOwned
theorem s2Step62EntryFv_Incoming : rowsOwned s2Step62EntryFvBefore [s2Step62EntryFvRow,s2Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow] 2 s2Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62EntryFv_Outgoing : rowsOwned s2Step62EntryGvAfter [s2Step62EntryFvOut,s2Step62EntryGvOut] :=
  hmrRows_owned_drop s2Step62EntryGvAfter [s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] 2 s2Step62EntryBank_outgoingOwned
theorem s2Step62EntryGv_Incoming : rowsOwned s2Step62EntryGvBefore [s2Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow] 3 s2Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62EntryGv_Outgoing : rowsOwned s2Step62EntryGvAfter [s2Step62EntryGvOut] :=
  hmrRows_owned_drop s2Step62EntryGvAfter [s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut] 3 s2Step62EntryBank_outgoingOwned
theorem s2Step62EntryBank_rows : planWindowRowsLog s2Step62EntryFBefore [(s2Step62EntryFRow,238),(s2Step62EntryGRow,238),(s2Step62EntryFvRow,44),(s2Step62EntryGvRow,44)] [s2Step62EntryFFresh,s2Step62EntryGFresh,s2Step62EntryFvFresh,s2Step62EntryGvFresh]=
    some (s2Step62EntryGvAfter,[s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut],(growRow 768 s2Step62EntryFFresh ++ (growRow 769 s2Step62EntryGFresh ++ (growRow 770 s2Step62EntryFvFresh ++ (growRow 771 s2Step62EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step62EntryGvAfter [] []=some (s2Step62EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step62EntryGvBefore s2Step62EntryGvAfter s2Step62EntryGvAfter
    s2Step62EntryGvRow s2Step62EntryGvOut 44 s2Step62EntryGvFresh [] [] []
    (growRow 771 s2Step62EntryGvFresh) ([]) s2Step62EntryGv_Incoming s2Step62EntryGv_checked h4 s2Step62EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step62EntryFvBefore s2Step62EntryFvAfter s2Step62EntryGvAfter
    s2Step62EntryFvRow s2Step62EntryFvOut 44 s2Step62EntryFvFresh [(s2Step62EntryGvRow,44)] [s2Step62EntryGvFresh] [s2Step62EntryGvOut]
    (growRow 770 s2Step62EntryFvFresh) ((growRow 771 s2Step62EntryGvFresh ++ [])) s2Step62EntryFv_Incoming s2Step62EntryFv_checked h3 s2Step62EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step62EntryGBefore s2Step62EntryGAfter s2Step62EntryGvAfter
    s2Step62EntryGRow s2Step62EntryGOut 238 s2Step62EntryGFresh [(s2Step62EntryFvRow,44),(s2Step62EntryGvRow,44)] [s2Step62EntryFvFresh,s2Step62EntryGvFresh] [s2Step62EntryFvOut,s2Step62EntryGvOut]
    (growRow 769 s2Step62EntryGFresh) ((growRow 770 s2Step62EntryFvFresh ++ (growRow 771 s2Step62EntryGvFresh ++ []))) s2Step62EntryG_Incoming s2Step62EntryG_checked h2 s2Step62EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step62EntryFBefore s2Step62EntryFAfter s2Step62EntryGvAfter
    s2Step62EntryFRow s2Step62EntryFOut 238 s2Step62EntryFFresh [(s2Step62EntryGRow,238),(s2Step62EntryFvRow,44),(s2Step62EntryGvRow,44)] [s2Step62EntryGFresh,s2Step62EntryFvFresh,s2Step62EntryGvFresh] [s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut]
    (growRow 768 s2Step62EntryFFresh) ((growRow 769 s2Step62EntryGFresh ++ (growRow 770 s2Step62EntryFvFresh ++ (growRow 771 s2Step62EntryGvFresh ++ [])))) s2Step62EntryF_Incoming s2Step62EntryF_checked h1 s2Step62EntryF_Outgoing
  exact h0
theorem s2Step62EntryBank_checked : compileHmrBankResizeLog .entry s2Step62EntryFBefore ⟨s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow⟩ ⟨238,238,44,44⟩ [s2Step62EntryFFresh,s2Step62EntryGFresh,s2Step62EntryFvFresh,s2Step62EntryGvFresh]=
    some (s2Step62EntryGvAfter,⟨s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut⟩,(growRow 768 s2Step62EntryFFresh ++ (growRow 769 s2Step62EntryGFresh ++ (growRow 770 s2Step62EntryFvFresh ++ (growRow 771 s2Step62EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step62EntryBank_rows]
  rfl
def s2Step63EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩
def s2Step63EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step63EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩
def s2Step63EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822],771⟩
theorem s2Step63EntryBank_incomingDistinct : ([s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63EntryBank_outgoingOwned : rowsOwned s2Step63EntryGvAfter [s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step63EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63EntryF_Incoming : rowsOwned s2Step63EntryFBefore [s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow] 0 s2Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63EntryF_Outgoing : rowsOwned s2Step63EntryGvAfter [s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] :=
  hmrRows_owned_drop s2Step63EntryGvAfter [s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] 0 s2Step63EntryBank_outgoingOwned
theorem s2Step63EntryG_Incoming : rowsOwned s2Step63EntryGBefore [s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow] 1 s2Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63EntryG_Outgoing : rowsOwned s2Step63EntryGvAfter [s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] :=
  hmrRows_owned_drop s2Step63EntryGvAfter [s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] 1 s2Step63EntryBank_outgoingOwned
theorem s2Step63EntryFv_Incoming : rowsOwned s2Step63EntryFvBefore [s2Step63EntryFvRow,s2Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow] 2 s2Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63EntryFv_Outgoing : rowsOwned s2Step63EntryGvAfter [s2Step63EntryFvOut,s2Step63EntryGvOut] :=
  hmrRows_owned_drop s2Step63EntryGvAfter [s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] 2 s2Step63EntryBank_outgoingOwned
theorem s2Step63EntryGv_Incoming : rowsOwned s2Step63EntryGvBefore [s2Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow] 3 s2Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63EntryGv_Outgoing : rowsOwned s2Step63EntryGvAfter [s2Step63EntryGvOut] :=
  hmrRows_owned_drop s2Step63EntryGvAfter [s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut] 3 s2Step63EntryBank_outgoingOwned
theorem s2Step63EntryBank_rows : planWindowRowsLog s2Step63EntryFBefore [(s2Step63EntryFRow,237),(s2Step63EntryGRow,237),(s2Step63EntryFvRow,45),(s2Step63EntryGvRow,45)] [s2Step63EntryFFresh,s2Step63EntryGFresh,s2Step63EntryFvFresh,s2Step63EntryGvFresh]=
    some (s2Step63EntryGvAfter,[s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut],(growRow 768 s2Step63EntryFFresh ++ (growRow 769 s2Step63EntryGFresh ++ (growRow 770 s2Step63EntryFvFresh ++ (growRow 771 s2Step63EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step63EntryGvAfter [] []=some (s2Step63EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step63EntryGvBefore s2Step63EntryGvAfter s2Step63EntryGvAfter
    s2Step63EntryGvRow s2Step63EntryGvOut 45 s2Step63EntryGvFresh [] [] []
    (growRow 771 s2Step63EntryGvFresh) ([]) s2Step63EntryGv_Incoming s2Step63EntryGv_checked h4 s2Step63EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step63EntryFvBefore s2Step63EntryFvAfter s2Step63EntryGvAfter
    s2Step63EntryFvRow s2Step63EntryFvOut 45 s2Step63EntryFvFresh [(s2Step63EntryGvRow,45)] [s2Step63EntryGvFresh] [s2Step63EntryGvOut]
    (growRow 770 s2Step63EntryFvFresh) ((growRow 771 s2Step63EntryGvFresh ++ [])) s2Step63EntryFv_Incoming s2Step63EntryFv_checked h3 s2Step63EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step63EntryGBefore s2Step63EntryGAfter s2Step63EntryGvAfter
    s2Step63EntryGRow s2Step63EntryGOut 237 s2Step63EntryGFresh [(s2Step63EntryFvRow,45),(s2Step63EntryGvRow,45)] [s2Step63EntryFvFresh,s2Step63EntryGvFresh] [s2Step63EntryFvOut,s2Step63EntryGvOut]
    (growRow 769 s2Step63EntryGFresh) ((growRow 770 s2Step63EntryFvFresh ++ (growRow 771 s2Step63EntryGvFresh ++ []))) s2Step63EntryG_Incoming s2Step63EntryG_checked h2 s2Step63EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step63EntryFBefore s2Step63EntryFAfter s2Step63EntryGvAfter
    s2Step63EntryFRow s2Step63EntryFOut 237 s2Step63EntryFFresh [(s2Step63EntryGRow,237),(s2Step63EntryFvRow,45),(s2Step63EntryGvRow,45)] [s2Step63EntryGFresh,s2Step63EntryFvFresh,s2Step63EntryGvFresh] [s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut]
    (growRow 768 s2Step63EntryFFresh) ((growRow 769 s2Step63EntryGFresh ++ (growRow 770 s2Step63EntryFvFresh ++ (growRow 771 s2Step63EntryGvFresh ++ [])))) s2Step63EntryF_Incoming s2Step63EntryF_checked h1 s2Step63EntryF_Outgoing
  exact h0
theorem s2Step63EntryBank_checked : compileHmrBankResizeLog .entry s2Step63EntryFBefore ⟨s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow⟩ ⟨237,237,45,45⟩ [s2Step63EntryFFresh,s2Step63EntryGFresh,s2Step63EntryFvFresh,s2Step63EntryGvFresh]=
    some (s2Step63EntryGvAfter,⟨s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut⟩,(growRow 768 s2Step63EntryFFresh ++ (growRow 769 s2Step63EntryGFresh ++ (growRow 770 s2Step63EntryFvFresh ++ (growRow 771 s2Step63EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step63EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
