import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep267
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

private def s2Step269CompleteMoves : List (Wire × Wire) := []

private def s2Step269EarlyControlLog : HmrEarlyControlLog := ⟨[786, 844, 788, 779, 836],[830],[800],[894, 896, 901, 903, 904, 905],[906]⟩

private def s2Step269FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779], [], [817]],[[836], [788], [786], [844]],[[], [], [], []]⟩,[816],[891],[830],[800],[894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step269CompleteLog : HmrEarlyStepLog := ⟨s2Step269FrontLog,s2Step269CompleteMoves,s2Step269EarlyControlLog⟩

private def s2Step269ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step269ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step269ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step269ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩

private def s2Step269FrontOut : WindowBank := ⟨s2Step269ExitFOut,s2Step269ExitGOut,s2Step269ExitFvOut,s2Step269ExitGvOut⟩

private def s2Step269CompleteOut : WindowBank := s2Step269FrontOut.repacked s2Step269CompleteMoves

private def s2Step269EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step269EarlyControlPositiveArena,[830],s2Step269EarlyControlEqualityArena,[800],⟨⟨816,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step269EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<906)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,788⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step269EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step269EarlyControlZeroArena,s2Step269EarlyControlZeroPlan,s2Step269EarlyControlClassPlan,s2Step269EarlyControlFlagArena,s2Step269EarlyControlFittedArena,s2Step269EarlyControlHistoryArena,s2Step269EarlyControlSigmaArena,s2Step269EarlyControlOutputArena,s2Step269EarlyControlLog⟩

private def s2Step269CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step269Counter_bounded : s2Step269CounterWork.toFinset⊆arenaWires := by norm_num [s2Step269CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step269HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269CounterDuring : Arena := ⟨s2Step269HeadFvAfter.live∪s2Step269CounterWork.toFinset,Finset.union_subset s2Step269HeadFvAfter.bounded s2Step269Counter_bounded⟩

private def s2Step269EntryFFresh : List Wire := []

private def s2Step269EntryFvFresh : List Wire := []

private def s2Step269EntryGFresh : List Wire := [779]

private def s2Step269EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EntryGvFresh : List Wire := [817]

private def s2Step269ExitFExtra : List Wire := [788]

private def s2Step269ExitFvExtra : List Wire := [844]

private def s2Step269ExitGExtra : List Wire := [779, 836]

private def s2Step269ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269ExitGvExtra : List Wire := [786]

private def s2Step269Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step269Add0_bounded : s2Step269Add0Work.toFinset⊆arenaWires := by
  have h : s2Step269Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step269Add0During : Arena := ⟨s2Step269Add0Arena.live∪s2Step269Add0Work.toFinset,Finset.union_subset s2Step269Add0Arena.bounded s2Step269Add0_bounded⟩

private def s2Step269Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step269Add1_bounded : s2Step269Add1Work.toFinset⊆arenaWires := by
  have h : s2Step269Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step269Add1During : Arena := ⟨s2Step269Add1Arena.live∪s2Step269Add1Work.toFinset,Finset.union_subset s2Step269Add1Arena.bounded s2Step269Add1_bounded⟩

private def s2Step269F4FlagArena : Arena := ⟨s2Step269HeadFvAfter.live∪{830},Finset.union_subset s2Step269HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step269F4Plan : HmrHybridF4Plan := ⟨s2Step269F4FlagArena,[830],s2Step269Add0Arena,[800],s2Step269Add0During,s2Step269Add0Work,s2Step269Add1During,s2Step269Add1Work⟩

private def s2Step269HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩

private def s2Step269HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 844],770⟩

private def s2Step269HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 836],769⟩

private def s2Step269HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 786],771⟩

private def s2Step269FrontHead : WindowBank := ⟨s2Step269HeadFOut,s2Step269HeadGOut,s2Step269HeadFvOut,s2Step269HeadGvOut⟩

private def s2Step269EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step269EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step269EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779],769⟩

private def s2Step269EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩

private def s2Step269FrontPair : WindowBank := ⟨s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut⟩

private def s2Step269FrontSigmaArena : Arena := ⟨s2Step269EntryGvAfter.live∪{816},Finset.union_subset s2Step269EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step269HeadFFresh : List Wire := [788]

private def s2Step269HeadFvFresh : List Wire := [844]

private def s2Step269HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269HeadGFresh : List Wire := [836]

private def s2Step269HeadGvFresh : List Wire := [786]

private def s2Step269FrontPlan : HmrSourceFront := ⟨s2Step269EntryGvAfter,s2Step269FrontPair,(growRow 768 s2Step269EntryFFresh ++ (growRow 769 s2Step269EntryGFresh ++ (growRow 770 s2Step269EntryFvFresh ++ (growRow 771 s2Step269EntryGvFresh ++ [])))),s2Step269FrontSigmaArena,[816],s2Step269HeadGBefore,[891],
  s2Step269HeadFvAfter,s2Step269FrontHead,(growRow 769 s2Step269HeadGFresh ++ (growRow 768 s2Step269HeadFFresh ++ (growRow 771 s2Step269HeadGvFresh ++ (growRow 770 s2Step269HeadFvFresh ++ [])))),s2Step269F4Plan,s2Step269CounterDuring,s2Step269CounterWork,s2Step269ExitGvAfter,s2Step269FrontOut,(shrinkRow 769 s2Step269ExitGExtra ++ (shrinkRow 768 s2Step269ExitFExtra ++ (shrinkRow 770 s2Step269ExitFvExtra ++ (shrinkRow 771 s2Step269ExitGvExtra ++ []))))⟩

private def s2Step269CompletePlan : HmrEarlyStepPlan := ⟨s2Step269FrontPlan,s2Step269EarlyControlArena,s2Step269EarlyControlPlan,s2Step269CompleteMoves⟩

private theorem s2Step269Complete_apart : List.Disjoint (s2Step269CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [816, 891, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step269CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[816, 891, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step269Complete_owned : (s2Step269CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Complete_repack : s2Step269ExitGvAfter.checkRepack s2Step269CompleteMoves=some s2Step269EarlyControlArena := by rfl

private theorem s2Step269EarlyControl_branchOwned : ([891] : List Wire).toFinset⊆s2Step269EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_branch : compileHmrBranchRetirement s2Step269EarlyControlSigmaArena 891=some s2Step269EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step269EarlyControl_branchOwned
  · ext q
    simp [s2Step269EarlyControlOutputArena,s2Step269EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step269EarlyControl_classEqualityBorrow : s2Step269EarlyControlPositiveArena.checkBorrow (([816, 830] : List Wire).length-1) s2Step269EarlyControlLog.classWork=some s2Step269EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step269EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step269EarlyControlEqualityArena,s2Step269EarlyControlPositiveArena,s2Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step269EarlyControl_classEqualityOwned : ([816, 830] : List Wire).toFinset⊆s2Step269EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_classEquality : compileHmrEqualityLog s2Step269EarlyControlPositiveArena [816, 830] 0 s2Step269EarlyControlLog.classWork=some (s2Step269EarlyControlEqualityArena,s2Step269EarlyControlLog.classWork,s2Step269EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step269EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step269EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step269EarlyControl_classOwned : ([777, 836, 816] : List Wire).toFinset⊆s2Step269EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_positiveBorrow : s2Step269EarlyControlZeroArena.checkBorrow (1) s2Step269EarlyControlLog.positiveWork=some s2Step269EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step269EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step269EarlyControlPositiveArena,s2Step269EarlyControlZeroArena,s2Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step269EarlyControl_class : compileHmrSourceClassLog s2Step269EarlyControlZeroArena false 777 s2Step269EarlyControlZeroPlan.top 0 816 s2Step269EarlyControlLog.positiveWork s2Step269EarlyControlLog.classWork=some s2Step269EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step269EarlyControlClassPlan s2Step269EarlyControlZeroArena false 777 s2Step269EarlyControlZeroPlan.top 0 816
  constructor
  · decide +kernel
  · exact s2Step269EarlyControl_classOwned
  · exact s2Step269EarlyControl_positiveBorrow
  · exact s2Step269EarlyControl_classEquality

private theorem s2Step269EarlyControl_entryRecordOwned : ([891, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_entrySigmaOwned : ([816, 254] : List Wire).toFinset⊆s2Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_fitBorrow : s2Step269EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step269EarlyControlLog.recordFresh=some s2Step269EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step269EarlyControlFlagArena (fun q => (0≤q ∧ q<906)) rfl
      decide +kernel
    · ext q
      simp [s2Step269EarlyControlFittedArena,s2Step269EarlyControlFlagArena,s2Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step269EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step269EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlFlagArena (fun q => (0≤q ∧ q<906)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_fit : compileHmrRecordGrowLog s2Step269EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 53 s2Step269EarlyControlLog.recordFresh=some s2Step269EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step269EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step269EarlyControl_fitBorrow

private theorem s2Step269EarlyControl_flagsBorrow : s2Step269EarlyControlEqualityArena.checkBorrow (6) s2Step269EarlyControlLog.flagWork=some s2Step269EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step269EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step269EarlyControlFlagArena,s2Step269EarlyControlEqualityArena,s2Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step269EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step269EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_flags : compileHmrFlagsLog s2Step269EarlyControlClassPlan.equalityArena s2Step269EarlyControlClassPlan.equality.top 253 252 251 s2Step269EarlyControlLog.flagWork=some s2Step269EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step269EarlyControl_flagsOwned⟩
  · exact s2Step269EarlyControl_flagsBorrow

private theorem s2Step269EarlyControl_historyBorrow : s2Step269EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step269EarlyControlLog.recordFresh=some s2Step269EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step269EarlyControlHistoryArena,s2Step269EarlyControlArena,s2Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step269EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_history : compileHmrRecordGrowLog s2Step269EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 53 s2Step269EarlyControlLog.recordFresh=some s2Step269EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step269EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step269EarlyControl_historyBorrow

private theorem s2Step269EarlyControl_sigmaOwned : ([254, 816] : List Wire).toFinset⊆s2Step269EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_sigmaReleaseOwned : ([816] : List Wire).toFinset⊆s2Step269EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_sigmaRelease : s2Step269EarlyControlHistoryArena.release {816} (fun _ => false)=some s2Step269EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step269EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step269EarlyControlSigmaArena,s2Step269EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step269EarlyControl_sigma : compileHmrSigmaDropLog s2Step269EarlyControlHistoryArena false 0 0 254 816 []=some s2Step269EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step269EarlyControl_sigmaOwned⟩
  · exact s2Step269EarlyControl_sigmaRelease

private theorem s2Step269EarlyControl_zeroBorrow : s2Step269EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step269EarlyControlLog.zeroWork=some s2Step269EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step269EarlyControlZeroArena,s2Step269EarlyControlArena,s2Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step269EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step269EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EarlyControl_zero : compileHmrEqualityLog s2Step269EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step269EarlyControlLog.zeroWork=some (s2Step269EarlyControlZeroArena,s2Step269EarlyControlLog.zeroWork,s2Step269EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step269EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step269EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step269EarlyControl_logged : s2Step269EarlyControlPlan.Logged s2Step269EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 816 254 253 252 251 891 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step269EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step269EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step269EarlyControl_zero
  · exact s2Step269EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step269EarlyControl_flags
  · exact s2Step269EarlyControl_fit
  · exact s2Step269EarlyControl_history
  · exact s2Step269EarlyControl_sigma
  · exact s2Step269EarlyControl_branch

private theorem s2Step269EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step269EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 816 254 253 252 251 891 53 s2Step269EarlyControlLog=some s2Step269EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step269EarlyControlPlan s2Step269EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 816 254 253 252 251 891 53 s2Step269EarlyControl_logged

private def s2Step269EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step269EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step269EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step269EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩

private def s2Step269FrontBank : WindowBank := ⟨s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow⟩

private def s2Step269Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788, 768]

private def s2Step269Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 836, 769]

private def s2Step269Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 844, 770]

private def s2Step269Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 786, 771]

private theorem s2Step269Counter_apart : Disjoint s2Step269HeadFvAfter.live s2Step269CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step269HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Counter_borrowed : s2Step269HeadFvAfter.checkBorrow 4 s2Step269CounterWork=some s2Step269CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step269HeadFvAfter s2Step269CounterDuring s2Step269CounterWork.toFinset s2Step269Counter_bounded s2Step269Counter_apart rfl

private theorem s2Step269Counter_owned : (816::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step269HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step269HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Counter_checked : compileHmrCounterStepLog s2Step269HeadFvAfter true 816 [772, 773, 774, 775, 776, 777] s2Step269CounterWork=some s2Step269CounterDuring := by
  have owned : ∀q∈816::[772, 773, 774, 775, 776, 777],q∈s2Step269HeadFvAfter.live := fun q hq => s2Step269Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step269Counter_borrowed

private def s2Step269EntryFAfter : Arena := s2Step269EntryFBefore

private theorem s2Step269EntryBank_incomingDistinct : ([s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269EntryF_Incoming : rowsOwned s2Step269EntryFBefore [s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow] 0 s2Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269EntryBank_outgoingOwned : rowsOwned s2Step269EntryGvAfter [s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step269EntryGvAfter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269EntryF_Outgoing : rowsOwned s2Step269EntryGvAfter [s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] :=
  hmrRows_owned_drop s2Step269EntryGvAfter [s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] 0 s2Step269EntryBank_outgoingOwned

private theorem s2Step269EntryF_distinct : (s2Step269EntryFRow.sign::s2Step269EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269EntryF_owned : (s2Step269EntryFRow.sign::s2Step269EntryFRow.payload).toFinset⊆s2Step269EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EntryF_reserved : s2Step269EntryFBefore.reserve s2Step269EntryFFresh.toFinset=some s2Step269EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269EntryFFresh,arenaWires]
  · norm_num [s2Step269EntryFBefore,s2Step269EntryFFresh,arenaWires]
  · simp only [s2Step269EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step269EntryF_checked : planRowResizeLog s2Step269EntryFBefore s2Step269EntryFRow 137 s2Step269EntryFFresh=
    some (s2Step269EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩,growRow 768 s2Step269EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step269EntryFBefore s2Step269EntryFAfter s2Step269EntryFRow 137 s2Step269EntryFFresh
    s2Step269EntryF_distinct s2Step269EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269EntryF_reserved
  have rowEq : WindowRow.mk (s2Step269EntryFRow.payload++s2Step269EntryFFresh) s2Step269EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step269EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269EntryFvAfter : Arena := s2Step269EntryGAfter

private def s2Step269EntryFvBefore : Arena := s2Step269EntryGAfter

private theorem s2Step269EntryFv_Incoming : rowsOwned s2Step269EntryFvBefore [s2Step269EntryFvRow,s2Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow] 2 s2Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269EntryFvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269EntryFv_Outgoing : rowsOwned s2Step269EntryGvAfter [s2Step269EntryFvOut,s2Step269EntryGvOut] :=
  hmrRows_owned_drop s2Step269EntryGvAfter [s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] 2 s2Step269EntryBank_outgoingOwned

private theorem s2Step269EntryFv_distinct : (s2Step269EntryFvRow.sign::s2Step269EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269EntryFv_owned : (s2Step269EntryFvRow.sign::s2Step269EntryFvRow.payload).toFinset⊆s2Step269EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269EntryFvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EntryFv_reserved : s2Step269EntryFvBefore.reserve s2Step269EntryFvFresh.toFinset=some s2Step269EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269EntryFvFresh,arenaWires]
  · norm_num [s2Step269EntryFvBefore,s2Step269EntryGAfter,s2Step269EntryFvFresh,arenaWires]
  · simp only [s2Step269EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step269EntryFv_checked : planRowResizeLog s2Step269EntryFvBefore s2Step269EntryFvRow 150 s2Step269EntryFvFresh=
    some (s2Step269EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩,growRow 770 s2Step269EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step269EntryFvBefore s2Step269EntryFvAfter s2Step269EntryFvRow 150 s2Step269EntryFvFresh
    s2Step269EntryFv_distinct s2Step269EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step269EntryFvRow.payload++s2Step269EntryFvFresh) s2Step269EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step269EntryGBefore : Arena := s2Step269EntryFBefore

private theorem s2Step269EntryG_Incoming : rowsOwned s2Step269EntryGBefore [s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow] 1 s2Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269EntryG_Outgoing : rowsOwned s2Step269EntryGvAfter [s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] :=
  hmrRows_owned_drop s2Step269EntryGvAfter [s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] 1 s2Step269EntryBank_outgoingOwned

private theorem s2Step269EntryG_distinct : (s2Step269EntryGRow.sign::s2Step269EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269EntryG_owned : (s2Step269EntryGRow.sign::s2Step269EntryGRow.payload).toFinset⊆s2Step269EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EntryG_reserved : s2Step269EntryGBefore.reserve s2Step269EntryGFresh.toFinset=some s2Step269EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269EntryGFresh,arenaWires]
  · norm_num [s2Step269EntryGBefore,s2Step269EntryFBefore,s2Step269EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step269EntryGAfter,s2Step269EntryGBefore,s2Step269EntryFBefore,s2Step269EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269EntryG_checked : planRowResizeLog s2Step269EntryGBefore s2Step269EntryGRow 137 s2Step269EntryGFresh=
    some (s2Step269EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779],769⟩,growRow 769 s2Step269EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step269EntryGBefore s2Step269EntryGAfter s2Step269EntryGRow 137 s2Step269EntryGFresh
    s2Step269EntryG_distinct s2Step269EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269EntryG_reserved
  have rowEq : WindowRow.mk (s2Step269EntryGRow.payload++s2Step269EntryGFresh) s2Step269EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step269EntryGvBefore : Arena := s2Step269EntryGAfter

private theorem s2Step269EntryGv_Incoming : rowsOwned s2Step269EntryGvBefore [s2Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow] 3 s2Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269EntryGvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269EntryGv_Outgoing : rowsOwned s2Step269EntryGvAfter [s2Step269EntryGvOut] :=
  hmrRows_owned_drop s2Step269EntryGvAfter [s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut] 3 s2Step269EntryBank_outgoingOwned

private theorem s2Step269EntryGv_distinct : (s2Step269EntryGvRow.sign::s2Step269EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269EntryGv_owned : (s2Step269EntryGvRow.sign::s2Step269EntryGvRow.payload).toFinset⊆s2Step269EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269EntryGvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269EntryGv_reserved : s2Step269EntryGvBefore.reserve s2Step269EntryGvFresh.toFinset=some s2Step269EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269EntryGvFresh,arenaWires]
  · norm_num [s2Step269EntryGvBefore,s2Step269EntryGAfter,s2Step269EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step269EntryGvAfter,s2Step269EntryGvBefore,s2Step269EntryGAfter,s2Step269EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269EntryGv_checked : planRowResizeLog s2Step269EntryGvBefore s2Step269EntryGvRow 150 s2Step269EntryGvFresh=
    some (s2Step269EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩,growRow 771 s2Step269EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step269EntryGvBefore s2Step269EntryGvAfter s2Step269EntryGvRow 150 s2Step269EntryGvFresh
    s2Step269EntryGv_distinct s2Step269EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step269EntryGvRow.payload++s2Step269EntryGvFresh) s2Step269EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step269EntryBank_rows : planWindowRowsLog s2Step269EntryFBefore [(s2Step269EntryFRow,137),(s2Step269EntryGRow,137),(s2Step269EntryFvRow,150),(s2Step269EntryGvRow,150)] [s2Step269EntryFFresh,s2Step269EntryGFresh,s2Step269EntryFvFresh,s2Step269EntryGvFresh]=
    some (s2Step269EntryGvAfter,[s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut],(growRow 768 s2Step269EntryFFresh ++ (growRow 769 s2Step269EntryGFresh ++ (growRow 770 s2Step269EntryFvFresh ++ (growRow 771 s2Step269EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step269EntryGvAfter [] []=some (s2Step269EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step269EntryGvBefore s2Step269EntryGvAfter s2Step269EntryGvAfter
    s2Step269EntryGvRow s2Step269EntryGvOut 150 s2Step269EntryGvFresh [] [] []
    (growRow 771 s2Step269EntryGvFresh) ([]) s2Step269EntryGv_Incoming s2Step269EntryGv_checked h4 s2Step269EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step269EntryFvBefore s2Step269EntryFvAfter s2Step269EntryGvAfter
    s2Step269EntryFvRow s2Step269EntryFvOut 150 s2Step269EntryFvFresh [(s2Step269EntryGvRow,150)] [s2Step269EntryGvFresh] [s2Step269EntryGvOut]
    (growRow 770 s2Step269EntryFvFresh) ((growRow 771 s2Step269EntryGvFresh ++ [])) s2Step269EntryFv_Incoming s2Step269EntryFv_checked h3 s2Step269EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step269EntryGBefore s2Step269EntryGAfter s2Step269EntryGvAfter
    s2Step269EntryGRow s2Step269EntryGOut 137 s2Step269EntryGFresh [(s2Step269EntryFvRow,150),(s2Step269EntryGvRow,150)] [s2Step269EntryFvFresh,s2Step269EntryGvFresh] [s2Step269EntryFvOut,s2Step269EntryGvOut]
    (growRow 769 s2Step269EntryGFresh) ((growRow 770 s2Step269EntryFvFresh ++ (growRow 771 s2Step269EntryGvFresh ++ []))) s2Step269EntryG_Incoming s2Step269EntryG_checked h2 s2Step269EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step269EntryFBefore s2Step269EntryFAfter s2Step269EntryGvAfter
    s2Step269EntryFRow s2Step269EntryFOut 137 s2Step269EntryFFresh [(s2Step269EntryGRow,137),(s2Step269EntryFvRow,150),(s2Step269EntryGvRow,150)] [s2Step269EntryGFresh,s2Step269EntryFvFresh,s2Step269EntryGvFresh] [s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut]
    (growRow 768 s2Step269EntryFFresh) ((growRow 769 s2Step269EntryGFresh ++ (growRow 770 s2Step269EntryFvFresh ++ (growRow 771 s2Step269EntryGvFresh ++ [])))) s2Step269EntryF_Incoming s2Step269EntryF_checked h1 s2Step269EntryF_Outgoing
  exact h0

private theorem s2Step269EntryBank_checked : compileHmrBankResizeLog .entry s2Step269EntryFBefore ⟨s2Step269EntryFRow,s2Step269EntryGRow,s2Step269EntryFvRow,s2Step269EntryGvRow⟩ ⟨137,137,150,150⟩ [s2Step269EntryFFresh,s2Step269EntryGFresh,s2Step269EntryFvFresh,s2Step269EntryGvFresh]=
    some (s2Step269EntryGvAfter,⟨s2Step269EntryFOut,s2Step269EntryGOut,s2Step269EntryFvOut,s2Step269EntryGvOut⟩,(growRow 768 s2Step269EntryFFresh ++ (growRow 769 s2Step269EntryGFresh ++ (growRow 770 s2Step269EntryFvFresh ++ (growRow 771 s2Step269EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step269EntryBank_rows]
  rfl

private def s2Step269ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269ExitFBefore : Arena := s2Step269ExitGAfter

private def s2Step269ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩

private def s2Step269ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 844],770⟩

private def s2Step269ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 836],769⟩

private def s2Step269ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 786],771⟩

private theorem s2Step269ExitBank_incomingDistinct : ([s2Step269ExitGRow,s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269ExitF_Incoming : rowsOwned s2Step269ExitFBefore [s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269ExitGRow,s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow] 1 s2Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269ExitBank_outgoingOwned : rowsOwned s2Step269ExitGvAfter [s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step269ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269ExitF_Outgoing : rowsOwned s2Step269ExitGvAfter [s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] :=
  hmrRows_owned_drop s2Step269ExitGvAfter [s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] 1 s2Step269ExitBank_outgoingOwned

private theorem s2Step269ExitF_distinct : (s2Step269ExitFRow.sign::s2Step269ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269ExitF_owned : (s2Step269ExitFRow.sign::s2Step269ExitFRow.payload).toFinset⊆s2Step269ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269ExitF_retired : s2Step269ExitFBefore.retireSet s2Step269ExitFExtra.toFinset=s2Step269ExitFAfter := by
  unfold Arena.retireSet s2Step269ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step269ExitFBefore,s2Step269ExitGAfter,s2Step269ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step269ExitF_checked : planRowResizeLog s2Step269ExitFBefore s2Step269ExitFRow 137 []=
    some (s2Step269ExitFAfter,s2Step269ExitFOut,shrinkRow 768 s2Step269ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step269ExitFBefore s2Step269ExitFRow 137 s2Step269ExitF_distinct s2Step269ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step269ExitFRow.payload.take 137) s2Step269ExitFRow.sign=s2Step269ExitFOut := by decide +kernel
  have hi : s2Step269ExitFRow.payload.drop 137=s2Step269ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step269ExitF_retired] at result
  exact result

private def s2Step269ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269ExitFvBefore : Arena := s2Step269ExitFAfter

private theorem s2Step269ExitFv_Incoming : rowsOwned s2Step269ExitFvBefore [s2Step269ExitFvRow,s2Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269ExitGRow,s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow] 2 s2Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269ExitFv_Outgoing : rowsOwned s2Step269ExitGvAfter [s2Step269ExitFvOut,s2Step269ExitGvOut] :=
  hmrRows_owned_drop s2Step269ExitGvAfter [s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] 2 s2Step269ExitBank_outgoingOwned

private theorem s2Step269ExitFv_distinct : (s2Step269ExitFvRow.sign::s2Step269ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269ExitFv_owned : (s2Step269ExitFvRow.sign::s2Step269ExitFvRow.payload).toFinset⊆s2Step269ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269ExitFv_retired : s2Step269ExitFvBefore.retireSet s2Step269ExitFvExtra.toFinset=s2Step269ExitFvAfter := by
  unfold Arena.retireSet s2Step269ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step269ExitFvBefore,s2Step269ExitFAfter,s2Step269ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step269ExitFv_checked : planRowResizeLog s2Step269ExitFvBefore s2Step269ExitFvRow 150 []=
    some (s2Step269ExitFvAfter,s2Step269ExitFvOut,shrinkRow 770 s2Step269ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step269ExitFvBefore s2Step269ExitFvRow 150 s2Step269ExitFv_distinct s2Step269ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step269ExitFvRow.payload.take 150) s2Step269ExitFvRow.sign=s2Step269ExitFvOut := by decide +kernel
  have hi : s2Step269ExitFvRow.payload.drop 150=s2Step269ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step269ExitFv_retired] at result
  exact result

private def s2Step269ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step269ExitG_Incoming : rowsOwned s2Step269ExitGBefore [s2Step269ExitGRow,s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269ExitGRow,s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow] 0 s2Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269ExitG_Outgoing : rowsOwned s2Step269ExitGvAfter [s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] :=
  hmrRows_owned_drop s2Step269ExitGvAfter [s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] 0 s2Step269ExitBank_outgoingOwned

private theorem s2Step269ExitG_distinct : (s2Step269ExitGRow.sign::s2Step269ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269ExitG_owned : (s2Step269ExitGRow.sign::s2Step269ExitGRow.payload).toFinset⊆s2Step269ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269ExitG_retired : s2Step269ExitGBefore.retireSet s2Step269ExitGExtra.toFinset=s2Step269ExitGAfter := by
  unfold Arena.retireSet s2Step269ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step269ExitGBefore,s2Step269ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step269ExitG_checked : planRowResizeLog s2Step269ExitGBefore s2Step269ExitGRow 136 []=
    some (s2Step269ExitGAfter,s2Step269ExitGOut,shrinkRow 769 s2Step269ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step269ExitGBefore s2Step269ExitGRow 136 s2Step269ExitG_distinct s2Step269ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step269ExitGRow.payload.take 136) s2Step269ExitGRow.sign=s2Step269ExitGOut := by decide +kernel
  have hi : s2Step269ExitGRow.payload.drop 136=s2Step269ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step269ExitG_retired] at result
  exact result

private def s2Step269ExitGvBefore : Arena := s2Step269ExitFvAfter

private theorem s2Step269ExitGv_Incoming : rowsOwned s2Step269ExitGvBefore [s2Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269ExitGRow,s2Step269ExitFRow,s2Step269ExitFvRow,s2Step269ExitGvRow] 3 s2Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269ExitGv_Outgoing : rowsOwned s2Step269ExitGvAfter [s2Step269ExitGvOut] :=
  hmrRows_owned_drop s2Step269ExitGvAfter [s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut] 3 s2Step269ExitBank_outgoingOwned

private theorem s2Step269ExitGv_distinct : (s2Step269ExitGvRow.sign::s2Step269ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269ExitGv_owned : (s2Step269ExitGvRow.sign::s2Step269ExitGvRow.payload).toFinset⊆s2Step269ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269ExitGv_retired : s2Step269ExitGvBefore.retireSet s2Step269ExitGvExtra.toFinset=s2Step269ExitGvAfter := by
  unfold Arena.retireSet s2Step269ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step269ExitGvBefore,s2Step269ExitFvAfter,s2Step269ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step269ExitGv_checked : planRowResizeLog s2Step269ExitGvBefore s2Step269ExitGvRow 150 []=
    some (s2Step269ExitGvAfter,s2Step269ExitGvOut,shrinkRow 771 s2Step269ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step269ExitGvBefore s2Step269ExitGvRow 150 s2Step269ExitGv_distinct s2Step269ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step269ExitGvRow.payload.take 150) s2Step269ExitGvRow.sign=s2Step269ExitGvOut := by decide +kernel
  have hi : s2Step269ExitGvRow.payload.drop 150=s2Step269ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step269ExitGv_retired] at result
  exact result

private theorem s2Step269ExitBank_rows : planWindowRowsLog s2Step269ExitGBefore [(s2Step269ExitGRow,136),(s2Step269ExitFRow,137),(s2Step269ExitFvRow,150),(s2Step269ExitGvRow,150)] [[],[],[],[]]=
    some (s2Step269ExitGvAfter,[s2Step269ExitGOut,s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut],(shrinkRow 769 s2Step269ExitGExtra ++ (shrinkRow 768 s2Step269ExitFExtra ++ (shrinkRow 770 s2Step269ExitFvExtra ++ (shrinkRow 771 s2Step269ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step269ExitGvAfter [] []=some (s2Step269ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step269ExitGvBefore s2Step269ExitGvAfter s2Step269ExitGvAfter
    s2Step269ExitGvRow s2Step269ExitGvOut 150 [] [] [] []
    (shrinkRow 771 s2Step269ExitGvExtra) ([]) s2Step269ExitGv_Incoming s2Step269ExitGv_checked h4 s2Step269ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step269ExitFvBefore s2Step269ExitFvAfter s2Step269ExitGvAfter
    s2Step269ExitFvRow s2Step269ExitFvOut 150 [] [(s2Step269ExitGvRow,150)] [[]] [s2Step269ExitGvOut]
    (shrinkRow 770 s2Step269ExitFvExtra) ((shrinkRow 771 s2Step269ExitGvExtra ++ [])) s2Step269ExitFv_Incoming s2Step269ExitFv_checked h3 s2Step269ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step269ExitFBefore s2Step269ExitFAfter s2Step269ExitGvAfter
    s2Step269ExitFRow s2Step269ExitFOut 137 [] [(s2Step269ExitFvRow,150),(s2Step269ExitGvRow,150)] [[],[]] [s2Step269ExitFvOut,s2Step269ExitGvOut]
    (shrinkRow 768 s2Step269ExitFExtra) ((shrinkRow 770 s2Step269ExitFvExtra ++ (shrinkRow 771 s2Step269ExitGvExtra ++ []))) s2Step269ExitF_Incoming s2Step269ExitF_checked h2 s2Step269ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step269ExitGBefore s2Step269ExitGAfter s2Step269ExitGvAfter
    s2Step269ExitGRow s2Step269ExitGOut 136 [] [(s2Step269ExitFRow,137),(s2Step269ExitFvRow,150),(s2Step269ExitGvRow,150)] [[],[],[]] [s2Step269ExitFOut,s2Step269ExitFvOut,s2Step269ExitGvOut]
    (shrinkRow 769 s2Step269ExitGExtra) ((shrinkRow 768 s2Step269ExitFExtra ++ (shrinkRow 770 s2Step269ExitFvExtra ++ (shrinkRow 771 s2Step269ExitGvExtra ++ [])))) s2Step269ExitG_Incoming s2Step269ExitG_checked h1 s2Step269ExitG_Outgoing
  exact h0

private theorem s2Step269ExitBank_checked : compileHmrBankResizeLog .exit s2Step269ExitGBefore ⟨s2Step269ExitFRow,s2Step269ExitGRow,s2Step269ExitFvRow,s2Step269ExitGvRow⟩ ⟨137,136,150,150⟩ [[],[],[],[]]=
    some (s2Step269ExitGvAfter,⟨s2Step269ExitFOut,s2Step269ExitGOut,s2Step269ExitFvOut,s2Step269ExitGvOut⟩,(shrinkRow 769 s2Step269ExitGExtra ++ (shrinkRow 768 s2Step269ExitFExtra ++ (shrinkRow 770 s2Step269ExitFvExtra ++ (shrinkRow 771 s2Step269ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step269ExitBank_rows]
  rfl

private theorem s2Step269Add0_apart : Disjoint s2Step269Add0Arena.live s2Step269Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step269Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Add0_card : s2Step269Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step269Add0_borrowed : s2Step269Add0Arena.checkBorrow (hmrHybridCount s2Step269Add0Arena s2Step269Add0B.length) s2Step269Add0Work=some s2Step269Add0During := by
  have len : s2Step269Add0Work.length=hmrHybridCount s2Step269Add0Arena s2Step269Add0B.length := by
    rw [hmrHybridCount,s2Step269Add0_card]
    decide +kernel
  have nd : s2Step269Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step269Add0Arena s2Step269Add0During s2Step269Add0Work.toFinset s2Step269Add0_bounded s2Step269Add0_apart rfl

private theorem s2Step269Add0_distinct : (830::891::800::(s2Step269Add0A++s2Step269Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269Add0_owned : (830::891::800::(s2Step269Add0A++s2Step269Add0B)).toFinset⊆s2Step269Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step269Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Add0_checked : compileHmrHybridCinLog s2Step269Add0Arena 891 830 800 s2Step269Add0A s2Step269Add0B s2Step269Add0Work=some s2Step269Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step269Add0Arena s2Step269Add0During 891 830 800 s2Step269Add0A s2Step269Add0B s2Step269Add0Work
    (by decide +kernel) (by decide +kernel) s2Step269Add0_distinct
    (fun q hq => s2Step269Add0_owned (List.mem_toFinset.mpr hq)) s2Step269Add0_borrowed

private theorem s2Step269Add1_apart : Disjoint s2Step269Add1Arena.live s2Step269Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step269Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Add1_card : s2Step269Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step269Add1_borrowed : s2Step269Add1Arena.checkBorrow (hmrHybridCount s2Step269Add1Arena s2Step269Add1B.length) s2Step269Add1Work=some s2Step269Add1During := by
  have len : s2Step269Add1Work.length=hmrHybridCount s2Step269Add1Arena s2Step269Add1B.length := by
    rw [hmrHybridCount,s2Step269Add1_card]
    decide +kernel
  have nd : s2Step269Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step269Add1Arena s2Step269Add1During s2Step269Add1Work.toFinset s2Step269Add1_bounded s2Step269Add1_apart rfl

private theorem s2Step269Add1_distinct : (830::891::800::(s2Step269Add1A++s2Step269Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269Add1_owned : (830::891::800::(s2Step269Add1A++s2Step269Add1B)).toFinset⊆s2Step269Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step269Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269Add1_checked : compileHmrHybridCinLog s2Step269Add1Arena 891 830 800 s2Step269Add1A s2Step269Add1B s2Step269Add1Work=some s2Step269Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step269Add1Arena s2Step269Add1During 891 830 800 s2Step269Add1A s2Step269Add1B s2Step269Add1Work
    (by decide +kernel) (by decide +kernel) s2Step269Add1_distinct
    (fun q hq => s2Step269Add1_owned (List.mem_toFinset.mpr hq)) s2Step269Add1_borrowed

private theorem s2Step269F4_apart : Disjoint (s2Step269Add0A++s2Step269Add0B).toFinset (s2Step269Add1A++s2Step269Add1B).toFinset := by
  have nd : ((s2Step269Add0A++s2Step269Add0B)++(s2Step269Add1A++s2Step269Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step269F4_carry : s2Step269F4FlagArena.checkBorrow 1 [800]=some s2Step269Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step269F4FlagArena,s2Step269HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step269F4FlagArena,s2Step269HeadFvAfter,s2Step269Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269F4_distinct : (816::891::830::800::((s2Step269Add0A++s2Step269Add1A)++(s2Step269Add0B++s2Step269Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269F4_flag : s2Step269HeadFvAfter.checkBorrow 1 [830]=some s2Step269F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step269HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step269F4_owned : (816::891::((s2Step269Add0A++s2Step269Add1A)++(s2Step269Add0B++s2Step269Add1B))).toFinset⊆s2Step269HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step269HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269F4_checked : compileHmrHybridF4Log s2Step269HeadFvAfter 816 891 s2Step269Add0A s2Step269Add0B s2Step269Add1A s2Step269Add1B [830] [800] s2Step269Add0Work s2Step269Add1Work=some s2Step269F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step269HeadFvAfter s2Step269F4FlagArena s2Step269Add0Arena s2Step269Add0During s2Step269Add1During 816 891
    s2Step269Add0A s2Step269Add0B s2Step269Add1A s2Step269Add1B [830] [800] s2Step269Add0Work s2Step269Add1Work
    (fun q hq => s2Step269F4_owned (List.mem_toFinset.mpr hq)) s2Step269F4_flag s2Step269F4_carry
    s2Step269F4_distinct s2Step269F4_apart s2Step269Add0_checked s2Step269Add1_checked

private theorem s2Step269Front_branch : s2Step269FrontSigmaArena.checkBorrow 1 [891]=some s2Step269HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step269FrontSigmaArena,s2Step269EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step269FrontSigmaArena,s2Step269EntryGvAfter,s2Step269HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269Front_entry : HmrFrontEntryValid s2Step269EntryFBefore s2Step269FrontBank 137 150 ⟨137,136,150,150⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step269FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step269EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step269EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step269FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step269Front_sigma : s2Step269EntryGvAfter.checkBorrow 1 [816]=some s2Step269FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step269EntryGvAfter,arenaWires]
  · rfl

private def s2Step269HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269HeadFBefore : Arena := s2Step269HeadGAfter

private def s2Step269HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step269HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step269HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779],769⟩

private def s2Step269HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817],771⟩

private theorem s2Step269HeadBank_incomingDistinct : ([s2Step269HeadGRow,s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269HeadF_Incoming : rowsOwned s2Step269HeadFBefore [s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269HeadGRow,s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow] 1 s2Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269HeadBank_outgoingOwned : rowsOwned s2Step269HeadFvAfter [s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step269HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269HeadF_Outgoing : rowsOwned s2Step269HeadFvAfter [s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] :=
  hmrRows_owned_drop s2Step269HeadFvAfter [s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] 1 s2Step269HeadBank_outgoingOwned

private theorem s2Step269HeadF_distinct : (s2Step269HeadFRow.sign::s2Step269HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269HeadF_owned : (s2Step269HeadFRow.sign::s2Step269HeadFRow.payload).toFinset⊆s2Step269HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269HeadF_reserved : s2Step269HeadFBefore.reserve s2Step269HeadFFresh.toFinset=some s2Step269HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269HeadFFresh,arenaWires]
  · norm_num [s2Step269HeadFBefore,s2Step269HeadGAfter,s2Step269HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step269HeadFAfter,s2Step269HeadFBefore,s2Step269HeadGAfter,s2Step269HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269HeadF_checked : planRowResizeLog s2Step269HeadFBefore s2Step269HeadFRow 138 s2Step269HeadFFresh=
    some (s2Step269HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩,growRow 768 s2Step269HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step269HeadFBefore s2Step269HeadFAfter s2Step269HeadFRow 138 s2Step269HeadFFresh
    s2Step269HeadF_distinct s2Step269HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269HeadF_reserved
  have rowEq : WindowRow.mk (s2Step269HeadFRow.payload++s2Step269HeadFFresh) s2Step269HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 788],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step269HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step269HeadFvBefore : Arena := s2Step269HeadGvAfter

private theorem s2Step269HeadFv_Incoming : rowsOwned s2Step269HeadFvBefore [s2Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269HeadGRow,s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow] 3 s2Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269HeadFv_Outgoing : rowsOwned s2Step269HeadFvAfter [s2Step269HeadFvOut] :=
  hmrRows_owned_drop s2Step269HeadFvAfter [s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] 3 s2Step269HeadBank_outgoingOwned

private theorem s2Step269HeadFv_distinct : (s2Step269HeadFvRow.sign::s2Step269HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269HeadFv_owned : (s2Step269HeadFvRow.sign::s2Step269HeadFvRow.payload).toFinset⊆s2Step269HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269HeadFv_reserved : s2Step269HeadFvBefore.reserve s2Step269HeadFvFresh.toFinset=some s2Step269HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269HeadFvFresh,arenaWires]
  · norm_num [s2Step269HeadFvBefore,s2Step269HeadGvAfter,s2Step269HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step269HeadFvAfter,s2Step269HeadFvBefore,s2Step269HeadGvAfter,s2Step269HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269HeadFv_checked : planRowResizeLog s2Step269HeadFvBefore s2Step269HeadFvRow 151 s2Step269HeadFvFresh=
    some (s2Step269HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 844],770⟩,growRow 770 s2Step269HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step269HeadFvBefore s2Step269HeadFvAfter s2Step269HeadFvRow 151 s2Step269HeadFvFresh
    s2Step269HeadFv_distinct s2Step269HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step269HeadFvRow.payload++s2Step269HeadFvFresh) s2Step269HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step269HeadG_Incoming : rowsOwned s2Step269HeadGBefore [s2Step269HeadGRow,s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269HeadGRow,s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow] 0 s2Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269HeadGBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269HeadG_Outgoing : rowsOwned s2Step269HeadFvAfter [s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] :=
  hmrRows_owned_drop s2Step269HeadFvAfter [s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] 0 s2Step269HeadBank_outgoingOwned

private theorem s2Step269HeadG_distinct : (s2Step269HeadGRow.sign::s2Step269HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269HeadG_owned : (s2Step269HeadGRow.sign::s2Step269HeadGRow.payload).toFinset⊆s2Step269HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269HeadGBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269HeadG_reserved : s2Step269HeadGBefore.reserve s2Step269HeadGFresh.toFinset=some s2Step269HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269HeadGFresh,arenaWires]
  · norm_num [s2Step269HeadGBefore,s2Step269HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step269HeadGAfter,s2Step269HeadGBefore,s2Step269HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269HeadG_checked : planRowResizeLog s2Step269HeadGBefore s2Step269HeadGRow 138 s2Step269HeadGFresh=
    some (s2Step269HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 836],769⟩,growRow 769 s2Step269HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step269HeadGBefore s2Step269HeadGAfter s2Step269HeadGRow 138 s2Step269HeadGFresh
    s2Step269HeadG_distinct s2Step269HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269HeadG_reserved
  have rowEq : WindowRow.mk (s2Step269HeadGRow.payload++s2Step269HeadGFresh) s2Step269HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step269HeadGvBefore : Arena := s2Step269HeadFAfter

private theorem s2Step269HeadGv_Incoming : rowsOwned s2Step269HeadGvBefore [s2Step269HeadGvRow,s2Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step269HeadGRow,s2Step269HeadFRow,s2Step269HeadGvRow,s2Step269HeadFvRow] 2 s2Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step269HeadGvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step269HeadGv_Outgoing : rowsOwned s2Step269HeadFvAfter [s2Step269HeadGvOut,s2Step269HeadFvOut] :=
  hmrRows_owned_drop s2Step269HeadFvAfter [s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut] 2 s2Step269HeadBank_outgoingOwned

private theorem s2Step269HeadGv_distinct : (s2Step269HeadGvRow.sign::s2Step269HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step269HeadGv_owned : (s2Step269HeadGvRow.sign::s2Step269HeadGvRow.payload).toFinset⊆s2Step269HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step269HeadGvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step269HeadGv_reserved : s2Step269HeadGvBefore.reserve s2Step269HeadGvFresh.toFinset=some s2Step269HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step269HeadGvFresh,arenaWires]
  · norm_num [s2Step269HeadGvBefore,s2Step269HeadFAfter,s2Step269HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step269HeadGvAfter,s2Step269HeadGvBefore,s2Step269HeadFAfter,s2Step269HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step269HeadGv_checked : planRowResizeLog s2Step269HeadGvBefore s2Step269HeadGvRow 151 s2Step269HeadGvFresh=
    some (s2Step269HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 786],771⟩,growRow 771 s2Step269HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step269HeadGvBefore s2Step269HeadGvAfter s2Step269HeadGvRow 151 s2Step269HeadGvFresh
    s2Step269HeadGv_distinct s2Step269HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step269HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step269HeadGvRow.payload++s2Step269HeadGvFresh) s2Step269HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 786],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step269HeadBank_rows : planWindowRowsLog s2Step269HeadGBefore [(s2Step269HeadGRow,138),(s2Step269HeadFRow,138),(s2Step269HeadGvRow,151),(s2Step269HeadFvRow,151)] [s2Step269HeadGFresh,s2Step269HeadFFresh,s2Step269HeadGvFresh,s2Step269HeadFvFresh]=
    some (s2Step269HeadFvAfter,[s2Step269HeadGOut,s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut],(growRow 769 s2Step269HeadGFresh ++ (growRow 768 s2Step269HeadFFresh ++ (growRow 771 s2Step269HeadGvFresh ++ (growRow 770 s2Step269HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step269HeadFvAfter [] []=some (s2Step269HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step269HeadFvBefore s2Step269HeadFvAfter s2Step269HeadFvAfter
    s2Step269HeadFvRow s2Step269HeadFvOut 151 s2Step269HeadFvFresh [] [] []
    (growRow 770 s2Step269HeadFvFresh) ([]) s2Step269HeadFv_Incoming s2Step269HeadFv_checked h4 s2Step269HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step269HeadGvBefore s2Step269HeadGvAfter s2Step269HeadFvAfter
    s2Step269HeadGvRow s2Step269HeadGvOut 151 s2Step269HeadGvFresh [(s2Step269HeadFvRow,151)] [s2Step269HeadFvFresh] [s2Step269HeadFvOut]
    (growRow 771 s2Step269HeadGvFresh) ((growRow 770 s2Step269HeadFvFresh ++ [])) s2Step269HeadGv_Incoming s2Step269HeadGv_checked h3 s2Step269HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step269HeadFBefore s2Step269HeadFAfter s2Step269HeadFvAfter
    s2Step269HeadFRow s2Step269HeadFOut 138 s2Step269HeadFFresh [(s2Step269HeadGvRow,151),(s2Step269HeadFvRow,151)] [s2Step269HeadGvFresh,s2Step269HeadFvFresh] [s2Step269HeadGvOut,s2Step269HeadFvOut]
    (growRow 768 s2Step269HeadFFresh) ((growRow 771 s2Step269HeadGvFresh ++ (growRow 770 s2Step269HeadFvFresh ++ []))) s2Step269HeadF_Incoming s2Step269HeadF_checked h2 s2Step269HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step269HeadGBefore s2Step269HeadGAfter s2Step269HeadFvAfter
    s2Step269HeadGRow s2Step269HeadGOut 138 s2Step269HeadGFresh [(s2Step269HeadFRow,138),(s2Step269HeadGvRow,151),(s2Step269HeadFvRow,151)] [s2Step269HeadFFresh,s2Step269HeadGvFresh,s2Step269HeadFvFresh] [s2Step269HeadFOut,s2Step269HeadGvOut,s2Step269HeadFvOut]
    (growRow 769 s2Step269HeadGFresh) ((growRow 768 s2Step269HeadFFresh ++ (growRow 771 s2Step269HeadGvFresh ++ (growRow 770 s2Step269HeadFvFresh ++ [])))) s2Step269HeadG_Incoming s2Step269HeadG_checked h1 s2Step269HeadG_Outgoing
  exact h0

private theorem s2Step269HeadBank_checked : compileHmrBankResizeLog .headroom s2Step269HeadGBefore ⟨s2Step269HeadFRow,s2Step269HeadGRow,s2Step269HeadFvRow,s2Step269HeadGvRow⟩ ⟨138,138,151,151⟩ [s2Step269HeadGFresh,s2Step269HeadFFresh,s2Step269HeadGvFresh,s2Step269HeadFvFresh]=
    some (s2Step269HeadFvAfter,⟨s2Step269HeadFOut,s2Step269HeadGOut,s2Step269HeadFvOut,s2Step269HeadGvOut⟩,(growRow 769 s2Step269HeadGFresh ++ (growRow 768 s2Step269HeadFFresh ++ (growRow 771 s2Step269HeadGvFresh ++ (growRow 770 s2Step269HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step269HeadBank_rows]
  rfl

private theorem s2Step269Front_checked : compileHmrSourceFrontLog s2Step269EntryFBefore s2Step269FrontBank 137 150 ⟨137,136,150,150⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step269FrontLog=some s2Step269FrontPlan := by
  have pairEq : s2Step269FrontPair=⟨s2Step269HeadFRow,s2Step269HeadGRow,s2Step269HeadFvRow,s2Step269HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step269FrontHead=⟨s2Step269ExitFRow,s2Step269ExitGRow,s2Step269ExitFvRow,s2Step269ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step269Add0A=s2Step269FrontHead.f.wires := by decide +kernel
  have gEq : s2Step269Add0B=s2Step269FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step269Add1A=s2Step269FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step269Add1B=s2Step269FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step269EntryFBefore s2Step269FrontBank 137 150 ⟨137,136,150,150⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step269FrontLog s2Step269FrontPlan
  · exact s2Step269Front_entry
  · exact s2Step269EntryBank_checked
  · exact s2Step269Front_sigma
  · rfl
  · exact s2Step269Front_branch
  · rfl
  · simpa only [s2Step269FrontPlan,pairEq] using s2Step269HeadBank_checked
  · simpa only [s2Step269FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step269F4_checked
  · exact s2Step269Counter_checked
  · rfl
  · simpa only [s2Step269FrontPlan,headEq] using s2Step269ExitBank_checked

private theorem s2Step269Complete_explicit_checked : compileHmrEarlyStepLog s2Step269EntryFBefore s2Step269FrontBank 137 150 ⟨137,136,150,150⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 53 s2Step269CompleteLog=some s2Step269CompletePlan := by
  let Q := s2Step269EarlyControlPlan
  have hq := s2Step269EarlyControl_plan_checked
  have fv1 : s2Step269CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step269CompleteOut.fv.payload[2]?.getD s2Step269CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step269CompleteOut.fv.payload[3]?.getD s2Step269CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step269CompleteOut.fv.payload[4]?.getD s2Step269CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step269EntryFBefore s2Step269EarlyControlArena s2Step269FrontBank 137 150 ⟨137,136,150,150⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 53 s2Step269CompleteLog s2Step269FrontPlan Q
    s2Step269Front_checked s2Step269Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step269Complete_owned s2Step269Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step269EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 816 s2Step269CompleteOut.fv.second (s2Step269CompleteOut.fv.payload[2]?.getD s2Step269CompleteOut.fv.sign) (s2Step269CompleteOut.fv.payload[3]?.getD s2Step269CompleteOut.fv.sign) (s2Step269CompleteOut.fv.payload[4]?.getD s2Step269CompleteOut.fv.sign) 891 53 s2Step269EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep269Arena : Arena := s2Step269EntryFBefore
def s2PrivateStep269Bank : WindowBank := s2Step269FrontBank
def s2PrivateStep269Spec : HmrSourceWalkStepLog := ⟨137,150,⟨137,136,150,150⟩,53,.early s2Step269CompleteLog⟩
def s2PrivateStep269Plan : HmrSourceStepPlan := .early s2Step269CompletePlan
theorem s2PrivateStep269_source : s2PrivateStep269Spec=s2ObservedLogs256[13] := rfl
theorem s2PrivateStep269_checked : compileHmrSourceStepLog s2PrivateStep269Arena s2PrivateStep269Bank
    s2PrivateStep269Spec.fgWidth s2PrivateStep269Spec.vWidth s2PrivateStep269Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 269 s2PrivateStep269Spec.need none s2PrivateStep269Spec.log=some s2PrivateStep269Plan := by
  change compileHmrSourceStepLog s2Step269EntryFBefore s2Step269FrontBank 137 150 ⟨137,136,150,150⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 269 53 none (.early s2Step269CompleteLog)=some (.early s2Step269CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 269<498)]
  rw [s2Step269Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
