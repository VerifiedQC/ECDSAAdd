import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep340
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s2Step342CompleteMoves : List (Wire × Wire) := [(844,613)]

private def s2Step342EarlyControlLog : HmrEarlyControlLog := ⟨[844, 894, 800, 827, 839],[778],[901],[903, 907, 913, 914, 915, 916],[]⟩

private def s2Step342FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [827, 839], [], [784]],[[778], [800], [894], [896]],[[], [], [], []]⟩,[877],[789],[901],[903],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 913]⟩

private def s2Step342CompleteLog : HmrEarlyStepLog := ⟨s2Step342FrontLog,s2Step342CompleteMoves,s2Step342EarlyControlLog⟩

private def s2Step342ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step342ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩

private def s2Step342ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],769⟩

private def s2Step342ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step342FrontOut : WindowBank := ⟨s2Step342ExitFOut,s2Step342ExitGOut,s2Step342ExitFvOut,s2Step342ExitGvOut⟩

private def s2Step342CompleteOut : WindowBank := s2Step342FrontOut.repacked s2Step342CompleteMoves

private def s2Step342EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step342EarlyControlPositiveArena,[778],s2Step342EarlyControlEqualityArena,[901],⟨⟨877,false⟩,[⟨⟨778,false⟩,901⟩]⟩⟩

private def s2Step342EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,844⟩,⟨⟨774,false⟩,894⟩,⟨⟨775,false⟩,800⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,839⟩]⟩

private def s2Step342EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step342EarlyControlZeroArena,s2Step342EarlyControlZeroPlan,s2Step342EarlyControlClassPlan,s2Step342EarlyControlFlagArena,s2Step342EarlyControlFittedArena,s2Step342EarlyControlHistoryArena,s2Step342EarlyControlSigmaArena,s2Step342EarlyControlOutputArena,s2Step342EarlyControlLog⟩

private def s2Step342CounterWork : List Wire := [901, 903, 907, 913]

private theorem s2Step342Counter_bounded : s2Step342CounterWork.toFinset⊆arenaWires := by norm_num [s2Step342CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step342HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342CounterDuring : Arena := ⟨s2Step342HeadFvAfter.live∪s2Step342CounterWork.toFinset,Finset.union_subset s2Step342HeadFvAfter.bounded s2Step342Counter_bounded⟩

private def s2Step342EntryFFresh : List Wire := []

private def s2Step342EntryFvFresh : List Wire := []

private def s2Step342EntryGFresh : List Wire := [827, 839]

private def s2Step342EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EntryGvFresh : List Wire := [784]

private def s2Step342ExitFExtra : List Wire := [613, 800]

private def s2Step342ExitGExtra : List Wire := [827, 839, 778]

private def s2Step342ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342ExitGvExtra : List Wire := [894]

private def s2Step342Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342Add0Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step342Add0_bounded : s2Step342Add0Work.toFinset⊆arenaWires := by
  have h : s2Step342Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step342Add0During : Arena := ⟨s2Step342Add0Arena.live∪s2Step342Add0Work.toFinset,Finset.union_subset s2Step342Add0Arena.bounded s2Step342Add0_bounded⟩

private def s2Step342Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342Add1Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step342Add1_bounded : s2Step342Add1Work.toFinset⊆arenaWires := by
  have h : s2Step342Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step342Add1During : Arena := ⟨s2Step342Add1Arena.live∪s2Step342Add1Work.toFinset,Finset.union_subset s2Step342Add1Arena.bounded s2Step342Add1_bounded⟩

private def s2Step342F4FlagArena : Arena := ⟨s2Step342HeadFvAfter.live∪{901},Finset.union_subset s2Step342HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step342F4Plan : HmrHybridF4Plan := ⟨s2Step342F4FlagArena,[901],s2Step342Add0Arena,[903],s2Step342Add0During,s2Step342Add0Work,s2Step342Add1During,s2Step342Add1Work⟩

private def s2Step342HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 800],768⟩

private def s2Step342HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩

private def s2Step342HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839, 778],769⟩

private def s2Step342HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 894],771⟩

private def s2Step342FrontHead : WindowBank := ⟨s2Step342HeadFOut,s2Step342HeadGOut,s2Step342HeadFvOut,s2Step342HeadGvOut⟩

private def s2Step342EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step342EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩

private def s2Step342EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839],769⟩

private def s2Step342EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step342FrontPair : WindowBank := ⟨s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut⟩

private def s2Step342FrontSigmaArena : Arena := ⟨s2Step342EntryGvAfter.live∪{877},Finset.union_subset s2Step342EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step342HeadFFresh : List Wire := [800]

private def s2Step342HeadFvFresh : List Wire := [896]

private def s2Step342HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342HeadGFresh : List Wire := [778]

private def s2Step342HeadGvFresh : List Wire := [894]

private def s2Step342FrontPlan : HmrSourceFront := ⟨s2Step342EntryGvAfter,s2Step342FrontPair,(growRow 768 s2Step342EntryFFresh ++ (growRow 769 s2Step342EntryGFresh ++ (growRow 770 s2Step342EntryFvFresh ++ (growRow 771 s2Step342EntryGvFresh ++ [])))),s2Step342FrontSigmaArena,[877],s2Step342HeadGBefore,[789],
  s2Step342HeadFvAfter,s2Step342FrontHead,(growRow 769 s2Step342HeadGFresh ++ (growRow 768 s2Step342HeadFFresh ++ (growRow 771 s2Step342HeadGvFresh ++ (growRow 770 s2Step342HeadFvFresh ++ [])))),s2Step342F4Plan,s2Step342CounterDuring,s2Step342CounterWork,s2Step342ExitGvAfter,s2Step342FrontOut,(shrinkRow 769 s2Step342ExitGExtra ++ (shrinkRow 768 s2Step342ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step342ExitGvExtra ++ []))))⟩

private def s2Step342CompletePlan : HmrEarlyStepPlan := ⟨s2Step342FrontPlan,s2Step342EarlyControlArena,s2Step342EarlyControlPlan,s2Step342CompleteMoves⟩

private theorem s2Step342Complete_apart : List.Disjoint (s2Step342CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [877, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step342CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[877, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step342Complete_owned : (s2Step342CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step342CompleteMoveArena : Arena := ⟨s2Step342ExitGvAfter.live∪{613},Finset.union_subset s2Step342ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step342Complete_repack : s2Step342ExitGvAfter.checkRepack s2Step342CompleteMoves=some s2Step342EarlyControlArena := by
  have owned : 844∈s2Step342ExitGvAfter.live := by norm_num [s2Step342ExitGvAfter,arenaWires]
  have reserve : s2Step342ExitGvAfter.reserve {613}=some s2Step342CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step342ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step342CompleteMoveArena.retireSet {844}=s2Step342EarlyControlArena := by
    unfold Arena.retireSet s2Step342EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step342CompleteMoveArena,s2Step342ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step342CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step342CompleteMoveArena.retireSet {844}).checkRepack []=some s2Step342EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step342EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s2Step342EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_branch : compileHmrBranchRetirement s2Step342EarlyControlSigmaArena 789=some s2Step342EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step342EarlyControl_branchOwned
  · ext q
    simp [s2Step342EarlyControlOutputArena,s2Step342EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step342EarlyControl_classEqualityBorrow : s2Step342EarlyControlPositiveArena.checkBorrow (([877, 778] : List Wire).length-1) s2Step342EarlyControlLog.classWork=some s2Step342EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step342EarlyControlPositiveArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step342EarlyControlEqualityArena,s2Step342EarlyControlPositiveArena,s2Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step342EarlyControl_classEqualityOwned : ([877, 778] : List Wire).toFinset⊆s2Step342EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlPositiveArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_classEquality : compileHmrEqualityLog s2Step342EarlyControlPositiveArena [877, 778] 0 s2Step342EarlyControlLog.classWork=some (s2Step342EarlyControlEqualityArena,s2Step342EarlyControlLog.classWork,s2Step342EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step342EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step342EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step342EarlyControl_classOwned : ([777, 839, 877] : List Wire).toFinset⊆s2Step342EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_positiveBorrow : s2Step342EarlyControlZeroArena.checkBorrow (1) s2Step342EarlyControlLog.positiveWork=some s2Step342EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step342EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step342EarlyControlPositiveArena,s2Step342EarlyControlZeroArena,s2Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step342EarlyControl_class : compileHmrSourceClassLog s2Step342EarlyControlZeroArena false 777 s2Step342EarlyControlZeroPlan.top 0 877 s2Step342EarlyControlLog.positiveWork s2Step342EarlyControlLog.classWork=some s2Step342EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step342EarlyControlClassPlan s2Step342EarlyControlZeroArena false 777 s2Step342EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s2Step342EarlyControl_classOwned
  · exact s2Step342EarlyControl_positiveBorrow
  · exact s2Step342EarlyControl_classEquality

private theorem s2Step342EarlyControl_entryRecordOwned : ([789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s2Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_fitBorrow : s2Step342EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step342EarlyControlLog.recordFresh=some s2Step342EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step342EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step342EarlyControlFittedArena,s2Step342EarlyControlFlagArena,s2Step342EarlyControlLog,arenaWires]

private theorem s2Step342EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step342EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_fit : compileHmrRecordGrowLog s2Step342EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step342EarlyControlLog.recordFresh=some s2Step342EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step342EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step342EarlyControl_fitBorrow

private theorem s2Step342EarlyControl_flagsBorrow : s2Step342EarlyControlEqualityArena.checkBorrow (6) s2Step342EarlyControlLog.flagWork=some s2Step342EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step342EarlyControlEqualityArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step342EarlyControlFlagArena,s2Step342EarlyControlEqualityArena,s2Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step342EarlyControl_flagsOwned : ([901, 253, 252, 251] : List Wire).toFinset⊆s2Step342EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlEqualityArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_flags : compileHmrFlagsLog s2Step342EarlyControlClassPlan.equalityArena s2Step342EarlyControlClassPlan.equality.top 253 252 251 s2Step342EarlyControlLog.flagWork=some s2Step342EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step342EarlyControl_flagsOwned⟩
  · exact s2Step342EarlyControl_flagsBorrow

private theorem s2Step342EarlyControl_historyBorrow : s2Step342EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step342EarlyControlLog.recordFresh=some s2Step342EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step342EarlyControlHistoryArena,s2Step342EarlyControlArena,s2Step342EarlyControlLog,arenaWires]

private theorem s2Step342EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_history : compileHmrRecordGrowLog s2Step342EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step342EarlyControlLog.recordFresh=some s2Step342EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step342EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step342EarlyControl_historyBorrow

private theorem s2Step342EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s2Step342EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s2Step342EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_sigmaRelease : s2Step342EarlyControlHistoryArena.release {877} (fun _ => false)=some s2Step342EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step342EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step342EarlyControlSigmaArena,s2Step342EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step342EarlyControl_sigma : compileHmrSigmaDropLog s2Step342EarlyControlHistoryArena false 0 0 254 877 []=some s2Step342EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step342EarlyControl_sigmaOwned⟩
  · exact s2Step342EarlyControl_sigmaRelease

private theorem s2Step342EarlyControl_zeroBorrow : s2Step342EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step342EarlyControlLog.zeroWork=some s2Step342EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step342EarlyControlZeroArena,s2Step342EarlyControlArena,s2Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step342EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step342EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EarlyControl_zero : compileHmrEqualityLog s2Step342EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step342EarlyControlLog.zeroWork=some (s2Step342EarlyControlZeroArena,s2Step342EarlyControlLog.zeroWork,s2Step342EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step342EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step342EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step342EarlyControl_logged : s2Step342EarlyControlPlan.Logged s2Step342EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 877 254 253 252 251 789 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step342EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step342EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step342EarlyControl_zero
  · exact s2Step342EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step342EarlyControl_flags
  · exact s2Step342EarlyControl_fit
  · exact s2Step342EarlyControl_history
  · exact s2Step342EarlyControl_sigma
  · exact s2Step342EarlyControl_branch

private theorem s2Step342EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step342EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 877 254 253 252 251 789 60 s2Step342EarlyControlLog=some s2Step342EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step342EarlyControlPlan s2Step342EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 877 254 253 252 251 789 60 s2Step342EarlyControl_logged

private def s2Step342EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step342EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩

private def s2Step342EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],769⟩

private def s2Step342EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private def s2Step342FrontBank : WindowBank := ⟨s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow⟩

private def s2Step342Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 800, 768]

private def s2Step342Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839, 778, 769]

private def s2Step342Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 770]

private def s2Step342Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 894, 771]

private theorem s2Step342Counter_apart : Disjoint s2Step342HeadFvAfter.live s2Step342CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step342HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342Counter_borrowed : s2Step342HeadFvAfter.checkBorrow 4 s2Step342CounterWork=some s2Step342CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step342HeadFvAfter s2Step342CounterDuring s2Step342CounterWork.toFinset s2Step342Counter_bounded s2Step342Counter_apart rfl

private theorem s2Step342Counter_owned : (877::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step342HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step342HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342Counter_checked : compileHmrCounterStepLog s2Step342HeadFvAfter true 877 [772, 773, 774, 775, 776, 777] s2Step342CounterWork=some s2Step342CounterDuring := by
  have owned : ∀q∈877::[772, 773, 774, 775, 776, 777],q∈s2Step342HeadFvAfter.live := fun q hq => s2Step342Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step342Counter_borrowed

private def s2Step342EntryFAfter : Arena := s2Step342EntryFBefore

private theorem s2Step342EntryBank_incomingDistinct : ([s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342EntryF_Incoming : rowsOwned s2Step342EntryFBefore [s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow] 0 s2Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342EntryBank_outgoingOwned : rowsOwned s2Step342EntryGvAfter [s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step342EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342EntryF_Outgoing : rowsOwned s2Step342EntryGvAfter [s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] :=
  hmrRows_owned_drop s2Step342EntryGvAfter [s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] 0 s2Step342EntryBank_outgoingOwned

private theorem s2Step342EntryF_distinct : (s2Step342EntryFRow.sign::s2Step342EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342EntryF_owned : (s2Step342EntryFRow.sign::s2Step342EntryFRow.payload).toFinset⊆s2Step342EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EntryF_reserved : s2Step342EntryFBefore.reserve s2Step342EntryFFresh.toFinset=some s2Step342EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342EntryFFresh,arenaWires]
  · norm_num [s2Step342EntryFBefore,s2Step342EntryFFresh,arenaWires]
  · simp only [s2Step342EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step342EntryF_checked : planRowResizeLog s2Step342EntryFBefore s2Step342EntryFRow 102 s2Step342EntryFFresh=
    some (s2Step342EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩,growRow 768 s2Step342EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step342EntryFBefore s2Step342EntryFAfter s2Step342EntryFRow 102 s2Step342EntryFFresh
    s2Step342EntryF_distinct s2Step342EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342EntryF_reserved
  have rowEq : WindowRow.mk (s2Step342EntryFRow.payload++s2Step342EntryFFresh) s2Step342EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step342EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342EntryFvAfter : Arena := s2Step342EntryGAfter

private def s2Step342EntryFvBefore : Arena := s2Step342EntryGAfter

private theorem s2Step342EntryFv_Incoming : rowsOwned s2Step342EntryFvBefore [s2Step342EntryFvRow,s2Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow] 2 s2Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342EntryFv_Outgoing : rowsOwned s2Step342EntryGvAfter [s2Step342EntryFvOut,s2Step342EntryGvOut] :=
  hmrRows_owned_drop s2Step342EntryGvAfter [s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] 2 s2Step342EntryBank_outgoingOwned

private theorem s2Step342EntryFv_distinct : (s2Step342EntryFvRow.sign::s2Step342EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342EntryFv_owned : (s2Step342EntryFvRow.sign::s2Step342EntryFvRow.payload).toFinset⊆s2Step342EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EntryFv_reserved : s2Step342EntryFvBefore.reserve s2Step342EntryFvFresh.toFinset=some s2Step342EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342EntryFvFresh,arenaWires]
  · norm_num [s2Step342EntryFvBefore,s2Step342EntryGAfter,s2Step342EntryFvFresh,arenaWires]
  · simp only [s2Step342EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step342EntryFv_checked : planRowResizeLog s2Step342EntryFvBefore s2Step342EntryFvRow 187 s2Step342EntryFvFresh=
    some (s2Step342EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩,growRow 770 s2Step342EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step342EntryFvBefore s2Step342EntryFvAfter s2Step342EntryFvRow 187 s2Step342EntryFvFresh
    s2Step342EntryFv_distinct s2Step342EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step342EntryFvRow.payload++s2Step342EntryFvFresh) s2Step342EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step342EntryGBefore : Arena := s2Step342EntryFBefore

private theorem s2Step342EntryG_Incoming : rowsOwned s2Step342EntryGBefore [s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow] 1 s2Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342EntryG_Outgoing : rowsOwned s2Step342EntryGvAfter [s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] :=
  hmrRows_owned_drop s2Step342EntryGvAfter [s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] 1 s2Step342EntryBank_outgoingOwned

private theorem s2Step342EntryG_distinct : (s2Step342EntryGRow.sign::s2Step342EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342EntryG_owned : (s2Step342EntryGRow.sign::s2Step342EntryGRow.payload).toFinset⊆s2Step342EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EntryG_reserved : s2Step342EntryGBefore.reserve s2Step342EntryGFresh.toFinset=some s2Step342EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step342EntryGBefore,s2Step342EntryFBefore,s2Step342EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step342EntryGAfter,s2Step342EntryGBefore,s2Step342EntryFBefore,s2Step342EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342EntryG_checked : planRowResizeLog s2Step342EntryGBefore s2Step342EntryGRow 102 s2Step342EntryGFresh=
    some (s2Step342EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839],769⟩,growRow 769 s2Step342EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step342EntryGBefore s2Step342EntryGAfter s2Step342EntryGRow 102 s2Step342EntryGFresh
    s2Step342EntryG_distinct s2Step342EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342EntryG_reserved
  have rowEq : WindowRow.mk (s2Step342EntryGRow.payload++s2Step342EntryGFresh) s2Step342EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step342EntryGvBefore : Arena := s2Step342EntryGAfter

private theorem s2Step342EntryGv_Incoming : rowsOwned s2Step342EntryGvBefore [s2Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow] 3 s2Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342EntryGv_Outgoing : rowsOwned s2Step342EntryGvAfter [s2Step342EntryGvOut] :=
  hmrRows_owned_drop s2Step342EntryGvAfter [s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut] 3 s2Step342EntryBank_outgoingOwned

private theorem s2Step342EntryGv_distinct : (s2Step342EntryGvRow.sign::s2Step342EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342EntryGv_owned : (s2Step342EntryGvRow.sign::s2Step342EntryGvRow.payload).toFinset⊆s2Step342EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342EntryGv_reserved : s2Step342EntryGvBefore.reserve s2Step342EntryGvFresh.toFinset=some s2Step342EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342EntryGvFresh,arenaWires]
  · norm_num [s2Step342EntryGvBefore,s2Step342EntryGAfter,s2Step342EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step342EntryGvAfter,s2Step342EntryGvBefore,s2Step342EntryGAfter,s2Step342EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342EntryGv_checked : planRowResizeLog s2Step342EntryGvBefore s2Step342EntryGvRow 187 s2Step342EntryGvFresh=
    some (s2Step342EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩,growRow 771 s2Step342EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step342EntryGvBefore s2Step342EntryGvAfter s2Step342EntryGvRow 187 s2Step342EntryGvFresh
    s2Step342EntryGv_distinct s2Step342EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step342EntryGvRow.payload++s2Step342EntryGvFresh) s2Step342EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step342EntryBank_rows : planWindowRowsLog s2Step342EntryFBefore [(s2Step342EntryFRow,102),(s2Step342EntryGRow,102),(s2Step342EntryFvRow,187),(s2Step342EntryGvRow,187)] [s2Step342EntryFFresh,s2Step342EntryGFresh,s2Step342EntryFvFresh,s2Step342EntryGvFresh]=
    some (s2Step342EntryGvAfter,[s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut],(growRow 768 s2Step342EntryFFresh ++ (growRow 769 s2Step342EntryGFresh ++ (growRow 770 s2Step342EntryFvFresh ++ (growRow 771 s2Step342EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step342EntryGvAfter [] []=some (s2Step342EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step342EntryGvBefore s2Step342EntryGvAfter s2Step342EntryGvAfter
    s2Step342EntryGvRow s2Step342EntryGvOut 187 s2Step342EntryGvFresh [] [] []
    (growRow 771 s2Step342EntryGvFresh) ([]) s2Step342EntryGv_Incoming s2Step342EntryGv_checked h4 s2Step342EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step342EntryFvBefore s2Step342EntryFvAfter s2Step342EntryGvAfter
    s2Step342EntryFvRow s2Step342EntryFvOut 187 s2Step342EntryFvFresh [(s2Step342EntryGvRow,187)] [s2Step342EntryGvFresh] [s2Step342EntryGvOut]
    (growRow 770 s2Step342EntryFvFresh) ((growRow 771 s2Step342EntryGvFresh ++ [])) s2Step342EntryFv_Incoming s2Step342EntryFv_checked h3 s2Step342EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step342EntryGBefore s2Step342EntryGAfter s2Step342EntryGvAfter
    s2Step342EntryGRow s2Step342EntryGOut 102 s2Step342EntryGFresh [(s2Step342EntryFvRow,187),(s2Step342EntryGvRow,187)] [s2Step342EntryFvFresh,s2Step342EntryGvFresh] [s2Step342EntryFvOut,s2Step342EntryGvOut]
    (growRow 769 s2Step342EntryGFresh) ((growRow 770 s2Step342EntryFvFresh ++ (growRow 771 s2Step342EntryGvFresh ++ []))) s2Step342EntryG_Incoming s2Step342EntryG_checked h2 s2Step342EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step342EntryFBefore s2Step342EntryFAfter s2Step342EntryGvAfter
    s2Step342EntryFRow s2Step342EntryFOut 102 s2Step342EntryFFresh [(s2Step342EntryGRow,102),(s2Step342EntryFvRow,187),(s2Step342EntryGvRow,187)] [s2Step342EntryGFresh,s2Step342EntryFvFresh,s2Step342EntryGvFresh] [s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut]
    (growRow 768 s2Step342EntryFFresh) ((growRow 769 s2Step342EntryGFresh ++ (growRow 770 s2Step342EntryFvFresh ++ (growRow 771 s2Step342EntryGvFresh ++ [])))) s2Step342EntryF_Incoming s2Step342EntryF_checked h1 s2Step342EntryF_Outgoing
  exact h0

private theorem s2Step342EntryBank_checked : compileHmrBankResizeLog .entry s2Step342EntryFBefore ⟨s2Step342EntryFRow,s2Step342EntryGRow,s2Step342EntryFvRow,s2Step342EntryGvRow⟩ ⟨102,102,187,187⟩ [s2Step342EntryFFresh,s2Step342EntryGFresh,s2Step342EntryFvFresh,s2Step342EntryGvFresh]=
    some (s2Step342EntryGvAfter,⟨s2Step342EntryFOut,s2Step342EntryGOut,s2Step342EntryFvOut,s2Step342EntryGvOut⟩,(growRow 768 s2Step342EntryFFresh ++ (growRow 769 s2Step342EntryGFresh ++ (growRow 770 s2Step342EntryFvFresh ++ (growRow 771 s2Step342EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step342EntryBank_rows]
  rfl

private def s2Step342ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342ExitFBefore : Arena := s2Step342ExitGAfter

private def s2Step342ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 800],768⟩

private def s2Step342ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩

private def s2Step342ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839, 778],769⟩

private def s2Step342ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 894],771⟩

private theorem s2Step342ExitBank_incomingDistinct : ([s2Step342ExitGRow,s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342ExitF_Incoming : rowsOwned s2Step342ExitFBefore [s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342ExitGRow,s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow] 1 s2Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342ExitBank_outgoingOwned : rowsOwned s2Step342ExitGvAfter [s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step342ExitGvAfter (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342ExitF_Outgoing : rowsOwned s2Step342ExitGvAfter [s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] :=
  hmrRows_owned_drop s2Step342ExitGvAfter [s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] 1 s2Step342ExitBank_outgoingOwned

private theorem s2Step342ExitF_distinct : (s2Step342ExitFRow.sign::s2Step342ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342ExitF_owned : (s2Step342ExitFRow.sign::s2Step342ExitFRow.payload).toFinset⊆s2Step342ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342ExitF_retired : s2Step342ExitFBefore.retireSet s2Step342ExitFExtra.toFinset=s2Step342ExitFAfter := by
  unfold Arena.retireSet s2Step342ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step342ExitFBefore,s2Step342ExitGAfter,s2Step342ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step342ExitF_checked : planRowResizeLog s2Step342ExitFBefore s2Step342ExitFRow 101 []=
    some (s2Step342ExitFAfter,s2Step342ExitFOut,shrinkRow 768 s2Step342ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step342ExitFBefore s2Step342ExitFRow 101 s2Step342ExitF_distinct s2Step342ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step342ExitFRow.payload.take 101) s2Step342ExitFRow.sign=s2Step342ExitFOut := by decide +kernel
  have hi : s2Step342ExitFRow.payload.drop 101=s2Step342ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step342ExitF_retired] at result
  exact result

private def s2Step342ExitFvAfter : Arena := s2Step342ExitFAfter

private def s2Step342ExitFvBefore : Arena := s2Step342ExitFAfter

private theorem s2Step342ExitFv_Incoming : rowsOwned s2Step342ExitFvBefore [s2Step342ExitFvRow,s2Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342ExitGRow,s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow] 2 s2Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342ExitFvBefore (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342ExitFv_Outgoing : rowsOwned s2Step342ExitGvAfter [s2Step342ExitFvOut,s2Step342ExitGvOut] :=
  hmrRows_owned_drop s2Step342ExitGvAfter [s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] 2 s2Step342ExitBank_outgoingOwned

private theorem s2Step342ExitFv_distinct : (s2Step342ExitFvRow.sign::s2Step342ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342ExitFv_owned : (s2Step342ExitFvRow.sign::s2Step342ExitFvRow.payload).toFinset⊆s2Step342ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342ExitFvBefore (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342ExitFv_reserved : s2Step342ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step342ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step342ExitFv_checked : planRowResizeLog s2Step342ExitFvBefore s2Step342ExitFvRow 188 []=
    some (s2Step342ExitFvAfter,s2Step342ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step342ExitFvBefore s2Step342ExitFvAfter s2Step342ExitFvRow 188 []
    s2Step342ExitFv_distinct s2Step342ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step342ExitFvRow.payload++[]) s2Step342ExitFvRow.sign=s2Step342ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step342ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step342ExitG_Incoming : rowsOwned s2Step342ExitGBefore [s2Step342ExitGRow,s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342ExitGRow,s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow] 0 s2Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342ExitGBefore (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342ExitG_Outgoing : rowsOwned s2Step342ExitGvAfter [s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] :=
  hmrRows_owned_drop s2Step342ExitGvAfter [s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] 0 s2Step342ExitBank_outgoingOwned

private theorem s2Step342ExitG_distinct : (s2Step342ExitGRow.sign::s2Step342ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342ExitG_owned : (s2Step342ExitGRow.sign::s2Step342ExitGRow.payload).toFinset⊆s2Step342ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342ExitGBefore (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342ExitG_retired : s2Step342ExitGBefore.retireSet s2Step342ExitGExtra.toFinset=s2Step342ExitGAfter := by
  unfold Arena.retireSet s2Step342ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step342ExitGBefore,s2Step342ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step342ExitG_checked : planRowResizeLog s2Step342ExitGBefore s2Step342ExitGRow 100 []=
    some (s2Step342ExitGAfter,s2Step342ExitGOut,shrinkRow 769 s2Step342ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step342ExitGBefore s2Step342ExitGRow 100 s2Step342ExitG_distinct s2Step342ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step342ExitGRow.payload.take 100) s2Step342ExitGRow.sign=s2Step342ExitGOut := by decide +kernel
  have hi : s2Step342ExitGRow.payload.drop 100=s2Step342ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step342ExitG_retired] at result
  exact result

private def s2Step342ExitGvBefore : Arena := s2Step342ExitFAfter

private theorem s2Step342ExitGv_Incoming : rowsOwned s2Step342ExitGvBefore [s2Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342ExitGRow,s2Step342ExitFRow,s2Step342ExitFvRow,s2Step342ExitGvRow] 3 s2Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342ExitGvBefore (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342ExitGv_Outgoing : rowsOwned s2Step342ExitGvAfter [s2Step342ExitGvOut] :=
  hmrRows_owned_drop s2Step342ExitGvAfter [s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut] 3 s2Step342ExitBank_outgoingOwned

private theorem s2Step342ExitGv_distinct : (s2Step342ExitGvRow.sign::s2Step342ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342ExitGv_owned : (s2Step342ExitGvRow.sign::s2Step342ExitGvRow.payload).toFinset⊆s2Step342ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342ExitGvBefore (fun q => (0≤q ∧ q<613) ∨ (614≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342ExitGv_retired : s2Step342ExitGvBefore.retireSet s2Step342ExitGvExtra.toFinset=s2Step342ExitGvAfter := by
  unfold Arena.retireSet s2Step342ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step342ExitGvBefore,s2Step342ExitFAfter,s2Step342ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step342ExitGv_checked : planRowResizeLog s2Step342ExitGvBefore s2Step342ExitGvRow 187 []=
    some (s2Step342ExitGvAfter,s2Step342ExitGvOut,shrinkRow 771 s2Step342ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step342ExitGvBefore s2Step342ExitGvRow 187 s2Step342ExitGv_distinct s2Step342ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step342ExitGvRow.payload.take 187) s2Step342ExitGvRow.sign=s2Step342ExitGvOut := by decide +kernel
  have hi : s2Step342ExitGvRow.payload.drop 187=s2Step342ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step342ExitGv_retired] at result
  exact result

private theorem s2Step342ExitBank_rows : planWindowRowsLog s2Step342ExitGBefore [(s2Step342ExitGRow,100),(s2Step342ExitFRow,101),(s2Step342ExitFvRow,188),(s2Step342ExitGvRow,187)] [[],[],[],[]]=
    some (s2Step342ExitGvAfter,[s2Step342ExitGOut,s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut],(shrinkRow 769 s2Step342ExitGExtra ++ (shrinkRow 768 s2Step342ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step342ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step342ExitGvAfter [] []=some (s2Step342ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step342ExitGvBefore s2Step342ExitGvAfter s2Step342ExitGvAfter
    s2Step342ExitGvRow s2Step342ExitGvOut 187 [] [] [] []
    (shrinkRow 771 s2Step342ExitGvExtra) ([]) s2Step342ExitGv_Incoming s2Step342ExitGv_checked h4 s2Step342ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step342ExitFvBefore s2Step342ExitFvAfter s2Step342ExitGvAfter
    s2Step342ExitFvRow s2Step342ExitFvOut 188 [] [(s2Step342ExitGvRow,187)] [[]] [s2Step342ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step342ExitGvExtra ++ [])) s2Step342ExitFv_Incoming s2Step342ExitFv_checked h3 s2Step342ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step342ExitFBefore s2Step342ExitFAfter s2Step342ExitGvAfter
    s2Step342ExitFRow s2Step342ExitFOut 101 [] [(s2Step342ExitFvRow,188),(s2Step342ExitGvRow,187)] [[],[]] [s2Step342ExitFvOut,s2Step342ExitGvOut]
    (shrinkRow 768 s2Step342ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step342ExitGvExtra ++ []))) s2Step342ExitF_Incoming s2Step342ExitF_checked h2 s2Step342ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step342ExitGBefore s2Step342ExitGAfter s2Step342ExitGvAfter
    s2Step342ExitGRow s2Step342ExitGOut 100 [] [(s2Step342ExitFRow,101),(s2Step342ExitFvRow,188),(s2Step342ExitGvRow,187)] [[],[],[]] [s2Step342ExitFOut,s2Step342ExitFvOut,s2Step342ExitGvOut]
    (shrinkRow 769 s2Step342ExitGExtra) ((shrinkRow 768 s2Step342ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step342ExitGvExtra ++ [])))) s2Step342ExitG_Incoming s2Step342ExitG_checked h1 s2Step342ExitG_Outgoing
  exact h0

private theorem s2Step342ExitBank_checked : compileHmrBankResizeLog .exit s2Step342ExitGBefore ⟨s2Step342ExitFRow,s2Step342ExitGRow,s2Step342ExitFvRow,s2Step342ExitGvRow⟩ ⟨101,100,188,187⟩ [[],[],[],[]]=
    some (s2Step342ExitGvAfter,⟨s2Step342ExitFOut,s2Step342ExitGOut,s2Step342ExitFvOut,s2Step342ExitGvOut⟩,(shrinkRow 769 s2Step342ExitGExtra ++ (shrinkRow 768 s2Step342ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step342ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step342ExitBank_rows]
  rfl

private theorem s2Step342Add0_apart : Disjoint s2Step342Add0Arena.live s2Step342Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step342Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342Add0_card : s2Step342Add0Arena.live.card=912 := by
  decide +kernel

private theorem s2Step342Add0_borrowed : s2Step342Add0Arena.checkBorrow (hmrHybridCount s2Step342Add0Arena s2Step342Add0B.length) s2Step342Add0Work=some s2Step342Add0During := by
  have len : s2Step342Add0Work.length=hmrHybridCount s2Step342Add0Arena s2Step342Add0B.length := by
    rw [hmrHybridCount,s2Step342Add0_card]
    decide +kernel
  have nd : s2Step342Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step342Add0Arena s2Step342Add0During s2Step342Add0Work.toFinset s2Step342Add0_bounded s2Step342Add0_apart rfl

private theorem s2Step342Add0_distinct : (901::789::903::(s2Step342Add0A++s2Step342Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342Add0_owned : (901::789::903::(s2Step342Add0A++s2Step342Add0B)).toFinset⊆s2Step342Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step342Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342Add0_checked : compileHmrHybridCinLog s2Step342Add0Arena 789 901 903 s2Step342Add0A s2Step342Add0B s2Step342Add0Work=some s2Step342Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step342Add0Arena s2Step342Add0During 789 901 903 s2Step342Add0A s2Step342Add0B s2Step342Add0Work
    (by decide +kernel) (by decide +kernel) s2Step342Add0_distinct
    (fun q hq => s2Step342Add0_owned (List.mem_toFinset.mpr hq)) s2Step342Add0_borrowed

private theorem s2Step342Add1_apart : Disjoint s2Step342Add1Arena.live s2Step342Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step342Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342Add1_card : s2Step342Add1Arena.live.card=912 := by
  decide +kernel

private theorem s2Step342Add1_borrowed : s2Step342Add1Arena.checkBorrow (hmrHybridCount s2Step342Add1Arena s2Step342Add1B.length) s2Step342Add1Work=some s2Step342Add1During := by
  have len : s2Step342Add1Work.length=hmrHybridCount s2Step342Add1Arena s2Step342Add1B.length := by
    rw [hmrHybridCount,s2Step342Add1_card]
    decide +kernel
  have nd : s2Step342Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step342Add1Arena s2Step342Add1During s2Step342Add1Work.toFinset s2Step342Add1_bounded s2Step342Add1_apart rfl

private theorem s2Step342Add1_distinct : (901::789::903::(s2Step342Add1A++s2Step342Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342Add1_owned : (901::789::903::(s2Step342Add1A++s2Step342Add1B)).toFinset⊆s2Step342Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step342Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342Add1_checked : compileHmrHybridCinLog s2Step342Add1Arena 789 901 903 s2Step342Add1A s2Step342Add1B s2Step342Add1Work=some s2Step342Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step342Add1Arena s2Step342Add1During 789 901 903 s2Step342Add1A s2Step342Add1B s2Step342Add1Work
    (by decide +kernel) (by decide +kernel) s2Step342Add1_distinct
    (fun q hq => s2Step342Add1_owned (List.mem_toFinset.mpr hq)) s2Step342Add1_borrowed

private theorem s2Step342F4_apart : Disjoint (s2Step342Add0A++s2Step342Add0B).toFinset (s2Step342Add1A++s2Step342Add1B).toFinset := by
  have nd : ((s2Step342Add0A++s2Step342Add0B)++(s2Step342Add1A++s2Step342Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step342F4_carry : s2Step342F4FlagArena.checkBorrow 1 [903]=some s2Step342Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step342F4FlagArena,s2Step342HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step342F4FlagArena,s2Step342HeadFvAfter,s2Step342Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342F4_distinct : (877::789::901::903::((s2Step342Add0A++s2Step342Add1A)++(s2Step342Add0B++s2Step342Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342F4_flag : s2Step342HeadFvAfter.checkBorrow 1 [901]=some s2Step342F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step342HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step342F4_owned : (877::789::((s2Step342Add0A++s2Step342Add1A)++(s2Step342Add0B++s2Step342Add1B))).toFinset⊆s2Step342HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step342HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342F4_checked : compileHmrHybridF4Log s2Step342HeadFvAfter 877 789 s2Step342Add0A s2Step342Add0B s2Step342Add1A s2Step342Add1B [901] [903] s2Step342Add0Work s2Step342Add1Work=some s2Step342F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step342HeadFvAfter s2Step342F4FlagArena s2Step342Add0Arena s2Step342Add0During s2Step342Add1During 877 789
    s2Step342Add0A s2Step342Add0B s2Step342Add1A s2Step342Add1B [901] [903] s2Step342Add0Work s2Step342Add1Work
    (fun q hq => s2Step342F4_owned (List.mem_toFinset.mpr hq)) s2Step342F4_flag s2Step342F4_carry
    s2Step342F4_distinct s2Step342F4_apart s2Step342Add0_checked s2Step342Add1_checked

private theorem s2Step342Front_branch : s2Step342FrontSigmaArena.checkBorrow 1 [789]=some s2Step342HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step342FrontSigmaArena,s2Step342EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step342FrontSigmaArena,s2Step342EntryGvAfter,s2Step342HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342Front_entry : HmrFrontEntryValid s2Step342EntryFBefore s2Step342FrontBank 102 187 ⟨101,100,188,187⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step342FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step342EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step342EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step342FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step342Front_sigma : s2Step342EntryGvAfter.checkBorrow 1 [877]=some s2Step342FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step342EntryGvAfter,arenaWires]
  · rfl

private def s2Step342HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342HeadFBefore : Arena := s2Step342HeadGAfter

private def s2Step342HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step342HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩

private def s2Step342HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839],769⟩

private def s2Step342HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private theorem s2Step342HeadBank_incomingDistinct : ([s2Step342HeadGRow,s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342HeadF_Incoming : rowsOwned s2Step342HeadFBefore [s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342HeadGRow,s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow] 1 s2Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342HeadBank_outgoingOwned : rowsOwned s2Step342HeadFvAfter [s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step342HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342HeadF_Outgoing : rowsOwned s2Step342HeadFvAfter [s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] :=
  hmrRows_owned_drop s2Step342HeadFvAfter [s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] 1 s2Step342HeadBank_outgoingOwned

private theorem s2Step342HeadF_distinct : (s2Step342HeadFRow.sign::s2Step342HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342HeadF_owned : (s2Step342HeadFRow.sign::s2Step342HeadFRow.payload).toFinset⊆s2Step342HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342HeadF_reserved : s2Step342HeadFBefore.reserve s2Step342HeadFFresh.toFinset=some s2Step342HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342HeadFFresh,arenaWires]
  · norm_num [s2Step342HeadFBefore,s2Step342HeadGAfter,s2Step342HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step342HeadFAfter,s2Step342HeadFBefore,s2Step342HeadGAfter,s2Step342HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342HeadF_checked : planRowResizeLog s2Step342HeadFBefore s2Step342HeadFRow 103 s2Step342HeadFFresh=
    some (s2Step342HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 800],768⟩,growRow 768 s2Step342HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step342HeadFBefore s2Step342HeadFAfter s2Step342HeadFRow 103 s2Step342HeadFFresh
    s2Step342HeadF_distinct s2Step342HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342HeadF_reserved
  have rowEq : WindowRow.mk (s2Step342HeadFRow.payload++s2Step342HeadFFresh) s2Step342HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step342HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step342HeadFvBefore : Arena := s2Step342HeadGvAfter

private theorem s2Step342HeadFv_Incoming : rowsOwned s2Step342HeadFvBefore [s2Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342HeadGRow,s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow] 3 s2Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342HeadFvBefore (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342HeadFv_Outgoing : rowsOwned s2Step342HeadFvAfter [s2Step342HeadFvOut] :=
  hmrRows_owned_drop s2Step342HeadFvAfter [s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] 3 s2Step342HeadBank_outgoingOwned

private theorem s2Step342HeadFv_distinct : (s2Step342HeadFvRow.sign::s2Step342HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342HeadFv_owned : (s2Step342HeadFvRow.sign::s2Step342HeadFvRow.payload).toFinset⊆s2Step342HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342HeadFvBefore (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342HeadFv_reserved : s2Step342HeadFvBefore.reserve s2Step342HeadFvFresh.toFinset=some s2Step342HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342HeadFvFresh,arenaWires]
  · norm_num [s2Step342HeadFvBefore,s2Step342HeadGvAfter,s2Step342HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step342HeadFvAfter,s2Step342HeadFvBefore,s2Step342HeadGvAfter,s2Step342HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342HeadFv_checked : planRowResizeLog s2Step342HeadFvBefore s2Step342HeadFvRow 188 s2Step342HeadFvFresh=
    some (s2Step342HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩,growRow 770 s2Step342HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step342HeadFvBefore s2Step342HeadFvAfter s2Step342HeadFvRow 188 s2Step342HeadFvFresh
    s2Step342HeadFv_distinct s2Step342HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step342HeadFvRow.payload++s2Step342HeadFvFresh) s2Step342HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step342HeadG_Incoming : rowsOwned s2Step342HeadGBefore [s2Step342HeadGRow,s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342HeadGRow,s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow] 0 s2Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342HeadG_Outgoing : rowsOwned s2Step342HeadFvAfter [s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] :=
  hmrRows_owned_drop s2Step342HeadFvAfter [s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] 0 s2Step342HeadBank_outgoingOwned

private theorem s2Step342HeadG_distinct : (s2Step342HeadGRow.sign::s2Step342HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342HeadG_owned : (s2Step342HeadGRow.sign::s2Step342HeadGRow.payload).toFinset⊆s2Step342HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342HeadG_reserved : s2Step342HeadGBefore.reserve s2Step342HeadGFresh.toFinset=some s2Step342HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342HeadGFresh,arenaWires]
  · norm_num [s2Step342HeadGBefore,s2Step342HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step342HeadGAfter,s2Step342HeadGBefore,s2Step342HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342HeadG_checked : planRowResizeLog s2Step342HeadGBefore s2Step342HeadGRow 103 s2Step342HeadGFresh=
    some (s2Step342HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839, 778],769⟩,growRow 769 s2Step342HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step342HeadGBefore s2Step342HeadGAfter s2Step342HeadGRow 103 s2Step342HeadGFresh
    s2Step342HeadG_distinct s2Step342HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342HeadG_reserved
  have rowEq : WindowRow.mk (s2Step342HeadGRow.payload++s2Step342HeadGFresh) s2Step342HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 827, 839, 778],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step342HeadGvBefore : Arena := s2Step342HeadFAfter

private theorem s2Step342HeadGv_Incoming : rowsOwned s2Step342HeadGvBefore [s2Step342HeadGvRow,s2Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step342HeadGRow,s2Step342HeadFRow,s2Step342HeadGvRow,s2Step342HeadFvRow] 2 s2Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step342HeadGvBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step342HeadGv_Outgoing : rowsOwned s2Step342HeadFvAfter [s2Step342HeadGvOut,s2Step342HeadFvOut] :=
  hmrRows_owned_drop s2Step342HeadFvAfter [s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut] 2 s2Step342HeadBank_outgoingOwned

private theorem s2Step342HeadGv_distinct : (s2Step342HeadGvRow.sign::s2Step342HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step342HeadGv_owned : (s2Step342HeadGvRow.sign::s2Step342HeadGvRow.payload).toFinset⊆s2Step342HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step342HeadGvBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step342HeadGv_reserved : s2Step342HeadGvBefore.reserve s2Step342HeadGvFresh.toFinset=some s2Step342HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step342HeadGvFresh,arenaWires]
  · norm_num [s2Step342HeadGvBefore,s2Step342HeadFAfter,s2Step342HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step342HeadGvAfter,s2Step342HeadGvBefore,s2Step342HeadFAfter,s2Step342HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step342HeadGv_checked : planRowResizeLog s2Step342HeadGvBefore s2Step342HeadGvRow 188 s2Step342HeadGvFresh=
    some (s2Step342HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 894],771⟩,growRow 771 s2Step342HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step342HeadGvBefore s2Step342HeadGvAfter s2Step342HeadGvRow 188 s2Step342HeadGvFresh
    s2Step342HeadGv_distinct s2Step342HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step342HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step342HeadGvRow.payload++s2Step342HeadGvFresh) s2Step342HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 894],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step342HeadBank_rows : planWindowRowsLog s2Step342HeadGBefore [(s2Step342HeadGRow,103),(s2Step342HeadFRow,103),(s2Step342HeadGvRow,188),(s2Step342HeadFvRow,188)] [s2Step342HeadGFresh,s2Step342HeadFFresh,s2Step342HeadGvFresh,s2Step342HeadFvFresh]=
    some (s2Step342HeadFvAfter,[s2Step342HeadGOut,s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut],(growRow 769 s2Step342HeadGFresh ++ (growRow 768 s2Step342HeadFFresh ++ (growRow 771 s2Step342HeadGvFresh ++ (growRow 770 s2Step342HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step342HeadFvAfter [] []=some (s2Step342HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step342HeadFvBefore s2Step342HeadFvAfter s2Step342HeadFvAfter
    s2Step342HeadFvRow s2Step342HeadFvOut 188 s2Step342HeadFvFresh [] [] []
    (growRow 770 s2Step342HeadFvFresh) ([]) s2Step342HeadFv_Incoming s2Step342HeadFv_checked h4 s2Step342HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step342HeadGvBefore s2Step342HeadGvAfter s2Step342HeadFvAfter
    s2Step342HeadGvRow s2Step342HeadGvOut 188 s2Step342HeadGvFresh [(s2Step342HeadFvRow,188)] [s2Step342HeadFvFresh] [s2Step342HeadFvOut]
    (growRow 771 s2Step342HeadGvFresh) ((growRow 770 s2Step342HeadFvFresh ++ [])) s2Step342HeadGv_Incoming s2Step342HeadGv_checked h3 s2Step342HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step342HeadFBefore s2Step342HeadFAfter s2Step342HeadFvAfter
    s2Step342HeadFRow s2Step342HeadFOut 103 s2Step342HeadFFresh [(s2Step342HeadGvRow,188),(s2Step342HeadFvRow,188)] [s2Step342HeadGvFresh,s2Step342HeadFvFresh] [s2Step342HeadGvOut,s2Step342HeadFvOut]
    (growRow 768 s2Step342HeadFFresh) ((growRow 771 s2Step342HeadGvFresh ++ (growRow 770 s2Step342HeadFvFresh ++ []))) s2Step342HeadF_Incoming s2Step342HeadF_checked h2 s2Step342HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step342HeadGBefore s2Step342HeadGAfter s2Step342HeadFvAfter
    s2Step342HeadGRow s2Step342HeadGOut 103 s2Step342HeadGFresh [(s2Step342HeadFRow,103),(s2Step342HeadGvRow,188),(s2Step342HeadFvRow,188)] [s2Step342HeadFFresh,s2Step342HeadGvFresh,s2Step342HeadFvFresh] [s2Step342HeadFOut,s2Step342HeadGvOut,s2Step342HeadFvOut]
    (growRow 769 s2Step342HeadGFresh) ((growRow 768 s2Step342HeadFFresh ++ (growRow 771 s2Step342HeadGvFresh ++ (growRow 770 s2Step342HeadFvFresh ++ [])))) s2Step342HeadG_Incoming s2Step342HeadG_checked h1 s2Step342HeadG_Outgoing
  exact h0

private theorem s2Step342HeadBank_checked : compileHmrBankResizeLog .headroom s2Step342HeadGBefore ⟨s2Step342HeadFRow,s2Step342HeadGRow,s2Step342HeadFvRow,s2Step342HeadGvRow⟩ ⟨103,103,188,188⟩ [s2Step342HeadGFresh,s2Step342HeadFFresh,s2Step342HeadGvFresh,s2Step342HeadFvFresh]=
    some (s2Step342HeadFvAfter,⟨s2Step342HeadFOut,s2Step342HeadGOut,s2Step342HeadFvOut,s2Step342HeadGvOut⟩,(growRow 769 s2Step342HeadGFresh ++ (growRow 768 s2Step342HeadFFresh ++ (growRow 771 s2Step342HeadGvFresh ++ (growRow 770 s2Step342HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step342HeadBank_rows]
  rfl

private theorem s2Step342Front_checked : compileHmrSourceFrontLog s2Step342EntryFBefore s2Step342FrontBank 102 187 ⟨101,100,188,187⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step342FrontLog=some s2Step342FrontPlan := by
  have pairEq : s2Step342FrontPair=⟨s2Step342HeadFRow,s2Step342HeadGRow,s2Step342HeadFvRow,s2Step342HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step342FrontHead=⟨s2Step342ExitFRow,s2Step342ExitGRow,s2Step342ExitFvRow,s2Step342ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step342Add0A=s2Step342FrontHead.f.wires := by decide +kernel
  have gEq : s2Step342Add0B=s2Step342FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step342Add1A=s2Step342FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step342Add1B=s2Step342FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step342EntryFBefore s2Step342FrontBank 102 187 ⟨101,100,188,187⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step342FrontLog s2Step342FrontPlan
  · exact s2Step342Front_entry
  · exact s2Step342EntryBank_checked
  · exact s2Step342Front_sigma
  · rfl
  · exact s2Step342Front_branch
  · rfl
  · simpa only [s2Step342FrontPlan,pairEq] using s2Step342HeadBank_checked
  · simpa only [s2Step342FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step342F4_checked
  · exact s2Step342Counter_checked
  · rfl
  · simpa only [s2Step342FrontPlan,headEq] using s2Step342ExitBank_checked

private theorem s2Step342Complete_explicit_checked : compileHmrEarlyStepLog s2Step342EntryFBefore s2Step342FrontBank 102 187 ⟨101,100,188,187⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step342CompleteLog=some s2Step342CompletePlan := by
  let Q := s2Step342EarlyControlPlan
  have hq := s2Step342EarlyControl_plan_checked
  have fv1 : s2Step342CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step342CompleteOut.fv.payload[2]?.getD s2Step342CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step342CompleteOut.fv.payload[3]?.getD s2Step342CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step342CompleteOut.fv.payload[4]?.getD s2Step342CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step342EntryFBefore s2Step342EarlyControlArena s2Step342FrontBank 102 187 ⟨101,100,188,187⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step342CompleteLog s2Step342FrontPlan Q
    s2Step342Front_checked s2Step342Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step342Complete_owned s2Step342Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step342EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 877 s2Step342CompleteOut.fv.second (s2Step342CompleteOut.fv.payload[2]?.getD s2Step342CompleteOut.fv.sign) (s2Step342CompleteOut.fv.payload[3]?.getD s2Step342CompleteOut.fv.sign) (s2Step342CompleteOut.fv.payload[4]?.getD s2Step342CompleteOut.fv.sign) 789 60 s2Step342EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep342Arena : Arena := s2Step342EntryFBefore
def s2PrivateStep342Bank : WindowBank := s2Step342FrontBank
def s2PrivateStep342Spec : HmrSourceWalkStepLog := ⟨102,187,⟨101,100,188,187⟩,60,.early s2Step342CompleteLog⟩
def s2PrivateStep342Plan : HmrSourceStepPlan := .early s2Step342CompletePlan
theorem s2PrivateStep342_source : s2PrivateStep342Spec=s2ObservedLogs336[6] := rfl
theorem s2PrivateStep342_checked : compileHmrSourceStepLog s2PrivateStep342Arena s2PrivateStep342Bank
    s2PrivateStep342Spec.fgWidth s2PrivateStep342Spec.vWidth s2PrivateStep342Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 342 s2PrivateStep342Spec.need none s2PrivateStep342Spec.log=some s2PrivateStep342Plan := by
  change compileHmrSourceStepLog s2Step342EntryFBefore s2Step342FrontBank 102 187 ⟨101,100,188,187⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 342 60 none (.early s2Step342CompleteLog)=some (.early s2Step342CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 342<498)]
  rw [s2Step342Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
