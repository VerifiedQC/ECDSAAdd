import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep268
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

private def s2Step270CompleteMoves : List (Wire × Wire) := [(841,647),(822,648)]

private def s2Step270EarlyControlLog : HmrEarlyControlLog := ⟨[822, 841, 788, 891, 844],[830],[800],[894, 896, 901, 903, 904, 905],[]⟩

private def s2Step270FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [891], [], []],[[844], [788], [779], [836]],[[], [], [], []]⟩,[816],[786],[830],[800],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step270CompleteLog : HmrEarlyStepLog := ⟨s2Step270FrontLog,s2Step270CompleteMoves,s2Step270EarlyControlLog⟩

private def s2Step270ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩

private def s2Step270ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step270ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step270ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step270FrontOut : WindowBank := ⟨s2Step270ExitFOut,s2Step270ExitGOut,s2Step270ExitFvOut,s2Step270ExitGvOut⟩

private def s2Step270CompleteOut : WindowBank := s2Step270FrontOut.repacked s2Step270CompleteMoves

private def s2Step270EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step270EarlyControlPositiveArena,[830],s2Step270EarlyControlEqualityArena,[800],⟨⟨816,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step270EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,841⟩,⟨⟨775,false⟩,788⟩,⟨⟨776,false⟩,891⟩,⟨⟨777,false⟩,844⟩]⟩

private def s2Step270EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step270EarlyControlZeroArena,s2Step270EarlyControlZeroPlan,s2Step270EarlyControlClassPlan,s2Step270EarlyControlFlagArena,s2Step270EarlyControlFittedArena,s2Step270EarlyControlHistoryArena,s2Step270EarlyControlSigmaArena,s2Step270EarlyControlOutputArena,s2Step270EarlyControlLog⟩

private def s2Step270CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step270Counter_bounded : s2Step270CounterWork.toFinset⊆arenaWires := by norm_num [s2Step270CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step270HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270CounterDuring : Arena := ⟨s2Step270HeadFvAfter.live∪s2Step270CounterWork.toFinset,Finset.union_subset s2Step270HeadFvAfter.bounded s2Step270Counter_bounded⟩

private def s2Step270EntryFFresh : List Wire := []

private def s2Step270EntryFvFresh : List Wire := []

private def s2Step270EntryGFresh : List Wire := [891]

private def s2Step270EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EntryGvAfter : Arena := s2Step270EntryGAfter

private def s2Step270EntryGvFresh : List Wire := []

private def s2Step270ExitFExtra : List Wire := [647, 648, 788]

private def s2Step270ExitGExtra : List Wire := [891, 844]

private def s2Step270ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<647) ∨ (649≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270ExitGvAfter : Arena := s2Step270ExitFAfter

private def s2Step270Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step270Add0_bounded : s2Step270Add0Work.toFinset⊆arenaWires := by
  have h : s2Step270Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step270Add0During : Arena := ⟨s2Step270Add0Arena.live∪s2Step270Add0Work.toFinset,Finset.union_subset s2Step270Add0Arena.bounded s2Step270Add0_bounded⟩

private def s2Step270Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step270Add1_bounded : s2Step270Add1Work.toFinset⊆arenaWires := by
  have h : s2Step270Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step270Add1During : Arena := ⟨s2Step270Add1Arena.live∪s2Step270Add1Work.toFinset,Finset.union_subset s2Step270Add1Arena.bounded s2Step270Add1_bounded⟩

private def s2Step270F4FlagArena : Arena := ⟨s2Step270HeadFvAfter.live∪{830},Finset.union_subset s2Step270HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step270F4Plan : HmrHybridF4Plan := ⟨s2Step270F4FlagArena,[830],s2Step270Add0Arena,[800],s2Step270Add0During,s2Step270Add0Work,s2Step270Add1During,s2Step270Add1Work⟩

private def s2Step270HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩

private def s2Step270HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step270HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891, 844],769⟩

private def s2Step270HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step270FrontHead : WindowBank := ⟨s2Step270HeadFOut,s2Step270HeadGOut,s2Step270HeadFvOut,s2Step270HeadGvOut⟩

private def s2Step270EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step270EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step270EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891],769⟩

private def s2Step270EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩

private def s2Step270FrontPair : WindowBank := ⟨s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut⟩

private def s2Step270FrontSigmaArena : Arena := ⟨s2Step270EntryGvAfter.live∪{816},Finset.union_subset s2Step270EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step270HeadFFresh : List Wire := [788]

private def s2Step270HeadFvFresh : List Wire := [836]

private def s2Step270HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270HeadGFresh : List Wire := [844]

private def s2Step270HeadGvFresh : List Wire := [779]

private def s2Step270FrontPlan : HmrSourceFront := ⟨s2Step270EntryGvAfter,s2Step270FrontPair,(growRow 768 s2Step270EntryFFresh ++ (growRow 769 s2Step270EntryGFresh ++ (growRow 770 s2Step270EntryFvFresh ++ (growRow 771 s2Step270EntryGvFresh ++ [])))),s2Step270FrontSigmaArena,[816],s2Step270HeadGBefore,[786],
  s2Step270HeadFvAfter,s2Step270FrontHead,(growRow 769 s2Step270HeadGFresh ++ (growRow 768 s2Step270HeadFFresh ++ (growRow 771 s2Step270HeadGvFresh ++ (growRow 770 s2Step270HeadFvFresh ++ [])))),s2Step270F4Plan,s2Step270CounterDuring,s2Step270CounterWork,s2Step270ExitGvAfter,s2Step270FrontOut,(shrinkRow 769 s2Step270ExitGExtra ++ (shrinkRow 768 s2Step270ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step270CompletePlan : HmrEarlyStepPlan := ⟨s2Step270FrontPlan,s2Step270EarlyControlArena,s2Step270EarlyControlPlan,s2Step270CompleteMoves⟩

private theorem s2Step270Complete_apart : List.Disjoint (s2Step270CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [816, 786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step270CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[816, 786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step270Complete_owned : (s2Step270CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step270CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,648),(649,788),(789,800),(801,830),(831,841),(842,844),(845,891),(892,894),(895,896),(897,901),(902,903),(906,907)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step270CompleteRelocationMove0Borrowed : Arena := ⟨s2Step270ExitGvAfter.live∪{647},Finset.union_subset s2Step270ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step270CompleteRelocationMove1Borrowed : Arena := ⟨s2Step270CompleteRelocationMove0After.live∪{648},Finset.union_subset s2Step270CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step270CompleteRelocation_move0_owned : 841∈s2Step270ExitGvAfter.live := by norm_num [s2Step270ExitGvAfter,s2Step270ExitFAfter,arenaWires]

private theorem s2Step270CompleteRelocation_move0_reserve : s2Step270ExitGvAfter.reserve {647}=some s2Step270CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step270ExitGvAfter,s2Step270ExitFAfter,arenaWires]
  · rfl

private theorem s2Step270CompleteRelocation_move0_retire : s2Step270CompleteRelocationMove0Borrowed.retireSet {841}=s2Step270CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step270CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step270CompleteRelocationMove0Borrowed,s2Step270ExitGvAfter,s2Step270ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step270CompleteRelocation_move1_owned : 822∈s2Step270CompleteRelocationMove0After.live := by norm_num [s2Step270CompleteRelocationMove0After,arenaWires]

private theorem s2Step270CompleteRelocation_move1_reserve : s2Step270CompleteRelocationMove0After.reserve {648}=some s2Step270CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step270CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step270CompleteRelocation_move1_retire : s2Step270CompleteRelocationMove1Borrowed.retireSet {822}=s2Step270EarlyControlArena := by
  unfold Arena.retireSet s2Step270EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step270CompleteRelocationMove1Borrowed,s2Step270CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step270CompleteRelocation_checked : s2Step270ExitGvAfter.checkRepack [(841,647),(822,648)]=some s2Step270EarlyControlArena := by
  have tail2 : s2Step270EarlyControlArena.checkRepack []=some s2Step270EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step270CompleteRelocationMove0After s2Step270CompleteRelocationMove1Borrowed s2Step270EarlyControlArena s2Step270EarlyControlArena 822 648 []
    s2Step270CompleteRelocation_move1_owned s2Step270CompleteRelocation_move1_reserve s2Step270CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step270ExitGvAfter s2Step270CompleteRelocationMove0Borrowed s2Step270CompleteRelocationMove0After s2Step270EarlyControlArena 841 647 [(822,648)]
    s2Step270CompleteRelocation_move0_owned s2Step270CompleteRelocation_move0_reserve s2Step270CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step270Complete_repack : s2Step270ExitGvAfter.checkRepack s2Step270CompleteMoves=some s2Step270EarlyControlArena := by
  simpa only [s2Step270CompleteMoves] using s2Step270CompleteRelocation_checked

private theorem s2Step270EarlyControl_branchOwned : ([786] : List Wire).toFinset⊆s2Step270EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlSigmaArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_branch : compileHmrBranchRetirement s2Step270EarlyControlSigmaArena 786=some s2Step270EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step270EarlyControl_branchOwned
  · ext q
    simp [s2Step270EarlyControlOutputArena,s2Step270EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step270EarlyControl_classEqualityBorrow : s2Step270EarlyControlPositiveArena.checkBorrow (([816, 830] : List Wire).length-1) s2Step270EarlyControlLog.classWork=some s2Step270EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step270EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step270EarlyControlEqualityArena,s2Step270EarlyControlPositiveArena,s2Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step270EarlyControl_classEqualityOwned : ([816, 830] : List Wire).toFinset⊆s2Step270EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_classEquality : compileHmrEqualityLog s2Step270EarlyControlPositiveArena [816, 830] 0 s2Step270EarlyControlLog.classWork=some (s2Step270EarlyControlEqualityArena,s2Step270EarlyControlLog.classWork,s2Step270EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step270EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step270EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step270EarlyControl_classOwned : ([777, 844, 816] : List Wire).toFinset⊆s2Step270EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_positiveBorrow : s2Step270EarlyControlZeroArena.checkBorrow (1) s2Step270EarlyControlLog.positiveWork=some s2Step270EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step270EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step270EarlyControlPositiveArena,s2Step270EarlyControlZeroArena,s2Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step270EarlyControl_class : compileHmrSourceClassLog s2Step270EarlyControlZeroArena false 777 s2Step270EarlyControlZeroPlan.top 0 816 s2Step270EarlyControlLog.positiveWork s2Step270EarlyControlLog.classWork=some s2Step270EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step270EarlyControlClassPlan s2Step270EarlyControlZeroArena false 777 s2Step270EarlyControlZeroPlan.top 0 816
  constructor
  · decide +kernel
  · exact s2Step270EarlyControl_classOwned
  · exact s2Step270EarlyControl_positiveBorrow
  · exact s2Step270EarlyControl_classEquality

private theorem s2Step270EarlyControl_entryRecordOwned : ([786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_entrySigmaOwned : ([816, 254] : List Wire).toFinset⊆s2Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_fitBorrow : s2Step270EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step270EarlyControlLog.recordFresh=some s2Step270EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step270EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step270EarlyControlFittedArena,s2Step270EarlyControlFlagArena,s2Step270EarlyControlLog,arenaWires]

private theorem s2Step270EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step270EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_fit : compileHmrRecordGrowLog s2Step270EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step270EarlyControlLog.recordFresh=some s2Step270EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step270EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step270EarlyControl_fitBorrow

private theorem s2Step270EarlyControl_flagsBorrow : s2Step270EarlyControlEqualityArena.checkBorrow (6) s2Step270EarlyControlLog.flagWork=some s2Step270EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step270EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step270EarlyControlFlagArena,s2Step270EarlyControlEqualityArena,s2Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step270EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step270EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_flags : compileHmrFlagsLog s2Step270EarlyControlClassPlan.equalityArena s2Step270EarlyControlClassPlan.equality.top 253 252 251 s2Step270EarlyControlLog.flagWork=some s2Step270EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step270EarlyControl_flagsOwned⟩
  · exact s2Step270EarlyControl_flagsBorrow

private theorem s2Step270EarlyControl_historyBorrow : s2Step270EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step270EarlyControlLog.recordFresh=some s2Step270EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step270EarlyControlHistoryArena,s2Step270EarlyControlArena,s2Step270EarlyControlLog,arenaWires]

private theorem s2Step270EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_history : compileHmrRecordGrowLog s2Step270EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step270EarlyControlLog.recordFresh=some s2Step270EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step270EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step270EarlyControl_historyBorrow

private theorem s2Step270EarlyControl_sigmaOwned : ([254, 816] : List Wire).toFinset⊆s2Step270EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_sigmaReleaseOwned : ([816] : List Wire).toFinset⊆s2Step270EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_sigmaRelease : s2Step270EarlyControlHistoryArena.release {816} (fun _ => false)=some s2Step270EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step270EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step270EarlyControlSigmaArena,s2Step270EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step270EarlyControl_sigma : compileHmrSigmaDropLog s2Step270EarlyControlHistoryArena false 0 0 254 816 []=some s2Step270EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step270EarlyControl_sigmaOwned⟩
  · exact s2Step270EarlyControl_sigmaRelease

private theorem s2Step270EarlyControl_zeroBorrow : s2Step270EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step270EarlyControlLog.zeroWork=some s2Step270EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step270EarlyControlZeroArena,s2Step270EarlyControlArena,s2Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step270EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step270EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EarlyControl_zero : compileHmrEqualityLog s2Step270EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step270EarlyControlLog.zeroWork=some (s2Step270EarlyControlZeroArena,s2Step270EarlyControlLog.zeroWork,s2Step270EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step270EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step270EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step270EarlyControl_logged : s2Step270EarlyControlPlan.Logged s2Step270EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 254 253 252 251 786 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step270EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step270EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step270EarlyControl_zero
  · exact s2Step270EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step270EarlyControl_flags
  · exact s2Step270EarlyControl_fit
  · exact s2Step270EarlyControl_history
  · exact s2Step270EarlyControl_sigma
  · exact s2Step270EarlyControl_branch

private theorem s2Step270EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step270EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 254 253 252 251 786 53 s2Step270EarlyControlLog=some s2Step270EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step270EarlyControlPlan s2Step270EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 254 253 252 251 786 53 s2Step270EarlyControl_logged

private def s2Step270EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step270EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step270EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step270EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩

private def s2Step270FrontBank : WindowBank := ⟨s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow⟩

private def s2Step270Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788, 768]

private def s2Step270Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891, 844, 769]

private def s2Step270Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 770]

private def s2Step270Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 771]

private theorem s2Step270Counter_apart : Disjoint s2Step270HeadFvAfter.live s2Step270CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step270HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270Counter_borrowed : s2Step270HeadFvAfter.checkBorrow 4 s2Step270CounterWork=some s2Step270CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step270HeadFvAfter s2Step270CounterDuring s2Step270CounterWork.toFinset s2Step270Counter_bounded s2Step270Counter_apart rfl

private theorem s2Step270Counter_owned : (816::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step270HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step270HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270Counter_checked : compileHmrCounterStepLog s2Step270HeadFvAfter true 816 [772, 773, 774, 775, 776, 777] s2Step270CounterWork=some s2Step270CounterDuring := by
  have owned : ∀q∈816::[772, 773, 774, 775, 776, 777],q∈s2Step270HeadFvAfter.live := fun q hq => s2Step270Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step270Counter_borrowed

private def s2Step270EntryFAfter : Arena := s2Step270EntryFBefore

private theorem s2Step270EntryBank_incomingDistinct : ([s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270EntryF_Incoming : rowsOwned s2Step270EntryFBefore [s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow] 0 s2Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270EntryBank_outgoingOwned : rowsOwned s2Step270EntryGvAfter [s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step270EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270EntryF_Outgoing : rowsOwned s2Step270EntryGvAfter [s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] :=
  hmrRows_owned_drop s2Step270EntryGvAfter [s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] 0 s2Step270EntryBank_outgoingOwned

private theorem s2Step270EntryF_distinct : (s2Step270EntryFRow.sign::s2Step270EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270EntryF_owned : (s2Step270EntryFRow.sign::s2Step270EntryFRow.payload).toFinset⊆s2Step270EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EntryF_reserved : s2Step270EntryFBefore.reserve s2Step270EntryFFresh.toFinset=some s2Step270EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270EntryFFresh,arenaWires]
  · norm_num [s2Step270EntryFBefore,s2Step270EntryFFresh,arenaWires]
  · simp only [s2Step270EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step270EntryF_checked : planRowResizeLog s2Step270EntryFBefore s2Step270EntryFRow 137 s2Step270EntryFFresh=
    some (s2Step270EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩,growRow 768 s2Step270EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step270EntryFBefore s2Step270EntryFAfter s2Step270EntryFRow 137 s2Step270EntryFFresh
    s2Step270EntryF_distinct s2Step270EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270EntryF_reserved
  have rowEq : WindowRow.mk (s2Step270EntryFRow.payload++s2Step270EntryFFresh) s2Step270EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step270EntryFvAfter : Arena := s2Step270EntryGAfter

private def s2Step270EntryFvBefore : Arena := s2Step270EntryGAfter

private theorem s2Step270EntryFv_Incoming : rowsOwned s2Step270EntryFvBefore [s2Step270EntryFvRow,s2Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow] 2 s2Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270EntryFv_Outgoing : rowsOwned s2Step270EntryGvAfter [s2Step270EntryFvOut,s2Step270EntryGvOut] :=
  hmrRows_owned_drop s2Step270EntryGvAfter [s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] 2 s2Step270EntryBank_outgoingOwned

private theorem s2Step270EntryFv_distinct : (s2Step270EntryFvRow.sign::s2Step270EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270EntryFv_owned : (s2Step270EntryFvRow.sign::s2Step270EntryFvRow.payload).toFinset⊆s2Step270EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EntryFv_reserved : s2Step270EntryFvBefore.reserve s2Step270EntryFvFresh.toFinset=some s2Step270EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270EntryFvFresh,arenaWires]
  · norm_num [s2Step270EntryFvBefore,s2Step270EntryGAfter,s2Step270EntryFvFresh,arenaWires]
  · simp only [s2Step270EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step270EntryFv_checked : planRowResizeLog s2Step270EntryFvBefore s2Step270EntryFvRow 150 s2Step270EntryFvFresh=
    some (s2Step270EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩,growRow 770 s2Step270EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step270EntryFvBefore s2Step270EntryFvAfter s2Step270EntryFvRow 150 s2Step270EntryFvFresh
    s2Step270EntryFv_distinct s2Step270EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step270EntryFvRow.payload++s2Step270EntryFvFresh) s2Step270EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step270EntryGBefore : Arena := s2Step270EntryFBefore

private theorem s2Step270EntryG_Incoming : rowsOwned s2Step270EntryGBefore [s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow] 1 s2Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270EntryG_Outgoing : rowsOwned s2Step270EntryGvAfter [s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] :=
  hmrRows_owned_drop s2Step270EntryGvAfter [s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] 1 s2Step270EntryBank_outgoingOwned

private theorem s2Step270EntryG_distinct : (s2Step270EntryGRow.sign::s2Step270EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270EntryG_owned : (s2Step270EntryGRow.sign::s2Step270EntryGRow.payload).toFinset⊆s2Step270EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EntryG_reserved : s2Step270EntryGBefore.reserve s2Step270EntryGFresh.toFinset=some s2Step270EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270EntryGFresh,arenaWires]
  · norm_num [s2Step270EntryGBefore,s2Step270EntryFBefore,s2Step270EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step270EntryGAfter,s2Step270EntryGBefore,s2Step270EntryFBefore,s2Step270EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270EntryG_checked : planRowResizeLog s2Step270EntryGBefore s2Step270EntryGRow 137 s2Step270EntryGFresh=
    some (s2Step270EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891],769⟩,growRow 769 s2Step270EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step270EntryGBefore s2Step270EntryGAfter s2Step270EntryGRow 137 s2Step270EntryGFresh
    s2Step270EntryG_distinct s2Step270EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270EntryG_reserved
  have rowEq : WindowRow.mk (s2Step270EntryGRow.payload++s2Step270EntryGFresh) s2Step270EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step270EntryGvBefore : Arena := s2Step270EntryGAfter

private theorem s2Step270EntryGv_Incoming : rowsOwned s2Step270EntryGvBefore [s2Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow] 3 s2Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270EntryGv_Outgoing : rowsOwned s2Step270EntryGvAfter [s2Step270EntryGvOut] :=
  hmrRows_owned_drop s2Step270EntryGvAfter [s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut] 3 s2Step270EntryBank_outgoingOwned

private theorem s2Step270EntryGv_distinct : (s2Step270EntryGvRow.sign::s2Step270EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270EntryGv_owned : (s2Step270EntryGvRow.sign::s2Step270EntryGvRow.payload).toFinset⊆s2Step270EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270EntryGv_reserved : s2Step270EntryGvBefore.reserve s2Step270EntryGvFresh.toFinset=some s2Step270EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270EntryGvFresh,arenaWires]
  · norm_num [s2Step270EntryGvBefore,s2Step270EntryGAfter,s2Step270EntryGvFresh,arenaWires]
  · simp only [s2Step270EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step270EntryGv_checked : planRowResizeLog s2Step270EntryGvBefore s2Step270EntryGvRow 150 s2Step270EntryGvFresh=
    some (s2Step270EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩,growRow 771 s2Step270EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step270EntryGvBefore s2Step270EntryGvAfter s2Step270EntryGvRow 150 s2Step270EntryGvFresh
    s2Step270EntryGv_distinct s2Step270EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step270EntryGvRow.payload++s2Step270EntryGvFresh) s2Step270EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step270EntryBank_rows : planWindowRowsLog s2Step270EntryFBefore [(s2Step270EntryFRow,137),(s2Step270EntryGRow,137),(s2Step270EntryFvRow,150),(s2Step270EntryGvRow,150)] [s2Step270EntryFFresh,s2Step270EntryGFresh,s2Step270EntryFvFresh,s2Step270EntryGvFresh]=
    some (s2Step270EntryGvAfter,[s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut],(growRow 768 s2Step270EntryFFresh ++ (growRow 769 s2Step270EntryGFresh ++ (growRow 770 s2Step270EntryFvFresh ++ (growRow 771 s2Step270EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step270EntryGvAfter [] []=some (s2Step270EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step270EntryGvBefore s2Step270EntryGvAfter s2Step270EntryGvAfter
    s2Step270EntryGvRow s2Step270EntryGvOut 150 s2Step270EntryGvFresh [] [] []
    (growRow 771 s2Step270EntryGvFresh) ([]) s2Step270EntryGv_Incoming s2Step270EntryGv_checked h4 s2Step270EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step270EntryFvBefore s2Step270EntryFvAfter s2Step270EntryGvAfter
    s2Step270EntryFvRow s2Step270EntryFvOut 150 s2Step270EntryFvFresh [(s2Step270EntryGvRow,150)] [s2Step270EntryGvFresh] [s2Step270EntryGvOut]
    (growRow 770 s2Step270EntryFvFresh) ((growRow 771 s2Step270EntryGvFresh ++ [])) s2Step270EntryFv_Incoming s2Step270EntryFv_checked h3 s2Step270EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step270EntryGBefore s2Step270EntryGAfter s2Step270EntryGvAfter
    s2Step270EntryGRow s2Step270EntryGOut 137 s2Step270EntryGFresh [(s2Step270EntryFvRow,150),(s2Step270EntryGvRow,150)] [s2Step270EntryFvFresh,s2Step270EntryGvFresh] [s2Step270EntryFvOut,s2Step270EntryGvOut]
    (growRow 769 s2Step270EntryGFresh) ((growRow 770 s2Step270EntryFvFresh ++ (growRow 771 s2Step270EntryGvFresh ++ []))) s2Step270EntryG_Incoming s2Step270EntryG_checked h2 s2Step270EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step270EntryFBefore s2Step270EntryFAfter s2Step270EntryGvAfter
    s2Step270EntryFRow s2Step270EntryFOut 137 s2Step270EntryFFresh [(s2Step270EntryGRow,137),(s2Step270EntryFvRow,150),(s2Step270EntryGvRow,150)] [s2Step270EntryGFresh,s2Step270EntryFvFresh,s2Step270EntryGvFresh] [s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut]
    (growRow 768 s2Step270EntryFFresh) ((growRow 769 s2Step270EntryGFresh ++ (growRow 770 s2Step270EntryFvFresh ++ (growRow 771 s2Step270EntryGvFresh ++ [])))) s2Step270EntryF_Incoming s2Step270EntryF_checked h1 s2Step270EntryF_Outgoing
  exact h0

private theorem s2Step270EntryBank_checked : compileHmrBankResizeLog .entry s2Step270EntryFBefore ⟨s2Step270EntryFRow,s2Step270EntryGRow,s2Step270EntryFvRow,s2Step270EntryGvRow⟩ ⟨137,137,150,150⟩ [s2Step270EntryFFresh,s2Step270EntryGFresh,s2Step270EntryFvFresh,s2Step270EntryGvFresh]=
    some (s2Step270EntryGvAfter,⟨s2Step270EntryFOut,s2Step270EntryGOut,s2Step270EntryFvOut,s2Step270EntryGvOut⟩,(growRow 768 s2Step270EntryFFresh ++ (growRow 769 s2Step270EntryGFresh ++ (growRow 770 s2Step270EntryFvFresh ++ (growRow 771 s2Step270EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step270EntryBank_rows]
  rfl

private def s2Step270ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270ExitFBefore : Arena := s2Step270ExitGAfter

private def s2Step270ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩

private def s2Step270ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step270ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891, 844],769⟩

private def s2Step270ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private theorem s2Step270ExitBank_incomingDistinct : ([s2Step270ExitGRow,s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270ExitF_Incoming : rowsOwned s2Step270ExitFBefore [s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270ExitGRow,s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow] 1 s2Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270ExitBank_outgoingOwned : rowsOwned s2Step270ExitGvAfter [s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step270ExitGvAfter (fun q => (0≤q ∧ q<647) ∨ (649≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270ExitF_Outgoing : rowsOwned s2Step270ExitGvAfter [s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] :=
  hmrRows_owned_drop s2Step270ExitGvAfter [s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] 1 s2Step270ExitBank_outgoingOwned

private theorem s2Step270ExitF_distinct : (s2Step270ExitFRow.sign::s2Step270ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270ExitF_owned : (s2Step270ExitFRow.sign::s2Step270ExitFRow.payload).toFinset⊆s2Step270ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270ExitF_retired : s2Step270ExitFBefore.retireSet s2Step270ExitFExtra.toFinset=s2Step270ExitFAfter := by
  unfold Arena.retireSet s2Step270ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step270ExitFBefore,s2Step270ExitGAfter,s2Step270ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step270ExitF_checked : planRowResizeLog s2Step270ExitFBefore s2Step270ExitFRow 135 []=
    some (s2Step270ExitFAfter,s2Step270ExitFOut,shrinkRow 768 s2Step270ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step270ExitFBefore s2Step270ExitFRow 135 s2Step270ExitF_distinct s2Step270ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step270ExitFRow.payload.take 135) s2Step270ExitFRow.sign=s2Step270ExitFOut := by decide +kernel
  have hi : s2Step270ExitFRow.payload.drop 135=s2Step270ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step270ExitF_retired] at result
  exact result

private def s2Step270ExitFvAfter : Arena := s2Step270ExitFAfter

private def s2Step270ExitFvBefore : Arena := s2Step270ExitFAfter

private theorem s2Step270ExitFv_Incoming : rowsOwned s2Step270ExitFvBefore [s2Step270ExitFvRow,s2Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270ExitGRow,s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow] 2 s2Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270ExitFvBefore (fun q => (0≤q ∧ q<647) ∨ (649≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270ExitFv_Outgoing : rowsOwned s2Step270ExitGvAfter [s2Step270ExitFvOut,s2Step270ExitGvOut] :=
  hmrRows_owned_drop s2Step270ExitGvAfter [s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] 2 s2Step270ExitBank_outgoingOwned

private theorem s2Step270ExitFv_distinct : (s2Step270ExitFvRow.sign::s2Step270ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270ExitFv_owned : (s2Step270ExitFvRow.sign::s2Step270ExitFvRow.payload).toFinset⊆s2Step270ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270ExitFvBefore (fun q => (0≤q ∧ q<647) ∨ (649≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270ExitFv_reserved : s2Step270ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step270ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step270ExitFv_checked : planRowResizeLog s2Step270ExitFvBefore s2Step270ExitFvRow 151 []=
    some (s2Step270ExitFvAfter,s2Step270ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step270ExitFvBefore s2Step270ExitFvAfter s2Step270ExitFvRow 151 []
    s2Step270ExitFv_distinct s2Step270ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step270ExitFvRow.payload++[]) s2Step270ExitFvRow.sign=s2Step270ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step270ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step270ExitG_Incoming : rowsOwned s2Step270ExitGBefore [s2Step270ExitGRow,s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270ExitGRow,s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow] 0 s2Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270ExitG_Outgoing : rowsOwned s2Step270ExitGvAfter [s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] :=
  hmrRows_owned_drop s2Step270ExitGvAfter [s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] 0 s2Step270ExitBank_outgoingOwned

private theorem s2Step270ExitG_distinct : (s2Step270ExitGRow.sign::s2Step270ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270ExitG_owned : (s2Step270ExitGRow.sign::s2Step270ExitGRow.payload).toFinset⊆s2Step270ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270ExitG_retired : s2Step270ExitGBefore.retireSet s2Step270ExitGExtra.toFinset=s2Step270ExitGAfter := by
  unfold Arena.retireSet s2Step270ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step270ExitGBefore,s2Step270ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step270ExitG_checked : planRowResizeLog s2Step270ExitGBefore s2Step270ExitGRow 136 []=
    some (s2Step270ExitGAfter,s2Step270ExitGOut,shrinkRow 769 s2Step270ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step270ExitGBefore s2Step270ExitGRow 136 s2Step270ExitG_distinct s2Step270ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step270ExitGRow.payload.take 136) s2Step270ExitGRow.sign=s2Step270ExitGOut := by decide +kernel
  have hi : s2Step270ExitGRow.payload.drop 136=s2Step270ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step270ExitG_retired] at result
  exact result

private def s2Step270ExitGvBefore : Arena := s2Step270ExitFAfter

private theorem s2Step270ExitGv_Incoming : rowsOwned s2Step270ExitGvBefore [s2Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270ExitGRow,s2Step270ExitFRow,s2Step270ExitFvRow,s2Step270ExitGvRow] 3 s2Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270ExitGvBefore (fun q => (0≤q ∧ q<647) ∨ (649≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270ExitGv_Outgoing : rowsOwned s2Step270ExitGvAfter [s2Step270ExitGvOut] :=
  hmrRows_owned_drop s2Step270ExitGvAfter [s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut] 3 s2Step270ExitBank_outgoingOwned

private theorem s2Step270ExitGv_distinct : (s2Step270ExitGvRow.sign::s2Step270ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270ExitGv_owned : (s2Step270ExitGvRow.sign::s2Step270ExitGvRow.payload).toFinset⊆s2Step270ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270ExitGvBefore (fun q => (0≤q ∧ q<647) ∨ (649≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270ExitGv_reserved : s2Step270ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step270ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step270ExitGv_checked : planRowResizeLog s2Step270ExitGvBefore s2Step270ExitGvRow 151 []=
    some (s2Step270ExitGvAfter,s2Step270ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step270ExitGvBefore s2Step270ExitGvAfter s2Step270ExitGvRow 151 []
    s2Step270ExitGv_distinct s2Step270ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step270ExitGvRow.payload++[]) s2Step270ExitGvRow.sign=s2Step270ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step270ExitBank_rows : planWindowRowsLog s2Step270ExitGBefore [(s2Step270ExitGRow,136),(s2Step270ExitFRow,135),(s2Step270ExitFvRow,151),(s2Step270ExitGvRow,151)] [[],[],[],[]]=
    some (s2Step270ExitGvAfter,[s2Step270ExitGOut,s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut],(shrinkRow 769 s2Step270ExitGExtra ++ (shrinkRow 768 s2Step270ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step270ExitGvAfter [] []=some (s2Step270ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step270ExitGvBefore s2Step270ExitGvAfter s2Step270ExitGvAfter
    s2Step270ExitGvRow s2Step270ExitGvOut 151 [] [] [] []
    (growRow 771 []) ([]) s2Step270ExitGv_Incoming s2Step270ExitGv_checked h4 s2Step270ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step270ExitFvBefore s2Step270ExitFvAfter s2Step270ExitGvAfter
    s2Step270ExitFvRow s2Step270ExitFvOut 151 [] [(s2Step270ExitGvRow,151)] [[]] [s2Step270ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step270ExitFv_Incoming s2Step270ExitFv_checked h3 s2Step270ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step270ExitFBefore s2Step270ExitFAfter s2Step270ExitGvAfter
    s2Step270ExitFRow s2Step270ExitFOut 135 [] [(s2Step270ExitFvRow,151),(s2Step270ExitGvRow,151)] [[],[]] [s2Step270ExitFvOut,s2Step270ExitGvOut]
    (shrinkRow 768 s2Step270ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step270ExitF_Incoming s2Step270ExitF_checked h2 s2Step270ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step270ExitGBefore s2Step270ExitGAfter s2Step270ExitGvAfter
    s2Step270ExitGRow s2Step270ExitGOut 136 [] [(s2Step270ExitFRow,135),(s2Step270ExitFvRow,151),(s2Step270ExitGvRow,151)] [[],[],[]] [s2Step270ExitFOut,s2Step270ExitFvOut,s2Step270ExitGvOut]
    (shrinkRow 769 s2Step270ExitGExtra) ((shrinkRow 768 s2Step270ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step270ExitG_Incoming s2Step270ExitG_checked h1 s2Step270ExitG_Outgoing
  exact h0

private theorem s2Step270ExitBank_checked : compileHmrBankResizeLog .exit s2Step270ExitGBefore ⟨s2Step270ExitFRow,s2Step270ExitGRow,s2Step270ExitFvRow,s2Step270ExitGvRow⟩ ⟨135,136,151,151⟩ [[],[],[],[]]=
    some (s2Step270ExitGvAfter,⟨s2Step270ExitFOut,s2Step270ExitGOut,s2Step270ExitFvOut,s2Step270ExitGvOut⟩,(shrinkRow 769 s2Step270ExitGExtra ++ (shrinkRow 768 s2Step270ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step270ExitBank_rows]
  rfl

private theorem s2Step270Add0_apart : Disjoint s2Step270Add0Arena.live s2Step270Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step270Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270Add0_card : s2Step270Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step270Add0_borrowed : s2Step270Add0Arena.checkBorrow (hmrHybridCount s2Step270Add0Arena s2Step270Add0B.length) s2Step270Add0Work=some s2Step270Add0During := by
  have len : s2Step270Add0Work.length=hmrHybridCount s2Step270Add0Arena s2Step270Add0B.length := by
    rw [hmrHybridCount,s2Step270Add0_card]
    decide +kernel
  have nd : s2Step270Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step270Add0Arena s2Step270Add0During s2Step270Add0Work.toFinset s2Step270Add0_bounded s2Step270Add0_apart rfl

private theorem s2Step270Add0_distinct : (830::786::800::(s2Step270Add0A++s2Step270Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270Add0_owned : (830::786::800::(s2Step270Add0A++s2Step270Add0B)).toFinset⊆s2Step270Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step270Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270Add0_checked : compileHmrHybridCinLog s2Step270Add0Arena 786 830 800 s2Step270Add0A s2Step270Add0B s2Step270Add0Work=some s2Step270Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step270Add0Arena s2Step270Add0During 786 830 800 s2Step270Add0A s2Step270Add0B s2Step270Add0Work
    (by decide +kernel) (by decide +kernel) s2Step270Add0_distinct
    (fun q hq => s2Step270Add0_owned (List.mem_toFinset.mpr hq)) s2Step270Add0_borrowed

private theorem s2Step270Add1_apart : Disjoint s2Step270Add1Arena.live s2Step270Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step270Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270Add1_card : s2Step270Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step270Add1_borrowed : s2Step270Add1Arena.checkBorrow (hmrHybridCount s2Step270Add1Arena s2Step270Add1B.length) s2Step270Add1Work=some s2Step270Add1During := by
  have len : s2Step270Add1Work.length=hmrHybridCount s2Step270Add1Arena s2Step270Add1B.length := by
    rw [hmrHybridCount,s2Step270Add1_card]
    decide +kernel
  have nd : s2Step270Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step270Add1Arena s2Step270Add1During s2Step270Add1Work.toFinset s2Step270Add1_bounded s2Step270Add1_apart rfl

private theorem s2Step270Add1_distinct : (830::786::800::(s2Step270Add1A++s2Step270Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270Add1_owned : (830::786::800::(s2Step270Add1A++s2Step270Add1B)).toFinset⊆s2Step270Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step270Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270Add1_checked : compileHmrHybridCinLog s2Step270Add1Arena 786 830 800 s2Step270Add1A s2Step270Add1B s2Step270Add1Work=some s2Step270Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step270Add1Arena s2Step270Add1During 786 830 800 s2Step270Add1A s2Step270Add1B s2Step270Add1Work
    (by decide +kernel) (by decide +kernel) s2Step270Add1_distinct
    (fun q hq => s2Step270Add1_owned (List.mem_toFinset.mpr hq)) s2Step270Add1_borrowed

private theorem s2Step270F4_apart : Disjoint (s2Step270Add0A++s2Step270Add0B).toFinset (s2Step270Add1A++s2Step270Add1B).toFinset := by
  have nd : ((s2Step270Add0A++s2Step270Add0B)++(s2Step270Add1A++s2Step270Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step270F4_carry : s2Step270F4FlagArena.checkBorrow 1 [800]=some s2Step270Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step270F4FlagArena,s2Step270HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step270F4FlagArena,s2Step270HeadFvAfter,s2Step270Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270F4_distinct : (816::786::830::800::((s2Step270Add0A++s2Step270Add1A)++(s2Step270Add0B++s2Step270Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270F4_flag : s2Step270HeadFvAfter.checkBorrow 1 [830]=some s2Step270F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step270HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step270F4_owned : (816::786::((s2Step270Add0A++s2Step270Add1A)++(s2Step270Add0B++s2Step270Add1B))).toFinset⊆s2Step270HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step270HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270F4_checked : compileHmrHybridF4Log s2Step270HeadFvAfter 816 786 s2Step270Add0A s2Step270Add0B s2Step270Add1A s2Step270Add1B [830] [800] s2Step270Add0Work s2Step270Add1Work=some s2Step270F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step270HeadFvAfter s2Step270F4FlagArena s2Step270Add0Arena s2Step270Add0During s2Step270Add1During 816 786
    s2Step270Add0A s2Step270Add0B s2Step270Add1A s2Step270Add1B [830] [800] s2Step270Add0Work s2Step270Add1Work
    (fun q hq => s2Step270F4_owned (List.mem_toFinset.mpr hq)) s2Step270F4_flag s2Step270F4_carry
    s2Step270F4_distinct s2Step270F4_apart s2Step270Add0_checked s2Step270Add1_checked

private theorem s2Step270Front_branch : s2Step270FrontSigmaArena.checkBorrow 1 [786]=some s2Step270HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step270FrontSigmaArena,s2Step270EntryGvAfter,s2Step270EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step270FrontSigmaArena,s2Step270EntryGvAfter,s2Step270EntryGAfter,s2Step270HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270Front_entry : HmrFrontEntryValid s2Step270EntryFBefore s2Step270FrontBank 137 150 ⟨135,136,151,151⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step270FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step270EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step270EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step270FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step270Front_sigma : s2Step270EntryGvAfter.checkBorrow 1 [816]=some s2Step270FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step270EntryGvAfter,s2Step270EntryGAfter,arenaWires]
  · rfl

private def s2Step270HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270HeadFBefore : Arena := s2Step270HeadGAfter

private def s2Step270HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step270HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step270HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891],769⟩

private def s2Step270HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩

private theorem s2Step270HeadBank_incomingDistinct : ([s2Step270HeadGRow,s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270HeadF_Incoming : rowsOwned s2Step270HeadFBefore [s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270HeadGRow,s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow] 1 s2Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270HeadBank_outgoingOwned : rowsOwned s2Step270HeadFvAfter [s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step270HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270HeadF_Outgoing : rowsOwned s2Step270HeadFvAfter [s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] :=
  hmrRows_owned_drop s2Step270HeadFvAfter [s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] 1 s2Step270HeadBank_outgoingOwned

private theorem s2Step270HeadF_distinct : (s2Step270HeadFRow.sign::s2Step270HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270HeadF_owned : (s2Step270HeadFRow.sign::s2Step270HeadFRow.payload).toFinset⊆s2Step270HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270HeadF_reserved : s2Step270HeadFBefore.reserve s2Step270HeadFFresh.toFinset=some s2Step270HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270HeadFFresh,arenaWires]
  · norm_num [s2Step270HeadFBefore,s2Step270HeadGAfter,s2Step270HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step270HeadFAfter,s2Step270HeadFBefore,s2Step270HeadGAfter,s2Step270HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270HeadF_checked : planRowResizeLog s2Step270HeadFBefore s2Step270HeadFRow 138 s2Step270HeadFFresh=
    some (s2Step270HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩,growRow 768 s2Step270HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step270HeadFBefore s2Step270HeadFAfter s2Step270HeadFRow 138 s2Step270HeadFFresh
    s2Step270HeadF_distinct s2Step270HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270HeadF_reserved
  have rowEq : WindowRow.mk (s2Step270HeadFRow.payload++s2Step270HeadFFresh) s2Step270HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step270HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step270HeadFvBefore : Arena := s2Step270HeadGvAfter

private theorem s2Step270HeadFv_Incoming : rowsOwned s2Step270HeadFvBefore [s2Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270HeadGRow,s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow] 3 s2Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270HeadFv_Outgoing : rowsOwned s2Step270HeadFvAfter [s2Step270HeadFvOut] :=
  hmrRows_owned_drop s2Step270HeadFvAfter [s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] 3 s2Step270HeadBank_outgoingOwned

private theorem s2Step270HeadFv_distinct : (s2Step270HeadFvRow.sign::s2Step270HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270HeadFv_owned : (s2Step270HeadFvRow.sign::s2Step270HeadFvRow.payload).toFinset⊆s2Step270HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270HeadFv_reserved : s2Step270HeadFvBefore.reserve s2Step270HeadFvFresh.toFinset=some s2Step270HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270HeadFvFresh,arenaWires]
  · norm_num [s2Step270HeadFvBefore,s2Step270HeadGvAfter,s2Step270HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step270HeadFvAfter,s2Step270HeadFvBefore,s2Step270HeadGvAfter,s2Step270HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270HeadFv_checked : planRowResizeLog s2Step270HeadFvBefore s2Step270HeadFvRow 151 s2Step270HeadFvFresh=
    some (s2Step270HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩,growRow 770 s2Step270HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step270HeadFvBefore s2Step270HeadFvAfter s2Step270HeadFvRow 151 s2Step270HeadFvFresh
    s2Step270HeadFv_distinct s2Step270HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step270HeadFvRow.payload++s2Step270HeadFvFresh) s2Step270HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step270HeadG_Incoming : rowsOwned s2Step270HeadGBefore [s2Step270HeadGRow,s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270HeadGRow,s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow] 0 s2Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270HeadG_Outgoing : rowsOwned s2Step270HeadFvAfter [s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] :=
  hmrRows_owned_drop s2Step270HeadFvAfter [s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] 0 s2Step270HeadBank_outgoingOwned

private theorem s2Step270HeadG_distinct : (s2Step270HeadGRow.sign::s2Step270HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270HeadG_owned : (s2Step270HeadGRow.sign::s2Step270HeadGRow.payload).toFinset⊆s2Step270HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270HeadG_reserved : s2Step270HeadGBefore.reserve s2Step270HeadGFresh.toFinset=some s2Step270HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270HeadGFresh,arenaWires]
  · norm_num [s2Step270HeadGBefore,s2Step270HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step270HeadGAfter,s2Step270HeadGBefore,s2Step270HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270HeadG_checked : planRowResizeLog s2Step270HeadGBefore s2Step270HeadGRow 138 s2Step270HeadGFresh=
    some (s2Step270HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891, 844],769⟩,growRow 769 s2Step270HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step270HeadGBefore s2Step270HeadGAfter s2Step270HeadGRow 138 s2Step270HeadGFresh
    s2Step270HeadG_distinct s2Step270HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270HeadG_reserved
  have rowEq : WindowRow.mk (s2Step270HeadGRow.payload++s2Step270HeadGFresh) s2Step270HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 891, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step270HeadGvBefore : Arena := s2Step270HeadFAfter

private theorem s2Step270HeadGv_Incoming : rowsOwned s2Step270HeadGvBefore [s2Step270HeadGvRow,s2Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step270HeadGRow,s2Step270HeadFRow,s2Step270HeadGvRow,s2Step270HeadFvRow] 2 s2Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step270HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step270HeadGv_Outgoing : rowsOwned s2Step270HeadFvAfter [s2Step270HeadGvOut,s2Step270HeadFvOut] :=
  hmrRows_owned_drop s2Step270HeadFvAfter [s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut] 2 s2Step270HeadBank_outgoingOwned

private theorem s2Step270HeadGv_distinct : (s2Step270HeadGvRow.sign::s2Step270HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step270HeadGv_owned : (s2Step270HeadGvRow.sign::s2Step270HeadGvRow.payload).toFinset⊆s2Step270HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step270HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step270HeadGv_reserved : s2Step270HeadGvBefore.reserve s2Step270HeadGvFresh.toFinset=some s2Step270HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step270HeadGvFresh,arenaWires]
  · norm_num [s2Step270HeadGvBefore,s2Step270HeadFAfter,s2Step270HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step270HeadGvAfter,s2Step270HeadGvBefore,s2Step270HeadFAfter,s2Step270HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step270HeadGv_checked : planRowResizeLog s2Step270HeadGvBefore s2Step270HeadGvRow 151 s2Step270HeadGvFresh=
    some (s2Step270HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩,growRow 771 s2Step270HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step270HeadGvBefore s2Step270HeadGvAfter s2Step270HeadGvRow 151 s2Step270HeadGvFresh
    s2Step270HeadGv_distinct s2Step270HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step270HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step270HeadGvRow.payload++s2Step270HeadGvFresh) s2Step270HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step270HeadBank_rows : planWindowRowsLog s2Step270HeadGBefore [(s2Step270HeadGRow,138),(s2Step270HeadFRow,138),(s2Step270HeadGvRow,151),(s2Step270HeadFvRow,151)] [s2Step270HeadGFresh,s2Step270HeadFFresh,s2Step270HeadGvFresh,s2Step270HeadFvFresh]=
    some (s2Step270HeadFvAfter,[s2Step270HeadGOut,s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut],(growRow 769 s2Step270HeadGFresh ++ (growRow 768 s2Step270HeadFFresh ++ (growRow 771 s2Step270HeadGvFresh ++ (growRow 770 s2Step270HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step270HeadFvAfter [] []=some (s2Step270HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step270HeadFvBefore s2Step270HeadFvAfter s2Step270HeadFvAfter
    s2Step270HeadFvRow s2Step270HeadFvOut 151 s2Step270HeadFvFresh [] [] []
    (growRow 770 s2Step270HeadFvFresh) ([]) s2Step270HeadFv_Incoming s2Step270HeadFv_checked h4 s2Step270HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step270HeadGvBefore s2Step270HeadGvAfter s2Step270HeadFvAfter
    s2Step270HeadGvRow s2Step270HeadGvOut 151 s2Step270HeadGvFresh [(s2Step270HeadFvRow,151)] [s2Step270HeadFvFresh] [s2Step270HeadFvOut]
    (growRow 771 s2Step270HeadGvFresh) ((growRow 770 s2Step270HeadFvFresh ++ [])) s2Step270HeadGv_Incoming s2Step270HeadGv_checked h3 s2Step270HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step270HeadFBefore s2Step270HeadFAfter s2Step270HeadFvAfter
    s2Step270HeadFRow s2Step270HeadFOut 138 s2Step270HeadFFresh [(s2Step270HeadGvRow,151),(s2Step270HeadFvRow,151)] [s2Step270HeadGvFresh,s2Step270HeadFvFresh] [s2Step270HeadGvOut,s2Step270HeadFvOut]
    (growRow 768 s2Step270HeadFFresh) ((growRow 771 s2Step270HeadGvFresh ++ (growRow 770 s2Step270HeadFvFresh ++ []))) s2Step270HeadF_Incoming s2Step270HeadF_checked h2 s2Step270HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step270HeadGBefore s2Step270HeadGAfter s2Step270HeadFvAfter
    s2Step270HeadGRow s2Step270HeadGOut 138 s2Step270HeadGFresh [(s2Step270HeadFRow,138),(s2Step270HeadGvRow,151),(s2Step270HeadFvRow,151)] [s2Step270HeadFFresh,s2Step270HeadGvFresh,s2Step270HeadFvFresh] [s2Step270HeadFOut,s2Step270HeadGvOut,s2Step270HeadFvOut]
    (growRow 769 s2Step270HeadGFresh) ((growRow 768 s2Step270HeadFFresh ++ (growRow 771 s2Step270HeadGvFresh ++ (growRow 770 s2Step270HeadFvFresh ++ [])))) s2Step270HeadG_Incoming s2Step270HeadG_checked h1 s2Step270HeadG_Outgoing
  exact h0

private theorem s2Step270HeadBank_checked : compileHmrBankResizeLog .headroom s2Step270HeadGBefore ⟨s2Step270HeadFRow,s2Step270HeadGRow,s2Step270HeadFvRow,s2Step270HeadGvRow⟩ ⟨138,138,151,151⟩ [s2Step270HeadGFresh,s2Step270HeadFFresh,s2Step270HeadGvFresh,s2Step270HeadFvFresh]=
    some (s2Step270HeadFvAfter,⟨s2Step270HeadFOut,s2Step270HeadGOut,s2Step270HeadFvOut,s2Step270HeadGvOut⟩,(growRow 769 s2Step270HeadGFresh ++ (growRow 768 s2Step270HeadFFresh ++ (growRow 771 s2Step270HeadGvFresh ++ (growRow 770 s2Step270HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step270HeadBank_rows]
  rfl

private theorem s2Step270Front_checked : compileHmrSourceFrontLog s2Step270EntryFBefore s2Step270FrontBank 137 150 ⟨135,136,151,151⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step270FrontLog=some s2Step270FrontPlan := by
  have pairEq : s2Step270FrontPair=⟨s2Step270HeadFRow,s2Step270HeadGRow,s2Step270HeadFvRow,s2Step270HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step270FrontHead=⟨s2Step270ExitFRow,s2Step270ExitGRow,s2Step270ExitFvRow,s2Step270ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step270Add0A=s2Step270FrontHead.f.wires := by decide +kernel
  have gEq : s2Step270Add0B=s2Step270FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step270Add1A=s2Step270FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step270Add1B=s2Step270FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step270EntryFBefore s2Step270FrontBank 137 150 ⟨135,136,151,151⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step270FrontLog s2Step270FrontPlan
  · exact s2Step270Front_entry
  · exact s2Step270EntryBank_checked
  · exact s2Step270Front_sigma
  · rfl
  · exact s2Step270Front_branch
  · rfl
  · simpa only [s2Step270FrontPlan,pairEq] using s2Step270HeadBank_checked
  · simpa only [s2Step270FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step270F4_checked
  · exact s2Step270Counter_checked
  · rfl
  · simpa only [s2Step270FrontPlan,headEq] using s2Step270ExitBank_checked

private theorem s2Step270Complete_explicit_checked : compileHmrEarlyStepLog s2Step270EntryFBefore s2Step270FrontBank 137 150 ⟨135,136,151,151⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step270CompleteLog=some s2Step270CompletePlan := by
  let Q := s2Step270EarlyControlPlan
  have hq := s2Step270EarlyControl_plan_checked
  have fv1 : s2Step270CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step270CompleteOut.fv.payload[2]?.getD s2Step270CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step270CompleteOut.fv.payload[3]?.getD s2Step270CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step270CompleteOut.fv.payload[4]?.getD s2Step270CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step270EntryFBefore s2Step270EarlyControlArena s2Step270FrontBank 137 150 ⟨135,136,151,151⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step270CompleteLog s2Step270FrontPlan Q
    s2Step270Front_checked s2Step270Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step270Complete_owned s2Step270Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step270EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 s2Step270CompleteOut.fv.second (s2Step270CompleteOut.fv.payload[2]?.getD s2Step270CompleteOut.fv.sign) (s2Step270CompleteOut.fv.payload[3]?.getD s2Step270CompleteOut.fv.sign) (s2Step270CompleteOut.fv.payload[4]?.getD s2Step270CompleteOut.fv.sign) 786 53 s2Step270EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep270Arena : Arena := s2Step270EntryFBefore
def s2PrivateStep270Bank : WindowBank := s2Step270FrontBank
def s2PrivateStep270Spec : HmrSourceWalkStepLog := ⟨137,150,⟨135,136,151,151⟩,53,.early s2Step270CompleteLog⟩
def s2PrivateStep270Plan : HmrSourceStepPlan := .early s2Step270CompletePlan
theorem s2PrivateStep270_source : s2PrivateStep270Spec=s2ObservedLogs256[14] := rfl
theorem s2PrivateStep270_checked : compileHmrSourceStepLog s2PrivateStep270Arena s2PrivateStep270Bank
    s2PrivateStep270Spec.fgWidth s2PrivateStep270Spec.vWidth s2PrivateStep270Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 270 s2PrivateStep270Spec.need none s2PrivateStep270Spec.log=some s2PrivateStep270Plan := by
  change compileHmrSourceStepLog s2Step270EntryFBefore s2Step270FrontBank 137 150 ⟨135,136,151,151⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 270 53 none (.early s2Step270CompleteLog)=some (.early s2Step270CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 270<498)]
  rw [s2Step270Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
