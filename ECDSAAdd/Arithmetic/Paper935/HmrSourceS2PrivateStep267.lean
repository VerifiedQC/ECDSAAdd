import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep265
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

private def s2Step267CompleteMoves : List (Wire × Wire) := []

private def s2Step267EarlyControlLog : HmrEarlyControlLog := ⟨[877, 817, 779, 844, 836],[891],[794],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step267FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779, 844], [], []],[[836], [817], [877], [782]],[[], [], [], []]⟩,[786],[788],[891],[794],[830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[891, 794, 830, 800]⟩

private def s2Step267CompleteLog : HmrEarlyStepLog := ⟨s2Step267FrontLog,s2Step267CompleteMoves,s2Step267EarlyControlLog⟩

private def s2Step267ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step267ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩

private def s2Step267ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step267ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step267FrontOut : WindowBank := ⟨s2Step267ExitFOut,s2Step267ExitGOut,s2Step267ExitFvOut,s2Step267ExitGvOut⟩

private def s2Step267CompleteOut : WindowBank := s2Step267FrontOut.repacked s2Step267CompleteMoves

private def s2Step267EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step267EarlyControlPositiveArena,[891],s2Step267EarlyControlEqualityArena,[794],⟨⟨786,false⟩,[⟨⟨891,false⟩,794⟩]⟩⟩

private def s2Step267EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,877⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,779⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step267EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step267EarlyControlZeroArena,s2Step267EarlyControlZeroPlan,s2Step267EarlyControlClassPlan,s2Step267EarlyControlFlagArena,s2Step267EarlyControlFittedArena,s2Step267EarlyControlHistoryArena,s2Step267EarlyControlSigmaArena,s2Step267EarlyControlOutputArena,s2Step267EarlyControlLog⟩

private def s2Step267CounterWork : List Wire := [891, 794, 830, 800]

private theorem s2Step267Counter_bounded : s2Step267CounterWork.toFinset⊆arenaWires := by norm_num [s2Step267CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step267HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267CounterDuring : Arena := ⟨s2Step267HeadFvAfter.live∪s2Step267CounterWork.toFinset,Finset.union_subset s2Step267HeadFvAfter.bounded s2Step267Counter_bounded⟩

private def s2Step267EntryFFresh : List Wire := []

private def s2Step267EntryFvFresh : List Wire := []

private def s2Step267EntryGFresh : List Wire := [779, 844]

private def s2Step267EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EntryGvAfter : Arena := s2Step267EntryGAfter

private def s2Step267EntryGvFresh : List Wire := []

private def s2Step267ExitFExtra : List Wire := [817]

private def s2Step267ExitGExtra : List Wire := [779, 844, 836]

private def s2Step267ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267ExitGvExtra : List Wire := [877]

private def s2Step267Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step267Add0_bounded : s2Step267Add0Work.toFinset⊆arenaWires := by
  have h : s2Step267Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step267Add0During : Arena := ⟨s2Step267Add0Arena.live∪s2Step267Add0Work.toFinset,Finset.union_subset s2Step267Add0Arena.bounded s2Step267Add0_bounded⟩

private def s2Step267Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step267Add1_bounded : s2Step267Add1Work.toFinset⊆arenaWires := by
  have h : s2Step267Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step267Add1During : Arena := ⟨s2Step267Add1Arena.live∪s2Step267Add1Work.toFinset,Finset.union_subset s2Step267Add1Arena.bounded s2Step267Add1_bounded⟩

private def s2Step267F4FlagArena : Arena := ⟨s2Step267HeadFvAfter.live∪{891},Finset.union_subset s2Step267HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step267F4Plan : HmrHybridF4Plan := ⟨s2Step267F4FlagArena,[891],s2Step267Add0Arena,[794],s2Step267Add0During,s2Step267Add0Work,s2Step267Add1During,s2Step267Add1Work⟩

private def s2Step267HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩

private def s2Step267HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩

private def s2Step267HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844, 836],769⟩

private def s2Step267HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩

private def s2Step267FrontHead : WindowBank := ⟨s2Step267HeadFOut,s2Step267HeadGOut,s2Step267HeadFvOut,s2Step267HeadGvOut⟩

private def s2Step267EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step267EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step267EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844],769⟩

private def s2Step267EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step267FrontPair : WindowBank := ⟨s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut⟩

private def s2Step267FrontSigmaArena : Arena := ⟨s2Step267EntryGvAfter.live∪{786},Finset.union_subset s2Step267EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step267HeadFFresh : List Wire := [817]

private def s2Step267HeadFvFresh : List Wire := [782]

private def s2Step267HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267HeadGFresh : List Wire := [836]

private def s2Step267HeadGvFresh : List Wire := [877]

private def s2Step267FrontPlan : HmrSourceFront := ⟨s2Step267EntryGvAfter,s2Step267FrontPair,(growRow 768 s2Step267EntryFFresh ++ (growRow 769 s2Step267EntryGFresh ++ (growRow 770 s2Step267EntryFvFresh ++ (growRow 771 s2Step267EntryGvFresh ++ [])))),s2Step267FrontSigmaArena,[786],s2Step267HeadGBefore,[788],
  s2Step267HeadFvAfter,s2Step267FrontHead,(growRow 769 s2Step267HeadGFresh ++ (growRow 768 s2Step267HeadFFresh ++ (growRow 771 s2Step267HeadGvFresh ++ (growRow 770 s2Step267HeadFvFresh ++ [])))),s2Step267F4Plan,s2Step267CounterDuring,s2Step267CounterWork,s2Step267ExitGvAfter,s2Step267FrontOut,(shrinkRow 769 s2Step267ExitGExtra ++ (shrinkRow 768 s2Step267ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step267ExitGvExtra ++ []))))⟩

private def s2Step267CompletePlan : HmrEarlyStepPlan := ⟨s2Step267FrontPlan,s2Step267EarlyControlArena,s2Step267EarlyControlPlan,s2Step267CompleteMoves⟩

private theorem s2Step267Complete_apart : List.Disjoint (s2Step267CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step267CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step267Complete_owned : (s2Step267CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step267EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Complete_repack : s2Step267ExitGvAfter.checkRepack s2Step267CompleteMoves=some s2Step267EarlyControlArena := by rfl

private theorem s2Step267EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step267EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_branch : compileHmrBranchRetirement s2Step267EarlyControlSigmaArena 788=some s2Step267EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step267EarlyControl_branchOwned
  · ext q
    simp [s2Step267EarlyControlOutputArena,s2Step267EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step267EarlyControl_classEqualityBorrow : s2Step267EarlyControlPositiveArena.checkBorrow (([786, 891] : List Wire).length-1) s2Step267EarlyControlLog.classWork=some s2Step267EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step267EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step267EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step267EarlyControlEqualityArena,s2Step267EarlyControlPositiveArena,s2Step267EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step267EarlyControl_classEqualityOwned : ([786, 891] : List Wire).toFinset⊆s2Step267EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_classEquality : compileHmrEqualityLog s2Step267EarlyControlPositiveArena [786, 891] 0 s2Step267EarlyControlLog.classWork=some (s2Step267EarlyControlEqualityArena,s2Step267EarlyControlLog.classWork,s2Step267EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step267EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step267EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step267EarlyControl_classOwned : ([777, 836, 786] : List Wire).toFinset⊆s2Step267EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_positiveBorrow : s2Step267EarlyControlZeroArena.checkBorrow (1) s2Step267EarlyControlLog.positiveWork=some s2Step267EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step267EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step267EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step267EarlyControlPositiveArena,s2Step267EarlyControlZeroArena,s2Step267EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step267EarlyControl_class : compileHmrSourceClassLog s2Step267EarlyControlZeroArena false 777 s2Step267EarlyControlZeroPlan.top 0 786 s2Step267EarlyControlLog.positiveWork s2Step267EarlyControlLog.classWork=some s2Step267EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step267EarlyControlClassPlan s2Step267EarlyControlZeroArena false 777 s2Step267EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step267EarlyControl_classOwned
  · exact s2Step267EarlyControl_positiveBorrow
  · exact s2Step267EarlyControl_classEquality

private theorem s2Step267EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step267EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step267EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_fitBorrow : s2Step267EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step267EarlyControlLog.recordFresh=some s2Step267EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step267EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step267EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
      decide +kernel
    · ext q
      simp [s2Step267EarlyControlFittedArena,s2Step267EarlyControlFlagArena,s2Step267EarlyControlLog,arenaWires]

private theorem s2Step267EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step267EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_fit : compileHmrRecordGrowLog s2Step267EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step267EarlyControlLog.recordFresh=some s2Step267EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step267EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step267EarlyControl_fitBorrow

private theorem s2Step267EarlyControl_flagsBorrow : s2Step267EarlyControlEqualityArena.checkBorrow (6) s2Step267EarlyControlLog.flagWork=some s2Step267EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step267EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step267EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step267EarlyControlFlagArena,s2Step267EarlyControlEqualityArena,s2Step267EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step267EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step267EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_flags : compileHmrFlagsLog s2Step267EarlyControlClassPlan.equalityArena s2Step267EarlyControlClassPlan.equality.top 253 252 251 s2Step267EarlyControlLog.flagWork=some s2Step267EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step267EarlyControl_flagsOwned⟩
  · exact s2Step267EarlyControl_flagsBorrow

private theorem s2Step267EarlyControl_historyBorrow : s2Step267EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step267EarlyControlLog.recordFresh=some s2Step267EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step267EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step267EarlyControlHistoryArena,s2Step267EarlyControlArena,s2Step267EarlyControlLog,arenaWires]

private theorem s2Step267EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step267EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_history : compileHmrRecordGrowLog s2Step267EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step267EarlyControlLog.recordFresh=some s2Step267EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step267EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step267EarlyControl_historyBorrow

private theorem s2Step267EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step267EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step267EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_sigmaRelease : s2Step267EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step267EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step267EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step267EarlyControlSigmaArena,s2Step267EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step267EarlyControl_sigma : compileHmrSigmaDropLog s2Step267EarlyControlHistoryArena false 0 0 254 786 []=some s2Step267EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step267EarlyControl_sigmaOwned⟩
  · exact s2Step267EarlyControl_sigmaRelease

private theorem s2Step267EarlyControl_zeroBorrow : s2Step267EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step267EarlyControlLog.zeroWork=some s2Step267EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step267EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step267EarlyControlZeroArena,s2Step267EarlyControlArena,s2Step267EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step267EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step267EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step267EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EarlyControl_zero : compileHmrEqualityLog s2Step267EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step267EarlyControlLog.zeroWork=some (s2Step267EarlyControlZeroArena,s2Step267EarlyControlLog.zeroWork,s2Step267EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step267EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step267EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step267EarlyControl_logged : s2Step267EarlyControlPlan.Logged s2Step267EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 786 254 253 252 251 788 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step267EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step267EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step267EarlyControl_zero
  · exact s2Step267EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step267EarlyControl_flags
  · exact s2Step267EarlyControl_fit
  · exact s2Step267EarlyControl_history
  · exact s2Step267EarlyControl_sigma
  · exact s2Step267EarlyControl_branch

private theorem s2Step267EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step267EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 786 254 253 252 251 788 52 s2Step267EarlyControlLog=some s2Step267EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step267EarlyControlPlan s2Step267EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 786 254 253 252 251 788 52 s2Step267EarlyControl_logged

private def s2Step267EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step267EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step267EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step267EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step267FrontBank : WindowBank := ⟨s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow⟩

private def s2Step267Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817, 768]

private def s2Step267Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844, 836, 769]

private def s2Step267Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 770]

private def s2Step267Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 771]

private theorem s2Step267Counter_apart : Disjoint s2Step267HeadFvAfter.live s2Step267CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step267HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Counter_borrowed : s2Step267HeadFvAfter.checkBorrow 4 s2Step267CounterWork=some s2Step267CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step267HeadFvAfter s2Step267CounterDuring s2Step267CounterWork.toFinset s2Step267Counter_bounded s2Step267Counter_apart rfl

private theorem s2Step267Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step267HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step267HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Counter_checked : compileHmrCounterStepLog s2Step267HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step267CounterWork=some s2Step267CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step267HeadFvAfter.live := fun q hq => s2Step267Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step267Counter_borrowed

private def s2Step267EntryFAfter : Arena := s2Step267EntryFBefore

private theorem s2Step267EntryBank_incomingDistinct : ([s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267EntryF_Incoming : rowsOwned s2Step267EntryFBefore [s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow] 0 s2Step267EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267EntryBank_outgoingOwned : rowsOwned s2Step267EntryGvAfter [s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step267EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267EntryF_Outgoing : rowsOwned s2Step267EntryGvAfter [s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] :=
  hmrRows_owned_drop s2Step267EntryGvAfter [s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] 0 s2Step267EntryBank_outgoingOwned

private theorem s2Step267EntryF_distinct : (s2Step267EntryFRow.sign::s2Step267EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267EntryF_owned : (s2Step267EntryFRow.sign::s2Step267EntryFRow.payload).toFinset⊆s2Step267EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EntryF_reserved : s2Step267EntryFBefore.reserve s2Step267EntryFFresh.toFinset=some s2Step267EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267EntryFFresh,arenaWires]
  · norm_num [s2Step267EntryFBefore,s2Step267EntryFFresh,arenaWires]
  · simp only [s2Step267EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step267EntryF_checked : planRowResizeLog s2Step267EntryFBefore s2Step267EntryFRow 138 s2Step267EntryFFresh=
    some (s2Step267EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩,growRow 768 s2Step267EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step267EntryFBefore s2Step267EntryFAfter s2Step267EntryFRow 138 s2Step267EntryFFresh
    s2Step267EntryF_distinct s2Step267EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267EntryF_reserved
  have rowEq : WindowRow.mk (s2Step267EntryFRow.payload++s2Step267EntryFFresh) s2Step267EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step267EntryFvAfter : Arena := s2Step267EntryGAfter

private def s2Step267EntryFvBefore : Arena := s2Step267EntryGAfter

private theorem s2Step267EntryFv_Incoming : rowsOwned s2Step267EntryFvBefore [s2Step267EntryFvRow,s2Step267EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow] 2 s2Step267EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267EntryFv_Outgoing : rowsOwned s2Step267EntryGvAfter [s2Step267EntryFvOut,s2Step267EntryGvOut] :=
  hmrRows_owned_drop s2Step267EntryGvAfter [s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] 2 s2Step267EntryBank_outgoingOwned

private theorem s2Step267EntryFv_distinct : (s2Step267EntryFvRow.sign::s2Step267EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267EntryFv_owned : (s2Step267EntryFvRow.sign::s2Step267EntryFvRow.payload).toFinset⊆s2Step267EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EntryFv_reserved : s2Step267EntryFvBefore.reserve s2Step267EntryFvFresh.toFinset=some s2Step267EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267EntryFvFresh,arenaWires]
  · norm_num [s2Step267EntryFvBefore,s2Step267EntryGAfter,s2Step267EntryFvFresh,arenaWires]
  · simp only [s2Step267EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step267EntryFv_checked : planRowResizeLog s2Step267EntryFvBefore s2Step267EntryFvRow 148 s2Step267EntryFvFresh=
    some (s2Step267EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩,growRow 770 s2Step267EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step267EntryFvBefore s2Step267EntryFvAfter s2Step267EntryFvRow 148 s2Step267EntryFvFresh
    s2Step267EntryFv_distinct s2Step267EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step267EntryFvRow.payload++s2Step267EntryFvFresh) s2Step267EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step267EntryGBefore : Arena := s2Step267EntryFBefore

private theorem s2Step267EntryG_Incoming : rowsOwned s2Step267EntryGBefore [s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow] 1 s2Step267EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267EntryG_Outgoing : rowsOwned s2Step267EntryGvAfter [s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] :=
  hmrRows_owned_drop s2Step267EntryGvAfter [s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] 1 s2Step267EntryBank_outgoingOwned

private theorem s2Step267EntryG_distinct : (s2Step267EntryGRow.sign::s2Step267EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267EntryG_owned : (s2Step267EntryGRow.sign::s2Step267EntryGRow.payload).toFinset⊆s2Step267EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EntryG_reserved : s2Step267EntryGBefore.reserve s2Step267EntryGFresh.toFinset=some s2Step267EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step267EntryGBefore,s2Step267EntryFBefore,s2Step267EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step267EntryGAfter,s2Step267EntryGBefore,s2Step267EntryFBefore,s2Step267EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267EntryG_checked : planRowResizeLog s2Step267EntryGBefore s2Step267EntryGRow 138 s2Step267EntryGFresh=
    some (s2Step267EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844],769⟩,growRow 769 s2Step267EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step267EntryGBefore s2Step267EntryGAfter s2Step267EntryGRow 138 s2Step267EntryGFresh
    s2Step267EntryG_distinct s2Step267EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267EntryG_reserved
  have rowEq : WindowRow.mk (s2Step267EntryGRow.payload++s2Step267EntryGFresh) s2Step267EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step267EntryGvBefore : Arena := s2Step267EntryGAfter

private theorem s2Step267EntryGv_Incoming : rowsOwned s2Step267EntryGvBefore [s2Step267EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow] 3 s2Step267EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267EntryGv_Outgoing : rowsOwned s2Step267EntryGvAfter [s2Step267EntryGvOut] :=
  hmrRows_owned_drop s2Step267EntryGvAfter [s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut] 3 s2Step267EntryBank_outgoingOwned

private theorem s2Step267EntryGv_distinct : (s2Step267EntryGvRow.sign::s2Step267EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267EntryGv_owned : (s2Step267EntryGvRow.sign::s2Step267EntryGvRow.payload).toFinset⊆s2Step267EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267EntryGv_reserved : s2Step267EntryGvBefore.reserve s2Step267EntryGvFresh.toFinset=some s2Step267EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267EntryGvFresh,arenaWires]
  · norm_num [s2Step267EntryGvBefore,s2Step267EntryGAfter,s2Step267EntryGvFresh,arenaWires]
  · simp only [s2Step267EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step267EntryGv_checked : planRowResizeLog s2Step267EntryGvBefore s2Step267EntryGvRow 148 s2Step267EntryGvFresh=
    some (s2Step267EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩,growRow 771 s2Step267EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step267EntryGvBefore s2Step267EntryGvAfter s2Step267EntryGvRow 148 s2Step267EntryGvFresh
    s2Step267EntryGv_distinct s2Step267EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step267EntryGvRow.payload++s2Step267EntryGvFresh) s2Step267EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step267EntryBank_rows : planWindowRowsLog s2Step267EntryFBefore [(s2Step267EntryFRow,138),(s2Step267EntryGRow,138),(s2Step267EntryFvRow,148),(s2Step267EntryGvRow,148)] [s2Step267EntryFFresh,s2Step267EntryGFresh,s2Step267EntryFvFresh,s2Step267EntryGvFresh]=
    some (s2Step267EntryGvAfter,[s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut],(growRow 768 s2Step267EntryFFresh ++ (growRow 769 s2Step267EntryGFresh ++ (growRow 770 s2Step267EntryFvFresh ++ (growRow 771 s2Step267EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step267EntryGvAfter [] []=some (s2Step267EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step267EntryGvBefore s2Step267EntryGvAfter s2Step267EntryGvAfter
    s2Step267EntryGvRow s2Step267EntryGvOut 148 s2Step267EntryGvFresh [] [] []
    (growRow 771 s2Step267EntryGvFresh) ([]) s2Step267EntryGv_Incoming s2Step267EntryGv_checked h4 s2Step267EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step267EntryFvBefore s2Step267EntryFvAfter s2Step267EntryGvAfter
    s2Step267EntryFvRow s2Step267EntryFvOut 148 s2Step267EntryFvFresh [(s2Step267EntryGvRow,148)] [s2Step267EntryGvFresh] [s2Step267EntryGvOut]
    (growRow 770 s2Step267EntryFvFresh) ((growRow 771 s2Step267EntryGvFresh ++ [])) s2Step267EntryFv_Incoming s2Step267EntryFv_checked h3 s2Step267EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step267EntryGBefore s2Step267EntryGAfter s2Step267EntryGvAfter
    s2Step267EntryGRow s2Step267EntryGOut 138 s2Step267EntryGFresh [(s2Step267EntryFvRow,148),(s2Step267EntryGvRow,148)] [s2Step267EntryFvFresh,s2Step267EntryGvFresh] [s2Step267EntryFvOut,s2Step267EntryGvOut]
    (growRow 769 s2Step267EntryGFresh) ((growRow 770 s2Step267EntryFvFresh ++ (growRow 771 s2Step267EntryGvFresh ++ []))) s2Step267EntryG_Incoming s2Step267EntryG_checked h2 s2Step267EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step267EntryFBefore s2Step267EntryFAfter s2Step267EntryGvAfter
    s2Step267EntryFRow s2Step267EntryFOut 138 s2Step267EntryFFresh [(s2Step267EntryGRow,138),(s2Step267EntryFvRow,148),(s2Step267EntryGvRow,148)] [s2Step267EntryGFresh,s2Step267EntryFvFresh,s2Step267EntryGvFresh] [s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut]
    (growRow 768 s2Step267EntryFFresh) ((growRow 769 s2Step267EntryGFresh ++ (growRow 770 s2Step267EntryFvFresh ++ (growRow 771 s2Step267EntryGvFresh ++ [])))) s2Step267EntryF_Incoming s2Step267EntryF_checked h1 s2Step267EntryF_Outgoing
  exact h0

private theorem s2Step267EntryBank_checked : compileHmrBankResizeLog .entry s2Step267EntryFBefore ⟨s2Step267EntryFRow,s2Step267EntryGRow,s2Step267EntryFvRow,s2Step267EntryGvRow⟩ ⟨138,138,148,148⟩ [s2Step267EntryFFresh,s2Step267EntryGFresh,s2Step267EntryFvFresh,s2Step267EntryGvFresh]=
    some (s2Step267EntryGvAfter,⟨s2Step267EntryFOut,s2Step267EntryGOut,s2Step267EntryFvOut,s2Step267EntryGvOut⟩,(growRow 768 s2Step267EntryFFresh ++ (growRow 769 s2Step267EntryGFresh ++ (growRow 770 s2Step267EntryFvFresh ++ (growRow 771 s2Step267EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step267EntryBank_rows]
  rfl

private def s2Step267ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267ExitFBefore : Arena := s2Step267ExitGAfter

private def s2Step267ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩

private def s2Step267ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩

private def s2Step267ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844, 836],769⟩

private def s2Step267ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩

private theorem s2Step267ExitBank_incomingDistinct : ([s2Step267ExitGRow,s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267ExitF_Incoming : rowsOwned s2Step267ExitFBefore [s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267ExitGRow,s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow] 1 s2Step267ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267ExitBank_outgoingOwned : rowsOwned s2Step267ExitGvAfter [s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step267ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267ExitF_Outgoing : rowsOwned s2Step267ExitGvAfter [s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] :=
  hmrRows_owned_drop s2Step267ExitGvAfter [s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] 1 s2Step267ExitBank_outgoingOwned

private theorem s2Step267ExitF_distinct : (s2Step267ExitFRow.sign::s2Step267ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267ExitF_owned : (s2Step267ExitFRow.sign::s2Step267ExitFRow.payload).toFinset⊆s2Step267ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267ExitF_retired : s2Step267ExitFBefore.retireSet s2Step267ExitFExtra.toFinset=s2Step267ExitFAfter := by
  unfold Arena.retireSet s2Step267ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step267ExitFBefore,s2Step267ExitGAfter,s2Step267ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step267ExitF_checked : planRowResizeLog s2Step267ExitFBefore s2Step267ExitFRow 138 []=
    some (s2Step267ExitFAfter,s2Step267ExitFOut,shrinkRow 768 s2Step267ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step267ExitFBefore s2Step267ExitFRow 138 s2Step267ExitF_distinct s2Step267ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step267ExitFRow.payload.take 138) s2Step267ExitFRow.sign=s2Step267ExitFOut := by decide +kernel
  have hi : s2Step267ExitFRow.payload.drop 138=s2Step267ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step267ExitF_retired] at result
  exact result

private def s2Step267ExitFvAfter : Arena := s2Step267ExitFAfter

private def s2Step267ExitFvBefore : Arena := s2Step267ExitFAfter

private theorem s2Step267ExitFv_Incoming : rowsOwned s2Step267ExitFvBefore [s2Step267ExitFvRow,s2Step267ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267ExitGRow,s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow] 2 s2Step267ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267ExitFv_Outgoing : rowsOwned s2Step267ExitGvAfter [s2Step267ExitFvOut,s2Step267ExitGvOut] :=
  hmrRows_owned_drop s2Step267ExitGvAfter [s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] 2 s2Step267ExitBank_outgoingOwned

private theorem s2Step267ExitFv_distinct : (s2Step267ExitFvRow.sign::s2Step267ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267ExitFv_owned : (s2Step267ExitFvRow.sign::s2Step267ExitFvRow.payload).toFinset⊆s2Step267ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267ExitFv_reserved : s2Step267ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step267ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step267ExitFv_checked : planRowResizeLog s2Step267ExitFvBefore s2Step267ExitFvRow 149 []=
    some (s2Step267ExitFvAfter,s2Step267ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step267ExitFvBefore s2Step267ExitFvAfter s2Step267ExitFvRow 149 []
    s2Step267ExitFv_distinct s2Step267ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step267ExitFvRow.payload++[]) s2Step267ExitFvRow.sign=s2Step267ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step267ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step267ExitG_Incoming : rowsOwned s2Step267ExitGBefore [s2Step267ExitGRow,s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267ExitGRow,s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow] 0 s2Step267ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267ExitG_Outgoing : rowsOwned s2Step267ExitGvAfter [s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] :=
  hmrRows_owned_drop s2Step267ExitGvAfter [s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] 0 s2Step267ExitBank_outgoingOwned

private theorem s2Step267ExitG_distinct : (s2Step267ExitGRow.sign::s2Step267ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267ExitG_owned : (s2Step267ExitGRow.sign::s2Step267ExitGRow.payload).toFinset⊆s2Step267ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267ExitG_retired : s2Step267ExitGBefore.retireSet s2Step267ExitGExtra.toFinset=s2Step267ExitGAfter := by
  unfold Arena.retireSet s2Step267ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step267ExitGBefore,s2Step267ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step267ExitG_checked : planRowResizeLog s2Step267ExitGBefore s2Step267ExitGRow 136 []=
    some (s2Step267ExitGAfter,s2Step267ExitGOut,shrinkRow 769 s2Step267ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step267ExitGBefore s2Step267ExitGRow 136 s2Step267ExitG_distinct s2Step267ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step267ExitGRow.payload.take 136) s2Step267ExitGRow.sign=s2Step267ExitGOut := by decide +kernel
  have hi : s2Step267ExitGRow.payload.drop 136=s2Step267ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step267ExitG_retired] at result
  exact result

private def s2Step267ExitGvBefore : Arena := s2Step267ExitFAfter

private theorem s2Step267ExitGv_Incoming : rowsOwned s2Step267ExitGvBefore [s2Step267ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267ExitGRow,s2Step267ExitFRow,s2Step267ExitFvRow,s2Step267ExitGvRow] 3 s2Step267ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267ExitGv_Outgoing : rowsOwned s2Step267ExitGvAfter [s2Step267ExitGvOut] :=
  hmrRows_owned_drop s2Step267ExitGvAfter [s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut] 3 s2Step267ExitBank_outgoingOwned

private theorem s2Step267ExitGv_distinct : (s2Step267ExitGvRow.sign::s2Step267ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267ExitGv_owned : (s2Step267ExitGvRow.sign::s2Step267ExitGvRow.payload).toFinset⊆s2Step267ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267ExitGv_retired : s2Step267ExitGvBefore.retireSet s2Step267ExitGvExtra.toFinset=s2Step267ExitGvAfter := by
  unfold Arena.retireSet s2Step267ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step267ExitGvBefore,s2Step267ExitFAfter,s2Step267ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step267ExitGv_checked : planRowResizeLog s2Step267ExitGvBefore s2Step267ExitGvRow 148 []=
    some (s2Step267ExitGvAfter,s2Step267ExitGvOut,shrinkRow 771 s2Step267ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step267ExitGvBefore s2Step267ExitGvRow 148 s2Step267ExitGv_distinct s2Step267ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step267ExitGvRow.payload.take 148) s2Step267ExitGvRow.sign=s2Step267ExitGvOut := by decide +kernel
  have hi : s2Step267ExitGvRow.payload.drop 148=s2Step267ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step267ExitGv_retired] at result
  exact result

private theorem s2Step267ExitBank_rows : planWindowRowsLog s2Step267ExitGBefore [(s2Step267ExitGRow,136),(s2Step267ExitFRow,138),(s2Step267ExitFvRow,149),(s2Step267ExitGvRow,148)] [[],[],[],[]]=
    some (s2Step267ExitGvAfter,[s2Step267ExitGOut,s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut],(shrinkRow 769 s2Step267ExitGExtra ++ (shrinkRow 768 s2Step267ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step267ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step267ExitGvAfter [] []=some (s2Step267ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step267ExitGvBefore s2Step267ExitGvAfter s2Step267ExitGvAfter
    s2Step267ExitGvRow s2Step267ExitGvOut 148 [] [] [] []
    (shrinkRow 771 s2Step267ExitGvExtra) ([]) s2Step267ExitGv_Incoming s2Step267ExitGv_checked h4 s2Step267ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step267ExitFvBefore s2Step267ExitFvAfter s2Step267ExitGvAfter
    s2Step267ExitFvRow s2Step267ExitFvOut 149 [] [(s2Step267ExitGvRow,148)] [[]] [s2Step267ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step267ExitGvExtra ++ [])) s2Step267ExitFv_Incoming s2Step267ExitFv_checked h3 s2Step267ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step267ExitFBefore s2Step267ExitFAfter s2Step267ExitGvAfter
    s2Step267ExitFRow s2Step267ExitFOut 138 [] [(s2Step267ExitFvRow,149),(s2Step267ExitGvRow,148)] [[],[]] [s2Step267ExitFvOut,s2Step267ExitGvOut]
    (shrinkRow 768 s2Step267ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step267ExitGvExtra ++ []))) s2Step267ExitF_Incoming s2Step267ExitF_checked h2 s2Step267ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step267ExitGBefore s2Step267ExitGAfter s2Step267ExitGvAfter
    s2Step267ExitGRow s2Step267ExitGOut 136 [] [(s2Step267ExitFRow,138),(s2Step267ExitFvRow,149),(s2Step267ExitGvRow,148)] [[],[],[]] [s2Step267ExitFOut,s2Step267ExitFvOut,s2Step267ExitGvOut]
    (shrinkRow 769 s2Step267ExitGExtra) ((shrinkRow 768 s2Step267ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step267ExitGvExtra ++ [])))) s2Step267ExitG_Incoming s2Step267ExitG_checked h1 s2Step267ExitG_Outgoing
  exact h0

private theorem s2Step267ExitBank_checked : compileHmrBankResizeLog .exit s2Step267ExitGBefore ⟨s2Step267ExitFRow,s2Step267ExitGRow,s2Step267ExitFvRow,s2Step267ExitGvRow⟩ ⟨138,136,149,148⟩ [[],[],[],[]]=
    some (s2Step267ExitGvAfter,⟨s2Step267ExitFOut,s2Step267ExitGOut,s2Step267ExitFvOut,s2Step267ExitGvOut⟩,(shrinkRow 769 s2Step267ExitGExtra ++ (shrinkRow 768 s2Step267ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step267ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step267ExitBank_rows]
  rfl

private theorem s2Step267Add0_apart : Disjoint s2Step267Add0Arena.live s2Step267Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step267Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Add0_card : s2Step267Add0Arena.live.card=898 := by
  decide +kernel

private theorem s2Step267Add0_borrowed : s2Step267Add0Arena.checkBorrow (hmrHybridCount s2Step267Add0Arena s2Step267Add0B.length) s2Step267Add0Work=some s2Step267Add0During := by
  have len : s2Step267Add0Work.length=hmrHybridCount s2Step267Add0Arena s2Step267Add0B.length := by
    rw [hmrHybridCount,s2Step267Add0_card]
    decide +kernel
  have nd : s2Step267Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step267Add0Arena s2Step267Add0During s2Step267Add0Work.toFinset s2Step267Add0_bounded s2Step267Add0_apart rfl

private theorem s2Step267Add0_distinct : (891::788::794::(s2Step267Add0A++s2Step267Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267Add0_owned : (891::788::794::(s2Step267Add0A++s2Step267Add0B)).toFinset⊆s2Step267Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step267Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Add0_checked : compileHmrHybridCinLog s2Step267Add0Arena 788 891 794 s2Step267Add0A s2Step267Add0B s2Step267Add0Work=some s2Step267Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step267Add0Arena s2Step267Add0During 788 891 794 s2Step267Add0A s2Step267Add0B s2Step267Add0Work
    (by decide +kernel) (by decide +kernel) s2Step267Add0_distinct
    (fun q hq => s2Step267Add0_owned (List.mem_toFinset.mpr hq)) s2Step267Add0_borrowed

private theorem s2Step267Add1_apart : Disjoint s2Step267Add1Arena.live s2Step267Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step267Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Add1_card : s2Step267Add1Arena.live.card=898 := by
  decide +kernel

private theorem s2Step267Add1_borrowed : s2Step267Add1Arena.checkBorrow (hmrHybridCount s2Step267Add1Arena s2Step267Add1B.length) s2Step267Add1Work=some s2Step267Add1During := by
  have len : s2Step267Add1Work.length=hmrHybridCount s2Step267Add1Arena s2Step267Add1B.length := by
    rw [hmrHybridCount,s2Step267Add1_card]
    decide +kernel
  have nd : s2Step267Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step267Add1Arena s2Step267Add1During s2Step267Add1Work.toFinset s2Step267Add1_bounded s2Step267Add1_apart rfl

private theorem s2Step267Add1_distinct : (891::788::794::(s2Step267Add1A++s2Step267Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267Add1_owned : (891::788::794::(s2Step267Add1A++s2Step267Add1B)).toFinset⊆s2Step267Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step267Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267Add1_checked : compileHmrHybridCinLog s2Step267Add1Arena 788 891 794 s2Step267Add1A s2Step267Add1B s2Step267Add1Work=some s2Step267Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step267Add1Arena s2Step267Add1During 788 891 794 s2Step267Add1A s2Step267Add1B s2Step267Add1Work
    (by decide +kernel) (by decide +kernel) s2Step267Add1_distinct
    (fun q hq => s2Step267Add1_owned (List.mem_toFinset.mpr hq)) s2Step267Add1_borrowed

private theorem s2Step267F4_apart : Disjoint (s2Step267Add0A++s2Step267Add0B).toFinset (s2Step267Add1A++s2Step267Add1B).toFinset := by
  have nd : ((s2Step267Add0A++s2Step267Add0B)++(s2Step267Add1A++s2Step267Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step267F4_carry : s2Step267F4FlagArena.checkBorrow 1 [794]=some s2Step267Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step267F4FlagArena,s2Step267HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step267F4FlagArena,s2Step267HeadFvAfter,s2Step267Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267F4_distinct : (786::788::891::794::((s2Step267Add0A++s2Step267Add1A)++(s2Step267Add0B++s2Step267Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267F4_flag : s2Step267HeadFvAfter.checkBorrow 1 [891]=some s2Step267F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step267HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step267F4_owned : (786::788::((s2Step267Add0A++s2Step267Add1A)++(s2Step267Add0B++s2Step267Add1B))).toFinset⊆s2Step267HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step267HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267F4_checked : compileHmrHybridF4Log s2Step267HeadFvAfter 786 788 s2Step267Add0A s2Step267Add0B s2Step267Add1A s2Step267Add1B [891] [794] s2Step267Add0Work s2Step267Add1Work=some s2Step267F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step267HeadFvAfter s2Step267F4FlagArena s2Step267Add0Arena s2Step267Add0During s2Step267Add1During 786 788
    s2Step267Add0A s2Step267Add0B s2Step267Add1A s2Step267Add1B [891] [794] s2Step267Add0Work s2Step267Add1Work
    (fun q hq => s2Step267F4_owned (List.mem_toFinset.mpr hq)) s2Step267F4_flag s2Step267F4_carry
    s2Step267F4_distinct s2Step267F4_apart s2Step267Add0_checked s2Step267Add1_checked

private theorem s2Step267Front_branch : s2Step267FrontSigmaArena.checkBorrow 1 [788]=some s2Step267HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step267FrontSigmaArena,s2Step267EntryGvAfter,s2Step267EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step267FrontSigmaArena,s2Step267EntryGvAfter,s2Step267EntryGAfter,s2Step267HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267Front_entry : HmrFrontEntryValid s2Step267EntryFBefore s2Step267FrontBank 138 148 ⟨138,136,149,148⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step267FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step267EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step267EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step267FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step267Front_sigma : s2Step267EntryGvAfter.checkBorrow 1 [786]=some s2Step267FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step267EntryGvAfter,s2Step267EntryGAfter,arenaWires]
  · rfl

private def s2Step267HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267HeadFBefore : Arena := s2Step267HeadGAfter

private def s2Step267HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step267HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step267HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844],769⟩

private def s2Step267HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private theorem s2Step267HeadBank_incomingDistinct : ([s2Step267HeadGRow,s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267HeadF_Incoming : rowsOwned s2Step267HeadFBefore [s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267HeadGRow,s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow] 1 s2Step267HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267HeadBank_outgoingOwned : rowsOwned s2Step267HeadFvAfter [s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step267HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267HeadF_Outgoing : rowsOwned s2Step267HeadFvAfter [s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] :=
  hmrRows_owned_drop s2Step267HeadFvAfter [s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] 1 s2Step267HeadBank_outgoingOwned

private theorem s2Step267HeadF_distinct : (s2Step267HeadFRow.sign::s2Step267HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267HeadF_owned : (s2Step267HeadFRow.sign::s2Step267HeadFRow.payload).toFinset⊆s2Step267HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267HeadF_reserved : s2Step267HeadFBefore.reserve s2Step267HeadFFresh.toFinset=some s2Step267HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267HeadFFresh,arenaWires]
  · norm_num [s2Step267HeadFBefore,s2Step267HeadGAfter,s2Step267HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step267HeadFAfter,s2Step267HeadFBefore,s2Step267HeadGAfter,s2Step267HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267HeadF_checked : planRowResizeLog s2Step267HeadFBefore s2Step267HeadFRow 139 s2Step267HeadFFresh=
    some (s2Step267HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩,growRow 768 s2Step267HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step267HeadFBefore s2Step267HeadFAfter s2Step267HeadFRow 139 s2Step267HeadFFresh
    s2Step267HeadF_distinct s2Step267HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267HeadF_reserved
  have rowEq : WindowRow.mk (s2Step267HeadFRow.payload++s2Step267HeadFFresh) s2Step267HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step267HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step267HeadFvBefore : Arena := s2Step267HeadGvAfter

private theorem s2Step267HeadFv_Incoming : rowsOwned s2Step267HeadFvBefore [s2Step267HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267HeadGRow,s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow] 3 s2Step267HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267HeadFv_Outgoing : rowsOwned s2Step267HeadFvAfter [s2Step267HeadFvOut] :=
  hmrRows_owned_drop s2Step267HeadFvAfter [s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] 3 s2Step267HeadBank_outgoingOwned

private theorem s2Step267HeadFv_distinct : (s2Step267HeadFvRow.sign::s2Step267HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267HeadFv_owned : (s2Step267HeadFvRow.sign::s2Step267HeadFvRow.payload).toFinset⊆s2Step267HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267HeadFv_reserved : s2Step267HeadFvBefore.reserve s2Step267HeadFvFresh.toFinset=some s2Step267HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267HeadFvFresh,arenaWires]
  · norm_num [s2Step267HeadFvBefore,s2Step267HeadGvAfter,s2Step267HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step267HeadFvAfter,s2Step267HeadFvBefore,s2Step267HeadGvAfter,s2Step267HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267HeadFv_checked : planRowResizeLog s2Step267HeadFvBefore s2Step267HeadFvRow 149 s2Step267HeadFvFresh=
    some (s2Step267HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩,growRow 770 s2Step267HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step267HeadFvBefore s2Step267HeadFvAfter s2Step267HeadFvRow 149 s2Step267HeadFvFresh
    s2Step267HeadFv_distinct s2Step267HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step267HeadFvRow.payload++s2Step267HeadFvFresh) s2Step267HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step267HeadG_Incoming : rowsOwned s2Step267HeadGBefore [s2Step267HeadGRow,s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267HeadGRow,s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow] 0 s2Step267HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267HeadG_Outgoing : rowsOwned s2Step267HeadFvAfter [s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] :=
  hmrRows_owned_drop s2Step267HeadFvAfter [s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] 0 s2Step267HeadBank_outgoingOwned

private theorem s2Step267HeadG_distinct : (s2Step267HeadGRow.sign::s2Step267HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267HeadG_owned : (s2Step267HeadGRow.sign::s2Step267HeadGRow.payload).toFinset⊆s2Step267HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267HeadG_reserved : s2Step267HeadGBefore.reserve s2Step267HeadGFresh.toFinset=some s2Step267HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267HeadGFresh,arenaWires]
  · norm_num [s2Step267HeadGBefore,s2Step267HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step267HeadGAfter,s2Step267HeadGBefore,s2Step267HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267HeadG_checked : planRowResizeLog s2Step267HeadGBefore s2Step267HeadGRow 139 s2Step267HeadGFresh=
    some (s2Step267HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844, 836],769⟩,growRow 769 s2Step267HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step267HeadGBefore s2Step267HeadGAfter s2Step267HeadGRow 139 s2Step267HeadGFresh
    s2Step267HeadG_distinct s2Step267HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267HeadG_reserved
  have rowEq : WindowRow.mk (s2Step267HeadGRow.payload++s2Step267HeadGFresh) s2Step267HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 779, 844, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step267HeadGvBefore : Arena := s2Step267HeadFAfter

private theorem s2Step267HeadGv_Incoming : rowsOwned s2Step267HeadGvBefore [s2Step267HeadGvRow,s2Step267HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step267HeadGRow,s2Step267HeadFRow,s2Step267HeadGvRow,s2Step267HeadFvRow] 2 s2Step267HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step267HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step267HeadGv_Outgoing : rowsOwned s2Step267HeadFvAfter [s2Step267HeadGvOut,s2Step267HeadFvOut] :=
  hmrRows_owned_drop s2Step267HeadFvAfter [s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut] 2 s2Step267HeadBank_outgoingOwned

private theorem s2Step267HeadGv_distinct : (s2Step267HeadGvRow.sign::s2Step267HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step267HeadGv_owned : (s2Step267HeadGvRow.sign::s2Step267HeadGvRow.payload).toFinset⊆s2Step267HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step267HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step267HeadGv_reserved : s2Step267HeadGvBefore.reserve s2Step267HeadGvFresh.toFinset=some s2Step267HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step267HeadGvFresh,arenaWires]
  · norm_num [s2Step267HeadGvBefore,s2Step267HeadFAfter,s2Step267HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step267HeadGvAfter,s2Step267HeadGvBefore,s2Step267HeadFAfter,s2Step267HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step267HeadGv_checked : planRowResizeLog s2Step267HeadGvBefore s2Step267HeadGvRow 149 s2Step267HeadGvFresh=
    some (s2Step267HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩,growRow 771 s2Step267HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step267HeadGvBefore s2Step267HeadGvAfter s2Step267HeadGvRow 149 s2Step267HeadGvFresh
    s2Step267HeadGv_distinct s2Step267HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step267HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step267HeadGvRow.payload++s2Step267HeadGvFresh) s2Step267HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step267HeadBank_rows : planWindowRowsLog s2Step267HeadGBefore [(s2Step267HeadGRow,139),(s2Step267HeadFRow,139),(s2Step267HeadGvRow,149),(s2Step267HeadFvRow,149)] [s2Step267HeadGFresh,s2Step267HeadFFresh,s2Step267HeadGvFresh,s2Step267HeadFvFresh]=
    some (s2Step267HeadFvAfter,[s2Step267HeadGOut,s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut],(growRow 769 s2Step267HeadGFresh ++ (growRow 768 s2Step267HeadFFresh ++ (growRow 771 s2Step267HeadGvFresh ++ (growRow 770 s2Step267HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step267HeadFvAfter [] []=some (s2Step267HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step267HeadFvBefore s2Step267HeadFvAfter s2Step267HeadFvAfter
    s2Step267HeadFvRow s2Step267HeadFvOut 149 s2Step267HeadFvFresh [] [] []
    (growRow 770 s2Step267HeadFvFresh) ([]) s2Step267HeadFv_Incoming s2Step267HeadFv_checked h4 s2Step267HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step267HeadGvBefore s2Step267HeadGvAfter s2Step267HeadFvAfter
    s2Step267HeadGvRow s2Step267HeadGvOut 149 s2Step267HeadGvFresh [(s2Step267HeadFvRow,149)] [s2Step267HeadFvFresh] [s2Step267HeadFvOut]
    (growRow 771 s2Step267HeadGvFresh) ((growRow 770 s2Step267HeadFvFresh ++ [])) s2Step267HeadGv_Incoming s2Step267HeadGv_checked h3 s2Step267HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step267HeadFBefore s2Step267HeadFAfter s2Step267HeadFvAfter
    s2Step267HeadFRow s2Step267HeadFOut 139 s2Step267HeadFFresh [(s2Step267HeadGvRow,149),(s2Step267HeadFvRow,149)] [s2Step267HeadGvFresh,s2Step267HeadFvFresh] [s2Step267HeadGvOut,s2Step267HeadFvOut]
    (growRow 768 s2Step267HeadFFresh) ((growRow 771 s2Step267HeadGvFresh ++ (growRow 770 s2Step267HeadFvFresh ++ []))) s2Step267HeadF_Incoming s2Step267HeadF_checked h2 s2Step267HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step267HeadGBefore s2Step267HeadGAfter s2Step267HeadFvAfter
    s2Step267HeadGRow s2Step267HeadGOut 139 s2Step267HeadGFresh [(s2Step267HeadFRow,139),(s2Step267HeadGvRow,149),(s2Step267HeadFvRow,149)] [s2Step267HeadFFresh,s2Step267HeadGvFresh,s2Step267HeadFvFresh] [s2Step267HeadFOut,s2Step267HeadGvOut,s2Step267HeadFvOut]
    (growRow 769 s2Step267HeadGFresh) ((growRow 768 s2Step267HeadFFresh ++ (growRow 771 s2Step267HeadGvFresh ++ (growRow 770 s2Step267HeadFvFresh ++ [])))) s2Step267HeadG_Incoming s2Step267HeadG_checked h1 s2Step267HeadG_Outgoing
  exact h0

private theorem s2Step267HeadBank_checked : compileHmrBankResizeLog .headroom s2Step267HeadGBefore ⟨s2Step267HeadFRow,s2Step267HeadGRow,s2Step267HeadFvRow,s2Step267HeadGvRow⟩ ⟨139,139,149,149⟩ [s2Step267HeadGFresh,s2Step267HeadFFresh,s2Step267HeadGvFresh,s2Step267HeadFvFresh]=
    some (s2Step267HeadFvAfter,⟨s2Step267HeadFOut,s2Step267HeadGOut,s2Step267HeadFvOut,s2Step267HeadGvOut⟩,(growRow 769 s2Step267HeadGFresh ++ (growRow 768 s2Step267HeadFFresh ++ (growRow 771 s2Step267HeadGvFresh ++ (growRow 770 s2Step267HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step267HeadBank_rows]
  rfl

private theorem s2Step267Front_checked : compileHmrSourceFrontLog s2Step267EntryFBefore s2Step267FrontBank 138 148 ⟨138,136,149,148⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step267FrontLog=some s2Step267FrontPlan := by
  have pairEq : s2Step267FrontPair=⟨s2Step267HeadFRow,s2Step267HeadGRow,s2Step267HeadFvRow,s2Step267HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step267FrontHead=⟨s2Step267ExitFRow,s2Step267ExitGRow,s2Step267ExitFvRow,s2Step267ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step267Add0A=s2Step267FrontHead.f.wires := by decide +kernel
  have gEq : s2Step267Add0B=s2Step267FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step267Add1A=s2Step267FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step267Add1B=s2Step267FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step267EntryFBefore s2Step267FrontBank 138 148 ⟨138,136,149,148⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step267FrontLog s2Step267FrontPlan
  · exact s2Step267Front_entry
  · exact s2Step267EntryBank_checked
  · exact s2Step267Front_sigma
  · rfl
  · exact s2Step267Front_branch
  · rfl
  · simpa only [s2Step267FrontPlan,pairEq] using s2Step267HeadBank_checked
  · simpa only [s2Step267FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step267F4_checked
  · exact s2Step267Counter_checked
  · rfl
  · simpa only [s2Step267FrontPlan,headEq] using s2Step267ExitBank_checked

private theorem s2Step267Complete_explicit_checked : compileHmrEarlyStepLog s2Step267EntryFBefore s2Step267FrontBank 138 148 ⟨138,136,149,148⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step267CompleteLog=some s2Step267CompletePlan := by
  let Q := s2Step267EarlyControlPlan
  have hq := s2Step267EarlyControl_plan_checked
  have fv1 : s2Step267CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step267CompleteOut.fv.payload[2]?.getD s2Step267CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step267CompleteOut.fv.payload[3]?.getD s2Step267CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step267CompleteOut.fv.payload[4]?.getD s2Step267CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step267EntryFBefore s2Step267EarlyControlArena s2Step267FrontBank 138 148 ⟨138,136,149,148⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step267CompleteLog s2Step267FrontPlan Q
    s2Step267Front_checked s2Step267Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step267Complete_owned s2Step267Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step267EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 786 s2Step267CompleteOut.fv.second (s2Step267CompleteOut.fv.payload[2]?.getD s2Step267CompleteOut.fv.sign) (s2Step267CompleteOut.fv.payload[3]?.getD s2Step267CompleteOut.fv.sign) (s2Step267CompleteOut.fv.payload[4]?.getD s2Step267CompleteOut.fv.sign) 788 52 s2Step267EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep267Arena : Arena := s2Step267EntryFBefore
def s2PrivateStep267Bank : WindowBank := s2Step267FrontBank
def s2PrivateStep267Spec : HmrSourceWalkStepLog := ⟨138,148,⟨138,136,149,148⟩,52,.early s2Step267CompleteLog⟩
def s2PrivateStep267Plan : HmrSourceStepPlan := .early s2Step267CompletePlan
theorem s2PrivateStep267_source : s2PrivateStep267Spec=s2ObservedLogs256[11] := rfl
theorem s2PrivateStep267_checked : compileHmrSourceStepLog s2PrivateStep267Arena s2PrivateStep267Bank
    s2PrivateStep267Spec.fgWidth s2PrivateStep267Spec.vWidth s2PrivateStep267Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 267 s2PrivateStep267Spec.need none s2PrivateStep267Spec.log=some s2PrivateStep267Plan := by
  change compileHmrSourceStepLog s2Step267EntryFBefore s2Step267FrontBank 138 148 ⟨138,136,149,148⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 267 52 none (.early s2Step267CompleteLog)=some (.early s2Step267CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 267<498)]
  rw [s2Step267Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
