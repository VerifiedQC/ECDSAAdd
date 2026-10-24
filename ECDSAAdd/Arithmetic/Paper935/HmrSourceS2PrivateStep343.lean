import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep341
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

private def s2Step343CompleteMoves : List (Wire × Wire) := [(798,99)]

private def s2Step343EarlyControlLog : HmrEarlyControlLog := ⟨[798, 877, 839, 827, 789],[800],[901],[903, 907, 913, 914, 915, 916],[]⟩

private def s2Step343FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [789], [], [877]],[[800], [827], [839], [778]],[[], [], [], []]⟩,[844],[894],[901],[903],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 913]⟩

private def s2Step343CompleteLog : HmrEarlyStepLog := ⟨s2Step343FrontLog,s2Step343CompleteMoves,s2Step343EarlyControlLog⟩

private def s2Step343ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step343ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step343ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step343ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step343FrontOut : WindowBank := ⟨s2Step343ExitFOut,s2Step343ExitGOut,s2Step343ExitFvOut,s2Step343ExitGvOut⟩

private def s2Step343CompleteOut : WindowBank := s2Step343FrontOut.repacked s2Step343CompleteMoves

private def s2Step343EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step343EarlyControlPositiveArena,[800],s2Step343EarlyControlEqualityArena,[901],⟨⟨844,false⟩,[⟨⟨800,false⟩,901⟩]⟩⟩

private def s2Step343EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,877⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,789⟩]⟩

private def s2Step343EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step343EarlyControlZeroArena,s2Step343EarlyControlZeroPlan,s2Step343EarlyControlClassPlan,s2Step343EarlyControlFlagArena,s2Step343EarlyControlFittedArena,s2Step343EarlyControlHistoryArena,s2Step343EarlyControlSigmaArena,s2Step343EarlyControlOutputArena,s2Step343EarlyControlLog⟩

private def s2Step343CounterWork : List Wire := [901, 903, 907, 913]

private theorem s2Step343Counter_bounded : s2Step343CounterWork.toFinset⊆arenaWires := by norm_num [s2Step343CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step343HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343CounterDuring : Arena := ⟨s2Step343HeadFvAfter.live∪s2Step343CounterWork.toFinset,Finset.union_subset s2Step343HeadFvAfter.bounded s2Step343Counter_bounded⟩

private def s2Step343EntryFFresh : List Wire := []

private def s2Step343EntryFvFresh : List Wire := []

private def s2Step343EntryGFresh : List Wire := [789]

private def s2Step343EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EntryGvFresh : List Wire := [877]

private def s2Step343ExitFExtra : List Wire := [827]

private def s2Step343ExitGExtra : List Wire := [99, 789, 800]

private def s2Step343ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343ExitGvExtra : List Wire := [877, 839]

private def s2Step343Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343Add0Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step343Add0_bounded : s2Step343Add0Work.toFinset⊆arenaWires := by
  have h : s2Step343Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step343Add0During : Arena := ⟨s2Step343Add0Arena.live∪s2Step343Add0Work.toFinset,Finset.union_subset s2Step343Add0Arena.bounded s2Step343Add0_bounded⟩

private def s2Step343Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343Add1Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step343Add1_bounded : s2Step343Add1Work.toFinset⊆arenaWires := by
  have h : s2Step343Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step343Add1During : Arena := ⟨s2Step343Add1Arena.live∪s2Step343Add1Work.toFinset,Finset.union_subset s2Step343Add1Arena.bounded s2Step343Add1_bounded⟩

private def s2Step343F4FlagArena : Arena := ⟨s2Step343HeadFvAfter.live∪{901},Finset.union_subset s2Step343HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step343F4Plan : HmrHybridF4Plan := ⟨s2Step343F4FlagArena,[901],s2Step343Add0Arena,[903],s2Step343Add0During,s2Step343Add0Work,s2Step343Add1During,s2Step343Add1Work⟩

private def s2Step343HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 827],768⟩

private def s2Step343HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step343HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 800],769⟩

private def s2Step343HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877, 839],771⟩

private def s2Step343FrontHead : WindowBank := ⟨s2Step343HeadFOut,s2Step343HeadGOut,s2Step343HeadFvOut,s2Step343HeadGvOut⟩

private def s2Step343EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step343EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩

private def s2Step343EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789],769⟩

private def s2Step343EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877],771⟩

private def s2Step343FrontPair : WindowBank := ⟨s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut⟩

private def s2Step343FrontSigmaArena : Arena := ⟨s2Step343EntryGvAfter.live∪{844},Finset.union_subset s2Step343EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step343HeadFFresh : List Wire := [827]

private def s2Step343HeadFvFresh : List Wire := [778]

private def s2Step343HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343HeadGFresh : List Wire := [800]

private def s2Step343HeadGvFresh : List Wire := [839]

private def s2Step343FrontPlan : HmrSourceFront := ⟨s2Step343EntryGvAfter,s2Step343FrontPair,(growRow 768 s2Step343EntryFFresh ++ (growRow 769 s2Step343EntryGFresh ++ (growRow 770 s2Step343EntryFvFresh ++ (growRow 771 s2Step343EntryGvFresh ++ [])))),s2Step343FrontSigmaArena,[844],s2Step343HeadGBefore,[894],
  s2Step343HeadFvAfter,s2Step343FrontHead,(growRow 769 s2Step343HeadGFresh ++ (growRow 768 s2Step343HeadFFresh ++ (growRow 771 s2Step343HeadGvFresh ++ (growRow 770 s2Step343HeadFvFresh ++ [])))),s2Step343F4Plan,s2Step343CounterDuring,s2Step343CounterWork,s2Step343ExitGvAfter,s2Step343FrontOut,(shrinkRow 769 s2Step343ExitGExtra ++ (shrinkRow 768 s2Step343ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step343ExitGvExtra ++ []))))⟩

private def s2Step343CompletePlan : HmrEarlyStepPlan := ⟨s2Step343FrontPlan,s2Step343EarlyControlArena,s2Step343EarlyControlPlan,s2Step343CompleteMoves⟩

private theorem s2Step343Complete_apart : List.Disjoint (s2Step343CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 894, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step343CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 894, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step343Complete_owned : (s2Step343CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step343CompleteMoveArena : Arena := ⟨s2Step343ExitGvAfter.live∪{99},Finset.union_subset s2Step343ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step343Complete_repack : s2Step343ExitGvAfter.checkRepack s2Step343CompleteMoves=some s2Step343EarlyControlArena := by
  have owned : 798∈s2Step343ExitGvAfter.live := by norm_num [s2Step343ExitGvAfter,arenaWires]
  have reserve : s2Step343ExitGvAfter.reserve {99}=some s2Step343CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step343ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step343CompleteMoveArena.retireSet {798}=s2Step343EarlyControlArena := by
    unfold Arena.retireSet s2Step343EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step343CompleteMoveArena,s2Step343ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step343CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step343CompleteMoveArena.retireSet {798}).checkRepack []=some s2Step343EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step343EarlyControl_branchOwned : ([894] : List Wire).toFinset⊆s2Step343EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_branch : compileHmrBranchRetirement s2Step343EarlyControlSigmaArena 894=some s2Step343EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step343EarlyControl_branchOwned
  · ext q
    simp [s2Step343EarlyControlOutputArena,s2Step343EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step343EarlyControl_classEqualityBorrow : s2Step343EarlyControlPositiveArena.checkBorrow (([844, 800] : List Wire).length-1) s2Step343EarlyControlLog.classWork=some s2Step343EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step343EarlyControlPositiveArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step343EarlyControlEqualityArena,s2Step343EarlyControlPositiveArena,s2Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step343EarlyControl_classEqualityOwned : ([844, 800] : List Wire).toFinset⊆s2Step343EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlPositiveArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_classEquality : compileHmrEqualityLog s2Step343EarlyControlPositiveArena [844, 800] 0 s2Step343EarlyControlLog.classWork=some (s2Step343EarlyControlEqualityArena,s2Step343EarlyControlLog.classWork,s2Step343EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step343EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step343EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step343EarlyControl_classOwned : ([777, 789, 844] : List Wire).toFinset⊆s2Step343EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_positiveBorrow : s2Step343EarlyControlZeroArena.checkBorrow (1) s2Step343EarlyControlLog.positiveWork=some s2Step343EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step343EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step343EarlyControlPositiveArena,s2Step343EarlyControlZeroArena,s2Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step343EarlyControl_class : compileHmrSourceClassLog s2Step343EarlyControlZeroArena false 777 s2Step343EarlyControlZeroPlan.top 0 844 s2Step343EarlyControlLog.positiveWork s2Step343EarlyControlLog.classWork=some s2Step343EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step343EarlyControlClassPlan s2Step343EarlyControlZeroArena false 777 s2Step343EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step343EarlyControl_classOwned
  · exact s2Step343EarlyControl_positiveBorrow
  · exact s2Step343EarlyControl_classEquality

private theorem s2Step343EarlyControl_entryRecordOwned : ([894, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_fitBorrow : s2Step343EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step343EarlyControlLog.recordFresh=some s2Step343EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step343EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step343EarlyControlFittedArena,s2Step343EarlyControlFlagArena,s2Step343EarlyControlLog,arenaWires]

private theorem s2Step343EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step343EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_fit : compileHmrRecordGrowLog s2Step343EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step343EarlyControlLog.recordFresh=some s2Step343EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step343EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step343EarlyControl_fitBorrow

private theorem s2Step343EarlyControl_flagsBorrow : s2Step343EarlyControlEqualityArena.checkBorrow (6) s2Step343EarlyControlLog.flagWork=some s2Step343EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step343EarlyControlEqualityArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step343EarlyControlFlagArena,s2Step343EarlyControlEqualityArena,s2Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step343EarlyControl_flagsOwned : ([901, 253, 252, 251] : List Wire).toFinset⊆s2Step343EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlEqualityArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_flags : compileHmrFlagsLog s2Step343EarlyControlClassPlan.equalityArena s2Step343EarlyControlClassPlan.equality.top 253 252 251 s2Step343EarlyControlLog.flagWork=some s2Step343EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step343EarlyControl_flagsOwned⟩
  · exact s2Step343EarlyControl_flagsBorrow

private theorem s2Step343EarlyControl_historyBorrow : s2Step343EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step343EarlyControlLog.recordFresh=some s2Step343EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step343EarlyControlHistoryArena,s2Step343EarlyControlArena,s2Step343EarlyControlLog,arenaWires]

private theorem s2Step343EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_history : compileHmrRecordGrowLog s2Step343EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step343EarlyControlLog.recordFresh=some s2Step343EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step343EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step343EarlyControl_historyBorrow

private theorem s2Step343EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step343EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step343EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_sigmaRelease : s2Step343EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step343EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step343EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step343EarlyControlSigmaArena,s2Step343EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step343EarlyControl_sigma : compileHmrSigmaDropLog s2Step343EarlyControlHistoryArena false 0 0 254 844 []=some s2Step343EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step343EarlyControl_sigmaOwned⟩
  · exact s2Step343EarlyControl_sigmaRelease

private theorem s2Step343EarlyControl_zeroBorrow : s2Step343EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step343EarlyControlLog.zeroWork=some s2Step343EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step343EarlyControlZeroArena,s2Step343EarlyControlArena,s2Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step343EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step343EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EarlyControl_zero : compileHmrEqualityLog s2Step343EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step343EarlyControlLog.zeroWork=some (s2Step343EarlyControlZeroArena,s2Step343EarlyControlLog.zeroWork,s2Step343EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step343EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step343EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step343EarlyControl_logged : s2Step343EarlyControlPlan.Logged s2Step343EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 844 254 253 252 251 894 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step343EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step343EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step343EarlyControl_zero
  · exact s2Step343EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step343EarlyControl_flags
  · exact s2Step343EarlyControl_fit
  · exact s2Step343EarlyControl_history
  · exact s2Step343EarlyControl_sigma
  · exact s2Step343EarlyControl_branch

private theorem s2Step343EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step343EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 844 254 253 252 251 894 60 s2Step343EarlyControlLog=some s2Step343EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step343EarlyControlPlan s2Step343EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 844 254 253 252 251 894 60 s2Step343EarlyControl_logged

private def s2Step343EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step343EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩

private def s2Step343EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],769⟩

private def s2Step343EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step343FrontBank : WindowBank := ⟨s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow⟩

private def s2Step343Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 827, 768]

private def s2Step343Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 800, 769]

private def s2Step343Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 770]

private def s2Step343Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877, 839, 771]

private theorem s2Step343Counter_apart : Disjoint s2Step343HeadFvAfter.live s2Step343CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step343HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343Counter_borrowed : s2Step343HeadFvAfter.checkBorrow 4 s2Step343CounterWork=some s2Step343CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step343HeadFvAfter s2Step343CounterDuring s2Step343CounterWork.toFinset s2Step343Counter_bounded s2Step343Counter_apart rfl

private theorem s2Step343Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step343HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step343HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343Counter_checked : compileHmrCounterStepLog s2Step343HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step343CounterWork=some s2Step343CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step343HeadFvAfter.live := fun q hq => s2Step343Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step343Counter_borrowed

private def s2Step343EntryFAfter : Arena := s2Step343EntryFBefore

private theorem s2Step343EntryBank_incomingDistinct : ([s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343EntryF_Incoming : rowsOwned s2Step343EntryFBefore [s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow] 0 s2Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343EntryBank_outgoingOwned : rowsOwned s2Step343EntryGvAfter [s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step343EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343EntryF_Outgoing : rowsOwned s2Step343EntryGvAfter [s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] :=
  hmrRows_owned_drop s2Step343EntryGvAfter [s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] 0 s2Step343EntryBank_outgoingOwned

private theorem s2Step343EntryF_distinct : (s2Step343EntryFRow.sign::s2Step343EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343EntryF_owned : (s2Step343EntryFRow.sign::s2Step343EntryFRow.payload).toFinset⊆s2Step343EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EntryF_reserved : s2Step343EntryFBefore.reserve s2Step343EntryFFresh.toFinset=some s2Step343EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343EntryFFresh,arenaWires]
  · norm_num [s2Step343EntryFBefore,s2Step343EntryFFresh,arenaWires]
  · simp only [s2Step343EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step343EntryF_checked : planRowResizeLog s2Step343EntryFBefore s2Step343EntryFRow 101 s2Step343EntryFFresh=
    some (s2Step343EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩,growRow 768 s2Step343EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step343EntryFBefore s2Step343EntryFAfter s2Step343EntryFRow 101 s2Step343EntryFFresh
    s2Step343EntryF_distinct s2Step343EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343EntryF_reserved
  have rowEq : WindowRow.mk (s2Step343EntryFRow.payload++s2Step343EntryFFresh) s2Step343EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step343EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343EntryFvAfter : Arena := s2Step343EntryGAfter

private def s2Step343EntryFvBefore : Arena := s2Step343EntryGAfter

private theorem s2Step343EntryFv_Incoming : rowsOwned s2Step343EntryFvBefore [s2Step343EntryFvRow,s2Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow] 2 s2Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343EntryFv_Outgoing : rowsOwned s2Step343EntryGvAfter [s2Step343EntryFvOut,s2Step343EntryGvOut] :=
  hmrRows_owned_drop s2Step343EntryGvAfter [s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] 2 s2Step343EntryBank_outgoingOwned

private theorem s2Step343EntryFv_distinct : (s2Step343EntryFvRow.sign::s2Step343EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343EntryFv_owned : (s2Step343EntryFvRow.sign::s2Step343EntryFvRow.payload).toFinset⊆s2Step343EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EntryFv_reserved : s2Step343EntryFvBefore.reserve s2Step343EntryFvFresh.toFinset=some s2Step343EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343EntryFvFresh,arenaWires]
  · norm_num [s2Step343EntryFvBefore,s2Step343EntryGAfter,s2Step343EntryFvFresh,arenaWires]
  · simp only [s2Step343EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step343EntryFv_checked : planRowResizeLog s2Step343EntryFvBefore s2Step343EntryFvRow 188 s2Step343EntryFvFresh=
    some (s2Step343EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩,growRow 770 s2Step343EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step343EntryFvBefore s2Step343EntryFvAfter s2Step343EntryFvRow 188 s2Step343EntryFvFresh
    s2Step343EntryFv_distinct s2Step343EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step343EntryFvRow.payload++s2Step343EntryFvFresh) s2Step343EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step343EntryGBefore : Arena := s2Step343EntryFBefore

private theorem s2Step343EntryG_Incoming : rowsOwned s2Step343EntryGBefore [s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow] 1 s2Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343EntryG_Outgoing : rowsOwned s2Step343EntryGvAfter [s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] :=
  hmrRows_owned_drop s2Step343EntryGvAfter [s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] 1 s2Step343EntryBank_outgoingOwned

private theorem s2Step343EntryG_distinct : (s2Step343EntryGRow.sign::s2Step343EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343EntryG_owned : (s2Step343EntryGRow.sign::s2Step343EntryGRow.payload).toFinset⊆s2Step343EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EntryG_reserved : s2Step343EntryGBefore.reserve s2Step343EntryGFresh.toFinset=some s2Step343EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343EntryGFresh,arenaWires]
  · norm_num [s2Step343EntryGBefore,s2Step343EntryFBefore,s2Step343EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step343EntryGAfter,s2Step343EntryGBefore,s2Step343EntryFBefore,s2Step343EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343EntryG_checked : planRowResizeLog s2Step343EntryGBefore s2Step343EntryGRow 101 s2Step343EntryGFresh=
    some (s2Step343EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789],769⟩,growRow 769 s2Step343EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step343EntryGBefore s2Step343EntryGAfter s2Step343EntryGRow 101 s2Step343EntryGFresh
    s2Step343EntryG_distinct s2Step343EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343EntryG_reserved
  have rowEq : WindowRow.mk (s2Step343EntryGRow.payload++s2Step343EntryGFresh) s2Step343EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step343EntryGvBefore : Arena := s2Step343EntryGAfter

private theorem s2Step343EntryGv_Incoming : rowsOwned s2Step343EntryGvBefore [s2Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow] 3 s2Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343EntryGv_Outgoing : rowsOwned s2Step343EntryGvAfter [s2Step343EntryGvOut] :=
  hmrRows_owned_drop s2Step343EntryGvAfter [s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut] 3 s2Step343EntryBank_outgoingOwned

private theorem s2Step343EntryGv_distinct : (s2Step343EntryGvRow.sign::s2Step343EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343EntryGv_owned : (s2Step343EntryGvRow.sign::s2Step343EntryGvRow.payload).toFinset⊆s2Step343EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343EntryGv_reserved : s2Step343EntryGvBefore.reserve s2Step343EntryGvFresh.toFinset=some s2Step343EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343EntryGvFresh,arenaWires]
  · norm_num [s2Step343EntryGvBefore,s2Step343EntryGAfter,s2Step343EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step343EntryGvAfter,s2Step343EntryGvBefore,s2Step343EntryGAfter,s2Step343EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343EntryGv_checked : planRowResizeLog s2Step343EntryGvBefore s2Step343EntryGvRow 188 s2Step343EntryGvFresh=
    some (s2Step343EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877],771⟩,growRow 771 s2Step343EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step343EntryGvBefore s2Step343EntryGvAfter s2Step343EntryGvRow 188 s2Step343EntryGvFresh
    s2Step343EntryGv_distinct s2Step343EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step343EntryGvRow.payload++s2Step343EntryGvFresh) s2Step343EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step343EntryBank_rows : planWindowRowsLog s2Step343EntryFBefore [(s2Step343EntryFRow,101),(s2Step343EntryGRow,101),(s2Step343EntryFvRow,188),(s2Step343EntryGvRow,188)] [s2Step343EntryFFresh,s2Step343EntryGFresh,s2Step343EntryFvFresh,s2Step343EntryGvFresh]=
    some (s2Step343EntryGvAfter,[s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut],(growRow 768 s2Step343EntryFFresh ++ (growRow 769 s2Step343EntryGFresh ++ (growRow 770 s2Step343EntryFvFresh ++ (growRow 771 s2Step343EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step343EntryGvAfter [] []=some (s2Step343EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step343EntryGvBefore s2Step343EntryGvAfter s2Step343EntryGvAfter
    s2Step343EntryGvRow s2Step343EntryGvOut 188 s2Step343EntryGvFresh [] [] []
    (growRow 771 s2Step343EntryGvFresh) ([]) s2Step343EntryGv_Incoming s2Step343EntryGv_checked h4 s2Step343EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step343EntryFvBefore s2Step343EntryFvAfter s2Step343EntryGvAfter
    s2Step343EntryFvRow s2Step343EntryFvOut 188 s2Step343EntryFvFresh [(s2Step343EntryGvRow,188)] [s2Step343EntryGvFresh] [s2Step343EntryGvOut]
    (growRow 770 s2Step343EntryFvFresh) ((growRow 771 s2Step343EntryGvFresh ++ [])) s2Step343EntryFv_Incoming s2Step343EntryFv_checked h3 s2Step343EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step343EntryGBefore s2Step343EntryGAfter s2Step343EntryGvAfter
    s2Step343EntryGRow s2Step343EntryGOut 101 s2Step343EntryGFresh [(s2Step343EntryFvRow,188),(s2Step343EntryGvRow,188)] [s2Step343EntryFvFresh,s2Step343EntryGvFresh] [s2Step343EntryFvOut,s2Step343EntryGvOut]
    (growRow 769 s2Step343EntryGFresh) ((growRow 770 s2Step343EntryFvFresh ++ (growRow 771 s2Step343EntryGvFresh ++ []))) s2Step343EntryG_Incoming s2Step343EntryG_checked h2 s2Step343EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step343EntryFBefore s2Step343EntryFAfter s2Step343EntryGvAfter
    s2Step343EntryFRow s2Step343EntryFOut 101 s2Step343EntryFFresh [(s2Step343EntryGRow,101),(s2Step343EntryFvRow,188),(s2Step343EntryGvRow,188)] [s2Step343EntryGFresh,s2Step343EntryFvFresh,s2Step343EntryGvFresh] [s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut]
    (growRow 768 s2Step343EntryFFresh) ((growRow 769 s2Step343EntryGFresh ++ (growRow 770 s2Step343EntryFvFresh ++ (growRow 771 s2Step343EntryGvFresh ++ [])))) s2Step343EntryF_Incoming s2Step343EntryF_checked h1 s2Step343EntryF_Outgoing
  exact h0

private theorem s2Step343EntryBank_checked : compileHmrBankResizeLog .entry s2Step343EntryFBefore ⟨s2Step343EntryFRow,s2Step343EntryGRow,s2Step343EntryFvRow,s2Step343EntryGvRow⟩ ⟨101,101,188,188⟩ [s2Step343EntryFFresh,s2Step343EntryGFresh,s2Step343EntryFvFresh,s2Step343EntryGvFresh]=
    some (s2Step343EntryGvAfter,⟨s2Step343EntryFOut,s2Step343EntryGOut,s2Step343EntryFvOut,s2Step343EntryGvOut⟩,(growRow 768 s2Step343EntryFFresh ++ (growRow 769 s2Step343EntryGFresh ++ (growRow 770 s2Step343EntryFvFresh ++ (growRow 771 s2Step343EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step343EntryBank_rows]
  rfl

private def s2Step343ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343ExitFBefore : Arena := s2Step343ExitGAfter

private def s2Step343ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 827],768⟩

private def s2Step343ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step343ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 800],769⟩

private def s2Step343ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877, 839],771⟩

private theorem s2Step343ExitBank_incomingDistinct : ([s2Step343ExitGRow,s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343ExitF_Incoming : rowsOwned s2Step343ExitFBefore [s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343ExitGRow,s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow] 1 s2Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343ExitFBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343ExitBank_outgoingOwned : rowsOwned s2Step343ExitGvAfter [s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step343ExitGvAfter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343ExitF_Outgoing : rowsOwned s2Step343ExitGvAfter [s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] :=
  hmrRows_owned_drop s2Step343ExitGvAfter [s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] 1 s2Step343ExitBank_outgoingOwned

private theorem s2Step343ExitF_distinct : (s2Step343ExitFRow.sign::s2Step343ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343ExitF_owned : (s2Step343ExitFRow.sign::s2Step343ExitFRow.payload).toFinset⊆s2Step343ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343ExitFBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343ExitF_retired : s2Step343ExitFBefore.retireSet s2Step343ExitFExtra.toFinset=s2Step343ExitFAfter := by
  unfold Arena.retireSet s2Step343ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step343ExitFBefore,s2Step343ExitGAfter,s2Step343ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step343ExitF_checked : planRowResizeLog s2Step343ExitFBefore s2Step343ExitFRow 101 []=
    some (s2Step343ExitFAfter,s2Step343ExitFOut,shrinkRow 768 s2Step343ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step343ExitFBefore s2Step343ExitFRow 101 s2Step343ExitF_distinct s2Step343ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step343ExitFRow.payload.take 101) s2Step343ExitFRow.sign=s2Step343ExitFOut := by decide +kernel
  have hi : s2Step343ExitFRow.payload.drop 101=s2Step343ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step343ExitF_retired] at result
  exact result

private def s2Step343ExitFvAfter : Arena := s2Step343ExitFAfter

private def s2Step343ExitFvBefore : Arena := s2Step343ExitFAfter

private theorem s2Step343ExitFv_Incoming : rowsOwned s2Step343ExitFvBefore [s2Step343ExitFvRow,s2Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343ExitGRow,s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow] 2 s2Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343ExitFvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343ExitFv_Outgoing : rowsOwned s2Step343ExitGvAfter [s2Step343ExitFvOut,s2Step343ExitGvOut] :=
  hmrRows_owned_drop s2Step343ExitGvAfter [s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] 2 s2Step343ExitBank_outgoingOwned

private theorem s2Step343ExitFv_distinct : (s2Step343ExitFvRow.sign::s2Step343ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343ExitFv_owned : (s2Step343ExitFvRow.sign::s2Step343ExitFvRow.payload).toFinset⊆s2Step343ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343ExitFvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343ExitFv_reserved : s2Step343ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step343ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step343ExitFv_checked : planRowResizeLog s2Step343ExitFvBefore s2Step343ExitFvRow 189 []=
    some (s2Step343ExitFvAfter,s2Step343ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step343ExitFvBefore s2Step343ExitFvAfter s2Step343ExitFvRow 189 []
    s2Step343ExitFv_distinct s2Step343ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step343ExitFvRow.payload++[]) s2Step343ExitFvRow.sign=s2Step343ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step343ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step343ExitG_Incoming : rowsOwned s2Step343ExitGBefore [s2Step343ExitGRow,s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343ExitGRow,s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow] 0 s2Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343ExitGBefore (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343ExitG_Outgoing : rowsOwned s2Step343ExitGvAfter [s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] :=
  hmrRows_owned_drop s2Step343ExitGvAfter [s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] 0 s2Step343ExitBank_outgoingOwned

private theorem s2Step343ExitG_distinct : (s2Step343ExitGRow.sign::s2Step343ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343ExitG_owned : (s2Step343ExitGRow.sign::s2Step343ExitGRow.payload).toFinset⊆s2Step343ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343ExitGBefore (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343ExitG_retired : s2Step343ExitGBefore.retireSet s2Step343ExitGExtra.toFinset=s2Step343ExitGAfter := by
  unfold Arena.retireSet s2Step343ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step343ExitGBefore,s2Step343ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step343ExitG_checked : planRowResizeLog s2Step343ExitGBefore s2Step343ExitGRow 99 []=
    some (s2Step343ExitGAfter,s2Step343ExitGOut,shrinkRow 769 s2Step343ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step343ExitGBefore s2Step343ExitGRow 99 s2Step343ExitG_distinct s2Step343ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step343ExitGRow.payload.take 99) s2Step343ExitGRow.sign=s2Step343ExitGOut := by decide +kernel
  have hi : s2Step343ExitGRow.payload.drop 99=s2Step343ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step343ExitG_retired] at result
  exact result

private def s2Step343ExitGvBefore : Arena := s2Step343ExitFAfter

private theorem s2Step343ExitGv_Incoming : rowsOwned s2Step343ExitGvBefore [s2Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343ExitGRow,s2Step343ExitFRow,s2Step343ExitFvRow,s2Step343ExitGvRow] 3 s2Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343ExitGvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343ExitGv_Outgoing : rowsOwned s2Step343ExitGvAfter [s2Step343ExitGvOut] :=
  hmrRows_owned_drop s2Step343ExitGvAfter [s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut] 3 s2Step343ExitBank_outgoingOwned

private theorem s2Step343ExitGv_distinct : (s2Step343ExitGvRow.sign::s2Step343ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343ExitGv_owned : (s2Step343ExitGvRow.sign::s2Step343ExitGvRow.payload).toFinset⊆s2Step343ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343ExitGvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343ExitGv_retired : s2Step343ExitGvBefore.retireSet s2Step343ExitGvExtra.toFinset=s2Step343ExitGvAfter := by
  unfold Arena.retireSet s2Step343ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step343ExitGvBefore,s2Step343ExitFAfter,s2Step343ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step343ExitGv_checked : planRowResizeLog s2Step343ExitGvBefore s2Step343ExitGvRow 187 []=
    some (s2Step343ExitGvAfter,s2Step343ExitGvOut,shrinkRow 771 s2Step343ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step343ExitGvBefore s2Step343ExitGvRow 187 s2Step343ExitGv_distinct s2Step343ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step343ExitGvRow.payload.take 187) s2Step343ExitGvRow.sign=s2Step343ExitGvOut := by decide +kernel
  have hi : s2Step343ExitGvRow.payload.drop 187=s2Step343ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step343ExitGv_retired] at result
  exact result

private theorem s2Step343ExitBank_rows : planWindowRowsLog s2Step343ExitGBefore [(s2Step343ExitGRow,99),(s2Step343ExitFRow,101),(s2Step343ExitFvRow,189),(s2Step343ExitGvRow,187)] [[],[],[],[]]=
    some (s2Step343ExitGvAfter,[s2Step343ExitGOut,s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut],(shrinkRow 769 s2Step343ExitGExtra ++ (shrinkRow 768 s2Step343ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step343ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step343ExitGvAfter [] []=some (s2Step343ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step343ExitGvBefore s2Step343ExitGvAfter s2Step343ExitGvAfter
    s2Step343ExitGvRow s2Step343ExitGvOut 187 [] [] [] []
    (shrinkRow 771 s2Step343ExitGvExtra) ([]) s2Step343ExitGv_Incoming s2Step343ExitGv_checked h4 s2Step343ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step343ExitFvBefore s2Step343ExitFvAfter s2Step343ExitGvAfter
    s2Step343ExitFvRow s2Step343ExitFvOut 189 [] [(s2Step343ExitGvRow,187)] [[]] [s2Step343ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step343ExitGvExtra ++ [])) s2Step343ExitFv_Incoming s2Step343ExitFv_checked h3 s2Step343ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step343ExitFBefore s2Step343ExitFAfter s2Step343ExitGvAfter
    s2Step343ExitFRow s2Step343ExitFOut 101 [] [(s2Step343ExitFvRow,189),(s2Step343ExitGvRow,187)] [[],[]] [s2Step343ExitFvOut,s2Step343ExitGvOut]
    (shrinkRow 768 s2Step343ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step343ExitGvExtra ++ []))) s2Step343ExitF_Incoming s2Step343ExitF_checked h2 s2Step343ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step343ExitGBefore s2Step343ExitGAfter s2Step343ExitGvAfter
    s2Step343ExitGRow s2Step343ExitGOut 99 [] [(s2Step343ExitFRow,101),(s2Step343ExitFvRow,189),(s2Step343ExitGvRow,187)] [[],[],[]] [s2Step343ExitFOut,s2Step343ExitFvOut,s2Step343ExitGvOut]
    (shrinkRow 769 s2Step343ExitGExtra) ((shrinkRow 768 s2Step343ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step343ExitGvExtra ++ [])))) s2Step343ExitG_Incoming s2Step343ExitG_checked h1 s2Step343ExitG_Outgoing
  exact h0

private theorem s2Step343ExitBank_checked : compileHmrBankResizeLog .exit s2Step343ExitGBefore ⟨s2Step343ExitFRow,s2Step343ExitGRow,s2Step343ExitFvRow,s2Step343ExitGvRow⟩ ⟨101,99,189,187⟩ [[],[],[],[]]=
    some (s2Step343ExitGvAfter,⟨s2Step343ExitFOut,s2Step343ExitGOut,s2Step343ExitFvOut,s2Step343ExitGvOut⟩,(shrinkRow 769 s2Step343ExitGExtra ++ (shrinkRow 768 s2Step343ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step343ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step343ExitBank_rows]
  rfl

private theorem s2Step343Add0_apart : Disjoint s2Step343Add0Arena.live s2Step343Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step343Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343Add0_card : s2Step343Add0Arena.live.card=912 := by
  decide +kernel

private theorem s2Step343Add0_borrowed : s2Step343Add0Arena.checkBorrow (hmrHybridCount s2Step343Add0Arena s2Step343Add0B.length) s2Step343Add0Work=some s2Step343Add0During := by
  have len : s2Step343Add0Work.length=hmrHybridCount s2Step343Add0Arena s2Step343Add0B.length := by
    rw [hmrHybridCount,s2Step343Add0_card]
    decide +kernel
  have nd : s2Step343Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step343Add0Arena s2Step343Add0During s2Step343Add0Work.toFinset s2Step343Add0_bounded s2Step343Add0_apart rfl

private theorem s2Step343Add0_distinct : (901::894::903::(s2Step343Add0A++s2Step343Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343Add0_owned : (901::894::903::(s2Step343Add0A++s2Step343Add0B)).toFinset⊆s2Step343Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step343Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343Add0_checked : compileHmrHybridCinLog s2Step343Add0Arena 894 901 903 s2Step343Add0A s2Step343Add0B s2Step343Add0Work=some s2Step343Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step343Add0Arena s2Step343Add0During 894 901 903 s2Step343Add0A s2Step343Add0B s2Step343Add0Work
    (by decide +kernel) (by decide +kernel) s2Step343Add0_distinct
    (fun q hq => s2Step343Add0_owned (List.mem_toFinset.mpr hq)) s2Step343Add0_borrowed

private theorem s2Step343Add1_apart : Disjoint s2Step343Add1Arena.live s2Step343Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step343Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343Add1_card : s2Step343Add1Arena.live.card=912 := by
  decide +kernel

private theorem s2Step343Add1_borrowed : s2Step343Add1Arena.checkBorrow (hmrHybridCount s2Step343Add1Arena s2Step343Add1B.length) s2Step343Add1Work=some s2Step343Add1During := by
  have len : s2Step343Add1Work.length=hmrHybridCount s2Step343Add1Arena s2Step343Add1B.length := by
    rw [hmrHybridCount,s2Step343Add1_card]
    decide +kernel
  have nd : s2Step343Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step343Add1Arena s2Step343Add1During s2Step343Add1Work.toFinset s2Step343Add1_bounded s2Step343Add1_apart rfl

private theorem s2Step343Add1_distinct : (901::894::903::(s2Step343Add1A++s2Step343Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343Add1_owned : (901::894::903::(s2Step343Add1A++s2Step343Add1B)).toFinset⊆s2Step343Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step343Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343Add1_checked : compileHmrHybridCinLog s2Step343Add1Arena 894 901 903 s2Step343Add1A s2Step343Add1B s2Step343Add1Work=some s2Step343Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step343Add1Arena s2Step343Add1During 894 901 903 s2Step343Add1A s2Step343Add1B s2Step343Add1Work
    (by decide +kernel) (by decide +kernel) s2Step343Add1_distinct
    (fun q hq => s2Step343Add1_owned (List.mem_toFinset.mpr hq)) s2Step343Add1_borrowed

private theorem s2Step343F4_apart : Disjoint (s2Step343Add0A++s2Step343Add0B).toFinset (s2Step343Add1A++s2Step343Add1B).toFinset := by
  have nd : ((s2Step343Add0A++s2Step343Add0B)++(s2Step343Add1A++s2Step343Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step343F4_carry : s2Step343F4FlagArena.checkBorrow 1 [903]=some s2Step343Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step343F4FlagArena,s2Step343HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step343F4FlagArena,s2Step343HeadFvAfter,s2Step343Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343F4_distinct : (844::894::901::903::((s2Step343Add0A++s2Step343Add1A)++(s2Step343Add0B++s2Step343Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343F4_flag : s2Step343HeadFvAfter.checkBorrow 1 [901]=some s2Step343F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step343HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step343F4_owned : (844::894::((s2Step343Add0A++s2Step343Add1A)++(s2Step343Add0B++s2Step343Add1B))).toFinset⊆s2Step343HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step343HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343F4_checked : compileHmrHybridF4Log s2Step343HeadFvAfter 844 894 s2Step343Add0A s2Step343Add0B s2Step343Add1A s2Step343Add1B [901] [903] s2Step343Add0Work s2Step343Add1Work=some s2Step343F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step343HeadFvAfter s2Step343F4FlagArena s2Step343Add0Arena s2Step343Add0During s2Step343Add1During 844 894
    s2Step343Add0A s2Step343Add0B s2Step343Add1A s2Step343Add1B [901] [903] s2Step343Add0Work s2Step343Add1Work
    (fun q hq => s2Step343F4_owned (List.mem_toFinset.mpr hq)) s2Step343F4_flag s2Step343F4_carry
    s2Step343F4_distinct s2Step343F4_apart s2Step343Add0_checked s2Step343Add1_checked

private theorem s2Step343Front_branch : s2Step343FrontSigmaArena.checkBorrow 1 [894]=some s2Step343HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step343FrontSigmaArena,s2Step343EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step343FrontSigmaArena,s2Step343EntryGvAfter,s2Step343HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343Front_entry : HmrFrontEntryValid s2Step343EntryFBefore s2Step343FrontBank 101 188 ⟨101,99,189,187⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step343FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step343EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step343EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step343FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step343Front_sigma : s2Step343EntryGvAfter.checkBorrow 1 [844]=some s2Step343FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step343EntryGvAfter,arenaWires]
  · rfl

private def s2Step343HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343HeadFBefore : Arena := s2Step343HeadGAfter

private def s2Step343HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step343HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896],770⟩

private def s2Step343HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789],769⟩

private def s2Step343HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877],771⟩

private theorem s2Step343HeadBank_incomingDistinct : ([s2Step343HeadGRow,s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343HeadF_Incoming : rowsOwned s2Step343HeadFBefore [s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343HeadGRow,s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow] 1 s2Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343HeadBank_outgoingOwned : rowsOwned s2Step343HeadFvAfter [s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step343HeadFvAfter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343HeadF_Outgoing : rowsOwned s2Step343HeadFvAfter [s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] :=
  hmrRows_owned_drop s2Step343HeadFvAfter [s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] 1 s2Step343HeadBank_outgoingOwned

private theorem s2Step343HeadF_distinct : (s2Step343HeadFRow.sign::s2Step343HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343HeadF_owned : (s2Step343HeadFRow.sign::s2Step343HeadFRow.payload).toFinset⊆s2Step343HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343HeadF_reserved : s2Step343HeadFBefore.reserve s2Step343HeadFFresh.toFinset=some s2Step343HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343HeadFFresh,arenaWires]
  · norm_num [s2Step343HeadFBefore,s2Step343HeadGAfter,s2Step343HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step343HeadFAfter,s2Step343HeadFBefore,s2Step343HeadGAfter,s2Step343HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343HeadF_checked : planRowResizeLog s2Step343HeadFBefore s2Step343HeadFRow 102 s2Step343HeadFFresh=
    some (s2Step343HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 827],768⟩,growRow 768 s2Step343HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step343HeadFBefore s2Step343HeadFAfter s2Step343HeadFRow 102 s2Step343HeadFFresh
    s2Step343HeadF_distinct s2Step343HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343HeadF_reserved
  have rowEq : WindowRow.mk (s2Step343HeadFRow.payload++s2Step343HeadFFresh) s2Step343HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step343HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step343HeadFvBefore : Arena := s2Step343HeadGvAfter

private theorem s2Step343HeadFv_Incoming : rowsOwned s2Step343HeadFvBefore [s2Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343HeadGRow,s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow] 3 s2Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343HeadFv_Outgoing : rowsOwned s2Step343HeadFvAfter [s2Step343HeadFvOut] :=
  hmrRows_owned_drop s2Step343HeadFvAfter [s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] 3 s2Step343HeadBank_outgoingOwned

private theorem s2Step343HeadFv_distinct : (s2Step343HeadFvRow.sign::s2Step343HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343HeadFv_owned : (s2Step343HeadFvRow.sign::s2Step343HeadFvRow.payload).toFinset⊆s2Step343HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343HeadFv_reserved : s2Step343HeadFvBefore.reserve s2Step343HeadFvFresh.toFinset=some s2Step343HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343HeadFvFresh,arenaWires]
  · norm_num [s2Step343HeadFvBefore,s2Step343HeadGvAfter,s2Step343HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step343HeadFvAfter,s2Step343HeadFvBefore,s2Step343HeadGvAfter,s2Step343HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343HeadFv_checked : planRowResizeLog s2Step343HeadFvBefore s2Step343HeadFvRow 189 s2Step343HeadFvFresh=
    some (s2Step343HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩,growRow 770 s2Step343HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step343HeadFvBefore s2Step343HeadFvAfter s2Step343HeadFvRow 189 s2Step343HeadFvFresh
    s2Step343HeadFv_distinct s2Step343HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step343HeadFvRow.payload++s2Step343HeadFvFresh) s2Step343HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step343HeadG_Incoming : rowsOwned s2Step343HeadGBefore [s2Step343HeadGRow,s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343HeadGRow,s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow] 0 s2Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343HeadG_Outgoing : rowsOwned s2Step343HeadFvAfter [s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] :=
  hmrRows_owned_drop s2Step343HeadFvAfter [s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] 0 s2Step343HeadBank_outgoingOwned

private theorem s2Step343HeadG_distinct : (s2Step343HeadGRow.sign::s2Step343HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343HeadG_owned : (s2Step343HeadGRow.sign::s2Step343HeadGRow.payload).toFinset⊆s2Step343HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343HeadG_reserved : s2Step343HeadGBefore.reserve s2Step343HeadGFresh.toFinset=some s2Step343HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343HeadGFresh,arenaWires]
  · norm_num [s2Step343HeadGBefore,s2Step343HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step343HeadGAfter,s2Step343HeadGBefore,s2Step343HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343HeadG_checked : planRowResizeLog s2Step343HeadGBefore s2Step343HeadGRow 102 s2Step343HeadGFresh=
    some (s2Step343HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 800],769⟩,growRow 769 s2Step343HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step343HeadGBefore s2Step343HeadGAfter s2Step343HeadGRow 102 s2Step343HeadGFresh
    s2Step343HeadG_distinct s2Step343HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343HeadG_reserved
  have rowEq : WindowRow.mk (s2Step343HeadGRow.payload++s2Step343HeadGFresh) s2Step343HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step343HeadGvBefore : Arena := s2Step343HeadFAfter

private theorem s2Step343HeadGv_Incoming : rowsOwned s2Step343HeadGvBefore [s2Step343HeadGvRow,s2Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step343HeadGRow,s2Step343HeadFRow,s2Step343HeadGvRow,s2Step343HeadFvRow] 2 s2Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step343HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step343HeadGv_Outgoing : rowsOwned s2Step343HeadFvAfter [s2Step343HeadGvOut,s2Step343HeadFvOut] :=
  hmrRows_owned_drop s2Step343HeadFvAfter [s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut] 2 s2Step343HeadBank_outgoingOwned

private theorem s2Step343HeadGv_distinct : (s2Step343HeadGvRow.sign::s2Step343HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step343HeadGv_owned : (s2Step343HeadGvRow.sign::s2Step343HeadGvRow.payload).toFinset⊆s2Step343HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step343HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step343HeadGv_reserved : s2Step343HeadGvBefore.reserve s2Step343HeadGvFresh.toFinset=some s2Step343HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step343HeadGvFresh,arenaWires]
  · norm_num [s2Step343HeadGvBefore,s2Step343HeadFAfter,s2Step343HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step343HeadGvAfter,s2Step343HeadGvBefore,s2Step343HeadFAfter,s2Step343HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step343HeadGv_checked : planRowResizeLog s2Step343HeadGvBefore s2Step343HeadGvRow 189 s2Step343HeadGvFresh=
    some (s2Step343HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877, 839],771⟩,growRow 771 s2Step343HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step343HeadGvBefore s2Step343HeadGvAfter s2Step343HeadGvRow 189 s2Step343HeadGvFresh
    s2Step343HeadGv_distinct s2Step343HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step343HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step343HeadGvRow.payload++s2Step343HeadGvFresh) s2Step343HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 877, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step343HeadBank_rows : planWindowRowsLog s2Step343HeadGBefore [(s2Step343HeadGRow,102),(s2Step343HeadFRow,102),(s2Step343HeadGvRow,189),(s2Step343HeadFvRow,189)] [s2Step343HeadGFresh,s2Step343HeadFFresh,s2Step343HeadGvFresh,s2Step343HeadFvFresh]=
    some (s2Step343HeadFvAfter,[s2Step343HeadGOut,s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut],(growRow 769 s2Step343HeadGFresh ++ (growRow 768 s2Step343HeadFFresh ++ (growRow 771 s2Step343HeadGvFresh ++ (growRow 770 s2Step343HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step343HeadFvAfter [] []=some (s2Step343HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step343HeadFvBefore s2Step343HeadFvAfter s2Step343HeadFvAfter
    s2Step343HeadFvRow s2Step343HeadFvOut 189 s2Step343HeadFvFresh [] [] []
    (growRow 770 s2Step343HeadFvFresh) ([]) s2Step343HeadFv_Incoming s2Step343HeadFv_checked h4 s2Step343HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step343HeadGvBefore s2Step343HeadGvAfter s2Step343HeadFvAfter
    s2Step343HeadGvRow s2Step343HeadGvOut 189 s2Step343HeadGvFresh [(s2Step343HeadFvRow,189)] [s2Step343HeadFvFresh] [s2Step343HeadFvOut]
    (growRow 771 s2Step343HeadGvFresh) ((growRow 770 s2Step343HeadFvFresh ++ [])) s2Step343HeadGv_Incoming s2Step343HeadGv_checked h3 s2Step343HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step343HeadFBefore s2Step343HeadFAfter s2Step343HeadFvAfter
    s2Step343HeadFRow s2Step343HeadFOut 102 s2Step343HeadFFresh [(s2Step343HeadGvRow,189),(s2Step343HeadFvRow,189)] [s2Step343HeadGvFresh,s2Step343HeadFvFresh] [s2Step343HeadGvOut,s2Step343HeadFvOut]
    (growRow 768 s2Step343HeadFFresh) ((growRow 771 s2Step343HeadGvFresh ++ (growRow 770 s2Step343HeadFvFresh ++ []))) s2Step343HeadF_Incoming s2Step343HeadF_checked h2 s2Step343HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step343HeadGBefore s2Step343HeadGAfter s2Step343HeadFvAfter
    s2Step343HeadGRow s2Step343HeadGOut 102 s2Step343HeadGFresh [(s2Step343HeadFRow,102),(s2Step343HeadGvRow,189),(s2Step343HeadFvRow,189)] [s2Step343HeadFFresh,s2Step343HeadGvFresh,s2Step343HeadFvFresh] [s2Step343HeadFOut,s2Step343HeadGvOut,s2Step343HeadFvOut]
    (growRow 769 s2Step343HeadGFresh) ((growRow 768 s2Step343HeadFFresh ++ (growRow 771 s2Step343HeadGvFresh ++ (growRow 770 s2Step343HeadFvFresh ++ [])))) s2Step343HeadG_Incoming s2Step343HeadG_checked h1 s2Step343HeadG_Outgoing
  exact h0

private theorem s2Step343HeadBank_checked : compileHmrBankResizeLog .headroom s2Step343HeadGBefore ⟨s2Step343HeadFRow,s2Step343HeadGRow,s2Step343HeadFvRow,s2Step343HeadGvRow⟩ ⟨102,102,189,189⟩ [s2Step343HeadGFresh,s2Step343HeadFFresh,s2Step343HeadGvFresh,s2Step343HeadFvFresh]=
    some (s2Step343HeadFvAfter,⟨s2Step343HeadFOut,s2Step343HeadGOut,s2Step343HeadFvOut,s2Step343HeadGvOut⟩,(growRow 769 s2Step343HeadGFresh ++ (growRow 768 s2Step343HeadFFresh ++ (growRow 771 s2Step343HeadGvFresh ++ (growRow 770 s2Step343HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step343HeadBank_rows]
  rfl

private theorem s2Step343Front_checked : compileHmrSourceFrontLog s2Step343EntryFBefore s2Step343FrontBank 101 188 ⟨101,99,189,187⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step343FrontLog=some s2Step343FrontPlan := by
  have pairEq : s2Step343FrontPair=⟨s2Step343HeadFRow,s2Step343HeadGRow,s2Step343HeadFvRow,s2Step343HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step343FrontHead=⟨s2Step343ExitFRow,s2Step343ExitGRow,s2Step343ExitFvRow,s2Step343ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step343Add0A=s2Step343FrontHead.f.wires := by decide +kernel
  have gEq : s2Step343Add0B=s2Step343FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step343Add1A=s2Step343FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step343Add1B=s2Step343FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step343EntryFBefore s2Step343FrontBank 101 188 ⟨101,99,189,187⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step343FrontLog s2Step343FrontPlan
  · exact s2Step343Front_entry
  · exact s2Step343EntryBank_checked
  · exact s2Step343Front_sigma
  · rfl
  · exact s2Step343Front_branch
  · rfl
  · simpa only [s2Step343FrontPlan,pairEq] using s2Step343HeadBank_checked
  · simpa only [s2Step343FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step343F4_checked
  · exact s2Step343Counter_checked
  · rfl
  · simpa only [s2Step343FrontPlan,headEq] using s2Step343ExitBank_checked

private theorem s2Step343Complete_explicit_checked : compileHmrEarlyStepLog s2Step343EntryFBefore s2Step343FrontBank 101 188 ⟨101,99,189,187⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step343CompleteLog=some s2Step343CompletePlan := by
  let Q := s2Step343EarlyControlPlan
  have hq := s2Step343EarlyControl_plan_checked
  have fv1 : s2Step343CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step343CompleteOut.fv.payload[2]?.getD s2Step343CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step343CompleteOut.fv.payload[3]?.getD s2Step343CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step343CompleteOut.fv.payload[4]?.getD s2Step343CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step343EntryFBefore s2Step343EarlyControlArena s2Step343FrontBank 101 188 ⟨101,99,189,187⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step343CompleteLog s2Step343FrontPlan Q
    s2Step343Front_checked s2Step343Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step343Complete_owned s2Step343Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step343EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 844 s2Step343CompleteOut.fv.second (s2Step343CompleteOut.fv.payload[2]?.getD s2Step343CompleteOut.fv.sign) (s2Step343CompleteOut.fv.payload[3]?.getD s2Step343CompleteOut.fv.sign) (s2Step343CompleteOut.fv.payload[4]?.getD s2Step343CompleteOut.fv.sign) 894 60 s2Step343EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep343Arena : Arena := s2Step343EntryFBefore
def s2PrivateStep343Bank : WindowBank := s2Step343FrontBank
def s2PrivateStep343Spec : HmrSourceWalkStepLog := ⟨101,188,⟨101,99,189,187⟩,60,.early s2Step343CompleteLog⟩
def s2PrivateStep343Plan : HmrSourceStepPlan := .early s2Step343CompletePlan
theorem s2PrivateStep343_source : s2PrivateStep343Spec=s2ObservedLogs336[7] := rfl
theorem s2PrivateStep343_checked : compileHmrSourceStepLog s2PrivateStep343Arena s2PrivateStep343Bank
    s2PrivateStep343Spec.fgWidth s2PrivateStep343Spec.vWidth s2PrivateStep343Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 343 s2PrivateStep343Spec.need none s2PrivateStep343Spec.log=some s2PrivateStep343Plan := by
  change compileHmrSourceStepLog s2Step343EntryFBefore s2Step343FrontBank 101 188 ⟨101,99,189,187⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 343 60 none (.early s2Step343CompleteLog)=some (.early s2Step343CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 343<498)]
  rw [s2Step343Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
