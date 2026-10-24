import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep227
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

private def s2Step229CompleteMoves : List (Wire × Wire) := [(805,667)]

private def s2Step229EarlyControlLog : HmrEarlyControlLog := ⟨[805, 800, 849, 804, 809],[797],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step229FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [809], [], []],[[797], [804], [800], [849]],[[], [], [], []]⟩,[810],[820],[814],[882],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step229CompleteLog : HmrEarlyStepLog := ⟨s2Step229FrontLog,s2Step229CompleteMoves,s2Step229EarlyControlLog⟩

private def s2Step229ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step229ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step229ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩

private def s2Step229ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step229FrontOut : WindowBank := ⟨s2Step229ExitFOut,s2Step229ExitGOut,s2Step229ExitFvOut,s2Step229ExitGvOut⟩

private def s2Step229CompleteOut : WindowBank := s2Step229FrontOut.repacked s2Step229CompleteMoves

private def s2Step229EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step229EarlyControlPositiveArena,[797],s2Step229EarlyControlEqualityArena,[814],⟨⟨810,false⟩,[⟨⟨797,false⟩,814⟩]⟩⟩

private def s2Step229EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,800⟩,⟨⟨775,false⟩,849⟩,⟨⟨776,false⟩,804⟩,⟨⟨777,false⟩,809⟩]⟩

private def s2Step229EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step229EarlyControlZeroArena,s2Step229EarlyControlZeroPlan,s2Step229EarlyControlClassPlan,s2Step229EarlyControlFlagArena,s2Step229EarlyControlFittedArena,s2Step229EarlyControlHistoryArena,s2Step229EarlyControlSigmaArena,s2Step229EarlyControlOutputArena,s2Step229EarlyControlLog⟩

private def s2Step229CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step229Counter_bounded : s2Step229CounterWork.toFinset⊆arenaWires := by norm_num [s2Step229CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step229HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229CounterDuring : Arena := ⟨s2Step229HeadFvAfter.live∪s2Step229CounterWork.toFinset,Finset.union_subset s2Step229HeadFvAfter.bounded s2Step229Counter_bounded⟩

private def s2Step229EntryFFresh : List Wire := []

private def s2Step229EntryFvFresh : List Wire := []

private def s2Step229EntryGFresh : List Wire := [809]

private def s2Step229EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EntryGvAfter : Arena := s2Step229EntryGAfter

private def s2Step229EntryGvFresh : List Wire := []

private def s2Step229ExitFExtra : List Wire := [667, 804]

private def s2Step229ExitFvExtra : List Wire := [849]

private def s2Step229ExitGExtra : List Wire := [809, 797]

private def s2Step229ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229ExitGvExtra : List Wire := [800]

private def s2Step229Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229Add0Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step229Add0_bounded : s2Step229Add0Work.toFinset⊆arenaWires := by
  have h : s2Step229Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step229Add0During : Arena := ⟨s2Step229Add0Arena.live∪s2Step229Add0Work.toFinset,Finset.union_subset s2Step229Add0Arena.bounded s2Step229Add0_bounded⟩

private def s2Step229Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229Add1Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step229Add1_bounded : s2Step229Add1Work.toFinset⊆arenaWires := by
  have h : s2Step229Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step229Add1During : Arena := ⟨s2Step229Add1Arena.live∪s2Step229Add1Work.toFinset,Finset.union_subset s2Step229Add1Arena.bounded s2Step229Add1_bounded⟩

private def s2Step229F4FlagArena : Arena := ⟨s2Step229HeadFvAfter.live∪{814},Finset.union_subset s2Step229HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step229F4Plan : HmrHybridF4Plan := ⟨s2Step229F4FlagArena,[814],s2Step229Add0Arena,[882],s2Step229Add0During,s2Step229Add0Work,s2Step229Add1During,s2Step229Add1Work⟩

private def s2Step229HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 804],768⟩

private def s2Step229HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 849],770⟩

private def s2Step229HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809, 797],769⟩

private def s2Step229HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 800],771⟩

private def s2Step229FrontHead : WindowBank := ⟨s2Step229HeadFOut,s2Step229HeadGOut,s2Step229HeadFvOut,s2Step229HeadGvOut⟩

private def s2Step229EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step229EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step229EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809],769⟩

private def s2Step229EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step229FrontPair : WindowBank := ⟨s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut⟩

private def s2Step229FrontSigmaArena : Arena := ⟨s2Step229EntryGvAfter.live∪{810},Finset.union_subset s2Step229EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step229HeadFFresh : List Wire := [804]

private def s2Step229HeadFvFresh : List Wire := [849]

private def s2Step229HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229HeadGFresh : List Wire := [797]

private def s2Step229HeadGvFresh : List Wire := [800]

private def s2Step229FrontPlan : HmrSourceFront := ⟨s2Step229EntryGvAfter,s2Step229FrontPair,(growRow 768 s2Step229EntryFFresh ++ (growRow 769 s2Step229EntryGFresh ++ (growRow 770 s2Step229EntryFvFresh ++ (growRow 771 s2Step229EntryGvFresh ++ [])))),s2Step229FrontSigmaArena,[810],s2Step229HeadGBefore,[820],
  s2Step229HeadFvAfter,s2Step229FrontHead,(growRow 769 s2Step229HeadGFresh ++ (growRow 768 s2Step229HeadFFresh ++ (growRow 771 s2Step229HeadGvFresh ++ (growRow 770 s2Step229HeadFvFresh ++ [])))),s2Step229F4Plan,s2Step229CounterDuring,s2Step229CounterWork,s2Step229ExitGvAfter,s2Step229FrontOut,(shrinkRow 769 s2Step229ExitGExtra ++ (shrinkRow 768 s2Step229ExitFExtra ++ (shrinkRow 770 s2Step229ExitFvExtra ++ (shrinkRow 771 s2Step229ExitGvExtra ++ []))))⟩

private def s2Step229CompletePlan : HmrEarlyStepPlan := ⟨s2Step229FrontPlan,s2Step229EarlyControlArena,s2Step229EarlyControlPlan,s2Step229CompleteMoves⟩

private theorem s2Step229Complete_apart : List.Disjoint (s2Step229CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step229CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step229Complete_owned : (s2Step229CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step229EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step229CompleteMoveArena : Arena := ⟨s2Step229ExitGvAfter.live∪{667},Finset.union_subset s2Step229ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step229Complete_repack : s2Step229ExitGvAfter.checkRepack s2Step229CompleteMoves=some s2Step229EarlyControlArena := by
  have owned : 805∈s2Step229ExitGvAfter.live := by norm_num [s2Step229ExitGvAfter,arenaWires]
  have reserve : s2Step229ExitGvAfter.reserve {667}=some s2Step229CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step229ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step229CompleteMoveArena.retireSet {805}=s2Step229EarlyControlArena := by
    unfold Arena.retireSet s2Step229EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step229CompleteMoveArena,s2Step229ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step229CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step229CompleteMoveArena.retireSet {805}).checkRepack []=some s2Step229EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step229EarlyControl_branchOwned : ([820] : List Wire).toFinset⊆s2Step229EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlSigmaArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_branch : compileHmrBranchRetirement s2Step229EarlyControlSigmaArena 820=some s2Step229EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step229EarlyControl_branchOwned
  · ext q
    simp [s2Step229EarlyControlOutputArena,s2Step229EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step229EarlyControl_classEqualityBorrow : s2Step229EarlyControlPositiveArena.checkBorrow (([810, 797] : List Wire).length-1) s2Step229EarlyControlLog.classWork=some s2Step229EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step229EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step229EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step229EarlyControlEqualityArena,s2Step229EarlyControlPositiveArena,s2Step229EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step229EarlyControl_classEqualityOwned : ([810, 797] : List Wire).toFinset⊆s2Step229EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_classEquality : compileHmrEqualityLog s2Step229EarlyControlPositiveArena [810, 797] 0 s2Step229EarlyControlLog.classWork=some (s2Step229EarlyControlEqualityArena,s2Step229EarlyControlLog.classWork,s2Step229EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step229EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step229EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step229EarlyControl_classOwned : ([777, 809, 810] : List Wire).toFinset⊆s2Step229EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlZeroArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_positiveBorrow : s2Step229EarlyControlZeroArena.checkBorrow (1) s2Step229EarlyControlLog.positiveWork=some s2Step229EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step229EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step229EarlyControlZeroArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step229EarlyControlPositiveArena,s2Step229EarlyControlZeroArena,s2Step229EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step229EarlyControl_class : compileHmrSourceClassLog s2Step229EarlyControlZeroArena false 777 s2Step229EarlyControlZeroPlan.top 0 810 s2Step229EarlyControlLog.positiveWork s2Step229EarlyControlLog.classWork=some s2Step229EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step229EarlyControlClassPlan s2Step229EarlyControlZeroArena false 777 s2Step229EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step229EarlyControl_classOwned
  · exact s2Step229EarlyControl_positiveBorrow
  · exact s2Step229EarlyControl_classEquality

private theorem s2Step229EarlyControl_entryRecordOwned : ([820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step229EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step229EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_fitBorrow : s2Step229EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step229EarlyControlLog.recordFresh=some s2Step229EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step229EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step229EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step229EarlyControlFittedArena,s2Step229EarlyControlFlagArena,s2Step229EarlyControlLog,arenaWires]

private theorem s2Step229EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step229EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_fit : compileHmrRecordGrowLog s2Step229EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step229EarlyControlLog.recordFresh=some s2Step229EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step229EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step229EarlyControl_fitBorrow

private theorem s2Step229EarlyControl_flagsBorrow : s2Step229EarlyControlEqualityArena.checkBorrow (6) s2Step229EarlyControlLog.flagWork=some s2Step229EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step229EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step229EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step229EarlyControlFlagArena,s2Step229EarlyControlEqualityArena,s2Step229EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step229EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step229EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_flags : compileHmrFlagsLog s2Step229EarlyControlClassPlan.equalityArena s2Step229EarlyControlClassPlan.equality.top 253 252 251 s2Step229EarlyControlLog.flagWork=some s2Step229EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step229EarlyControl_flagsOwned⟩
  · exact s2Step229EarlyControl_flagsBorrow

private theorem s2Step229EarlyControl_historyBorrow : s2Step229EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step229EarlyControlLog.recordFresh=some s2Step229EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step229EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step229EarlyControlHistoryArena,s2Step229EarlyControlArena,s2Step229EarlyControlLog,arenaWires]

private theorem s2Step229EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step229EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_history : compileHmrRecordGrowLog s2Step229EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step229EarlyControlLog.recordFresh=some s2Step229EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step229EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step229EarlyControl_historyBorrow

private theorem s2Step229EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step229EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step229EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_sigmaRelease : s2Step229EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step229EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step229EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step229EarlyControlSigmaArena,s2Step229EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step229EarlyControl_sigma : compileHmrSigmaDropLog s2Step229EarlyControlHistoryArena false 0 0 254 810 []=some s2Step229EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step229EarlyControl_sigmaOwned⟩
  · exact s2Step229EarlyControl_sigmaRelease

private theorem s2Step229EarlyControl_zeroBorrow : s2Step229EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step229EarlyControlLog.zeroWork=some s2Step229EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step229EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step229EarlyControlZeroArena,s2Step229EarlyControlArena,s2Step229EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step229EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step229EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step229EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EarlyControl_zero : compileHmrEqualityLog s2Step229EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step229EarlyControlLog.zeroWork=some (s2Step229EarlyControlZeroArena,s2Step229EarlyControlLog.zeroWork,s2Step229EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step229EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step229EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step229EarlyControl_logged : s2Step229EarlyControlPlan.Logged s2Step229EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 254 253 252 251 820 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step229EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step229EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step229EarlyControl_zero
  · exact s2Step229EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step229EarlyControl_flags
  · exact s2Step229EarlyControl_fit
  · exact s2Step229EarlyControl_history
  · exact s2Step229EarlyControl_sigma
  · exact s2Step229EarlyControl_branch

private theorem s2Step229EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step229EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 254 253 252 251 820 49 s2Step229EarlyControlLog=some s2Step229EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step229EarlyControlPlan s2Step229EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 254 253 252 251 820 49 s2Step229EarlyControl_logged

private def s2Step229EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step229EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step229EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩

private def s2Step229EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step229FrontBank : WindowBank := ⟨s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow⟩

private def s2Step229Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 804, 768]

private def s2Step229Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809, 797, 769]

private def s2Step229Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 849, 770]

private def s2Step229Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 800, 771]

private theorem s2Step229Counter_apart : Disjoint s2Step229HeadFvAfter.live s2Step229CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step229HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229Counter_borrowed : s2Step229HeadFvAfter.checkBorrow 4 s2Step229CounterWork=some s2Step229CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step229HeadFvAfter s2Step229CounterDuring s2Step229CounterWork.toFinset s2Step229Counter_bounded s2Step229Counter_apart rfl

private theorem s2Step229Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step229HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step229HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229Counter_checked : compileHmrCounterStepLog s2Step229HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step229CounterWork=some s2Step229CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step229HeadFvAfter.live := fun q hq => s2Step229Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step229Counter_borrowed

private def s2Step229EntryFAfter : Arena := s2Step229EntryFBefore

private theorem s2Step229EntryBank_incomingDistinct : ([s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229EntryF_Incoming : rowsOwned s2Step229EntryFBefore [s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow] 0 s2Step229EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229EntryBank_outgoingOwned : rowsOwned s2Step229EntryGvAfter [s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step229EntryGvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229EntryF_Outgoing : rowsOwned s2Step229EntryGvAfter [s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] :=
  hmrRows_owned_drop s2Step229EntryGvAfter [s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] 0 s2Step229EntryBank_outgoingOwned

private theorem s2Step229EntryF_distinct : (s2Step229EntryFRow.sign::s2Step229EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229EntryF_owned : (s2Step229EntryFRow.sign::s2Step229EntryFRow.payload).toFinset⊆s2Step229EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EntryF_reserved : s2Step229EntryFBefore.reserve s2Step229EntryFFresh.toFinset=some s2Step229EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229EntryFFresh,arenaWires]
  · norm_num [s2Step229EntryFBefore,s2Step229EntryFFresh,arenaWires]
  · simp only [s2Step229EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step229EntryF_checked : planRowResizeLog s2Step229EntryFBefore s2Step229EntryFRow 156 s2Step229EntryFFresh=
    some (s2Step229EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩,growRow 768 s2Step229EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step229EntryFBefore s2Step229EntryFAfter s2Step229EntryFRow 156 s2Step229EntryFFresh
    s2Step229EntryF_distinct s2Step229EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229EntryF_reserved
  have rowEq : WindowRow.mk (s2Step229EntryFRow.payload++s2Step229EntryFFresh) s2Step229EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step229EntryFvAfter : Arena := s2Step229EntryGAfter

private def s2Step229EntryFvBefore : Arena := s2Step229EntryGAfter

private theorem s2Step229EntryFv_Incoming : rowsOwned s2Step229EntryFvBefore [s2Step229EntryFvRow,s2Step229EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow] 2 s2Step229EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229EntryFv_Outgoing : rowsOwned s2Step229EntryGvAfter [s2Step229EntryFvOut,s2Step229EntryGvOut] :=
  hmrRows_owned_drop s2Step229EntryGvAfter [s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] 2 s2Step229EntryBank_outgoingOwned

private theorem s2Step229EntryFv_distinct : (s2Step229EntryFvRow.sign::s2Step229EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229EntryFv_owned : (s2Step229EntryFvRow.sign::s2Step229EntryFvRow.payload).toFinset⊆s2Step229EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EntryFv_reserved : s2Step229EntryFvBefore.reserve s2Step229EntryFvFresh.toFinset=some s2Step229EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229EntryFvFresh,arenaWires]
  · norm_num [s2Step229EntryFvBefore,s2Step229EntryGAfter,s2Step229EntryFvFresh,arenaWires]
  · simp only [s2Step229EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step229EntryFv_checked : planRowResizeLog s2Step229EntryFvBefore s2Step229EntryFvRow 129 s2Step229EntryFvFresh=
    some (s2Step229EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩,growRow 770 s2Step229EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step229EntryFvBefore s2Step229EntryFvAfter s2Step229EntryFvRow 129 s2Step229EntryFvFresh
    s2Step229EntryFv_distinct s2Step229EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step229EntryFvRow.payload++s2Step229EntryFvFresh) s2Step229EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step229EntryGBefore : Arena := s2Step229EntryFBefore

private theorem s2Step229EntryG_Incoming : rowsOwned s2Step229EntryGBefore [s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow] 1 s2Step229EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229EntryG_Outgoing : rowsOwned s2Step229EntryGvAfter [s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] :=
  hmrRows_owned_drop s2Step229EntryGvAfter [s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] 1 s2Step229EntryBank_outgoingOwned

private theorem s2Step229EntryG_distinct : (s2Step229EntryGRow.sign::s2Step229EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229EntryG_owned : (s2Step229EntryGRow.sign::s2Step229EntryGRow.payload).toFinset⊆s2Step229EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EntryG_reserved : s2Step229EntryGBefore.reserve s2Step229EntryGFresh.toFinset=some s2Step229EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229EntryGFresh,arenaWires]
  · norm_num [s2Step229EntryGBefore,s2Step229EntryFBefore,s2Step229EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step229EntryGAfter,s2Step229EntryGBefore,s2Step229EntryFBefore,s2Step229EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229EntryG_checked : planRowResizeLog s2Step229EntryGBefore s2Step229EntryGRow 156 s2Step229EntryGFresh=
    some (s2Step229EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809],769⟩,growRow 769 s2Step229EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step229EntryGBefore s2Step229EntryGAfter s2Step229EntryGRow 156 s2Step229EntryGFresh
    s2Step229EntryG_distinct s2Step229EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229EntryG_reserved
  have rowEq : WindowRow.mk (s2Step229EntryGRow.payload++s2Step229EntryGFresh) s2Step229EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step229EntryGvBefore : Arena := s2Step229EntryGAfter

private theorem s2Step229EntryGv_Incoming : rowsOwned s2Step229EntryGvBefore [s2Step229EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow] 3 s2Step229EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229EntryGv_Outgoing : rowsOwned s2Step229EntryGvAfter [s2Step229EntryGvOut] :=
  hmrRows_owned_drop s2Step229EntryGvAfter [s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut] 3 s2Step229EntryBank_outgoingOwned

private theorem s2Step229EntryGv_distinct : (s2Step229EntryGvRow.sign::s2Step229EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229EntryGv_owned : (s2Step229EntryGvRow.sign::s2Step229EntryGvRow.payload).toFinset⊆s2Step229EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229EntryGv_reserved : s2Step229EntryGvBefore.reserve s2Step229EntryGvFresh.toFinset=some s2Step229EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229EntryGvFresh,arenaWires]
  · norm_num [s2Step229EntryGvBefore,s2Step229EntryGAfter,s2Step229EntryGvFresh,arenaWires]
  · simp only [s2Step229EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step229EntryGv_checked : planRowResizeLog s2Step229EntryGvBefore s2Step229EntryGvRow 129 s2Step229EntryGvFresh=
    some (s2Step229EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩,growRow 771 s2Step229EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step229EntryGvBefore s2Step229EntryGvAfter s2Step229EntryGvRow 129 s2Step229EntryGvFresh
    s2Step229EntryGv_distinct s2Step229EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step229EntryGvRow.payload++s2Step229EntryGvFresh) s2Step229EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step229EntryBank_rows : planWindowRowsLog s2Step229EntryFBefore [(s2Step229EntryFRow,156),(s2Step229EntryGRow,156),(s2Step229EntryFvRow,129),(s2Step229EntryGvRow,129)] [s2Step229EntryFFresh,s2Step229EntryGFresh,s2Step229EntryFvFresh,s2Step229EntryGvFresh]=
    some (s2Step229EntryGvAfter,[s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut],(growRow 768 s2Step229EntryFFresh ++ (growRow 769 s2Step229EntryGFresh ++ (growRow 770 s2Step229EntryFvFresh ++ (growRow 771 s2Step229EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step229EntryGvAfter [] []=some (s2Step229EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step229EntryGvBefore s2Step229EntryGvAfter s2Step229EntryGvAfter
    s2Step229EntryGvRow s2Step229EntryGvOut 129 s2Step229EntryGvFresh [] [] []
    (growRow 771 s2Step229EntryGvFresh) ([]) s2Step229EntryGv_Incoming s2Step229EntryGv_checked h4 s2Step229EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step229EntryFvBefore s2Step229EntryFvAfter s2Step229EntryGvAfter
    s2Step229EntryFvRow s2Step229EntryFvOut 129 s2Step229EntryFvFresh [(s2Step229EntryGvRow,129)] [s2Step229EntryGvFresh] [s2Step229EntryGvOut]
    (growRow 770 s2Step229EntryFvFresh) ((growRow 771 s2Step229EntryGvFresh ++ [])) s2Step229EntryFv_Incoming s2Step229EntryFv_checked h3 s2Step229EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step229EntryGBefore s2Step229EntryGAfter s2Step229EntryGvAfter
    s2Step229EntryGRow s2Step229EntryGOut 156 s2Step229EntryGFresh [(s2Step229EntryFvRow,129),(s2Step229EntryGvRow,129)] [s2Step229EntryFvFresh,s2Step229EntryGvFresh] [s2Step229EntryFvOut,s2Step229EntryGvOut]
    (growRow 769 s2Step229EntryGFresh) ((growRow 770 s2Step229EntryFvFresh ++ (growRow 771 s2Step229EntryGvFresh ++ []))) s2Step229EntryG_Incoming s2Step229EntryG_checked h2 s2Step229EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step229EntryFBefore s2Step229EntryFAfter s2Step229EntryGvAfter
    s2Step229EntryFRow s2Step229EntryFOut 156 s2Step229EntryFFresh [(s2Step229EntryGRow,156),(s2Step229EntryFvRow,129),(s2Step229EntryGvRow,129)] [s2Step229EntryGFresh,s2Step229EntryFvFresh,s2Step229EntryGvFresh] [s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut]
    (growRow 768 s2Step229EntryFFresh) ((growRow 769 s2Step229EntryGFresh ++ (growRow 770 s2Step229EntryFvFresh ++ (growRow 771 s2Step229EntryGvFresh ++ [])))) s2Step229EntryF_Incoming s2Step229EntryF_checked h1 s2Step229EntryF_Outgoing
  exact h0

private theorem s2Step229EntryBank_checked : compileHmrBankResizeLog .entry s2Step229EntryFBefore ⟨s2Step229EntryFRow,s2Step229EntryGRow,s2Step229EntryFvRow,s2Step229EntryGvRow⟩ ⟨156,156,129,129⟩ [s2Step229EntryFFresh,s2Step229EntryGFresh,s2Step229EntryFvFresh,s2Step229EntryGvFresh]=
    some (s2Step229EntryGvAfter,⟨s2Step229EntryFOut,s2Step229EntryGOut,s2Step229EntryFvOut,s2Step229EntryGvOut⟩,(growRow 768 s2Step229EntryFFresh ++ (growRow 769 s2Step229EntryGFresh ++ (growRow 770 s2Step229EntryFvFresh ++ (growRow 771 s2Step229EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step229EntryBank_rows]
  rfl

private def s2Step229ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229ExitFBefore : Arena := s2Step229ExitGAfter

private def s2Step229ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 804],768⟩

private def s2Step229ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 849],770⟩

private def s2Step229ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809, 797],769⟩

private def s2Step229ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 800],771⟩

private theorem s2Step229ExitBank_incomingDistinct : ([s2Step229ExitGRow,s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229ExitF_Incoming : rowsOwned s2Step229ExitFBefore [s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229ExitGRow,s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow] 1 s2Step229ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229ExitBank_outgoingOwned : rowsOwned s2Step229ExitGvAfter [s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step229ExitGvAfter (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229ExitF_Outgoing : rowsOwned s2Step229ExitGvAfter [s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] :=
  hmrRows_owned_drop s2Step229ExitGvAfter [s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] 1 s2Step229ExitBank_outgoingOwned

private theorem s2Step229ExitF_distinct : (s2Step229ExitFRow.sign::s2Step229ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229ExitF_owned : (s2Step229ExitFRow.sign::s2Step229ExitFRow.payload).toFinset⊆s2Step229ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229ExitF_retired : s2Step229ExitFBefore.retireSet s2Step229ExitFExtra.toFinset=s2Step229ExitFAfter := by
  unfold Arena.retireSet s2Step229ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step229ExitFBefore,s2Step229ExitGAfter,s2Step229ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step229ExitF_checked : planRowResizeLog s2Step229ExitFBefore s2Step229ExitFRow 155 []=
    some (s2Step229ExitFAfter,s2Step229ExitFOut,shrinkRow 768 s2Step229ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step229ExitFBefore s2Step229ExitFRow 155 s2Step229ExitF_distinct s2Step229ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step229ExitFRow.payload.take 155) s2Step229ExitFRow.sign=s2Step229ExitFOut := by decide +kernel
  have hi : s2Step229ExitFRow.payload.drop 155=s2Step229ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step229ExitF_retired] at result
  exact result

private def s2Step229ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229ExitFvBefore : Arena := s2Step229ExitFAfter

private theorem s2Step229ExitFv_Incoming : rowsOwned s2Step229ExitFvBefore [s2Step229ExitFvRow,s2Step229ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229ExitGRow,s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow] 2 s2Step229ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229ExitFvBefore (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229ExitFv_Outgoing : rowsOwned s2Step229ExitGvAfter [s2Step229ExitFvOut,s2Step229ExitGvOut] :=
  hmrRows_owned_drop s2Step229ExitGvAfter [s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] 2 s2Step229ExitBank_outgoingOwned

private theorem s2Step229ExitFv_distinct : (s2Step229ExitFvRow.sign::s2Step229ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229ExitFv_owned : (s2Step229ExitFvRow.sign::s2Step229ExitFvRow.payload).toFinset⊆s2Step229ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229ExitFvBefore (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229ExitFv_retired : s2Step229ExitFvBefore.retireSet s2Step229ExitFvExtra.toFinset=s2Step229ExitFvAfter := by
  unfold Arena.retireSet s2Step229ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step229ExitFvBefore,s2Step229ExitFAfter,s2Step229ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step229ExitFv_checked : planRowResizeLog s2Step229ExitFvBefore s2Step229ExitFvRow 129 []=
    some (s2Step229ExitFvAfter,s2Step229ExitFvOut,shrinkRow 770 s2Step229ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step229ExitFvBefore s2Step229ExitFvRow 129 s2Step229ExitFv_distinct s2Step229ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step229ExitFvRow.payload.take 129) s2Step229ExitFvRow.sign=s2Step229ExitFvOut := by decide +kernel
  have hi : s2Step229ExitFvRow.payload.drop 129=s2Step229ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step229ExitFv_retired] at result
  exact result

private def s2Step229ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step229ExitG_Incoming : rowsOwned s2Step229ExitGBefore [s2Step229ExitGRow,s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229ExitGRow,s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow] 0 s2Step229ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229ExitG_Outgoing : rowsOwned s2Step229ExitGvAfter [s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] :=
  hmrRows_owned_drop s2Step229ExitGvAfter [s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] 0 s2Step229ExitBank_outgoingOwned

private theorem s2Step229ExitG_distinct : (s2Step229ExitGRow.sign::s2Step229ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229ExitG_owned : (s2Step229ExitGRow.sign::s2Step229ExitGRow.payload).toFinset⊆s2Step229ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229ExitG_retired : s2Step229ExitGBefore.retireSet s2Step229ExitGExtra.toFinset=s2Step229ExitGAfter := by
  unfold Arena.retireSet s2Step229ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step229ExitGBefore,s2Step229ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step229ExitG_checked : planRowResizeLog s2Step229ExitGBefore s2Step229ExitGRow 155 []=
    some (s2Step229ExitGAfter,s2Step229ExitGOut,shrinkRow 769 s2Step229ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step229ExitGBefore s2Step229ExitGRow 155 s2Step229ExitG_distinct s2Step229ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step229ExitGRow.payload.take 155) s2Step229ExitGRow.sign=s2Step229ExitGOut := by decide +kernel
  have hi : s2Step229ExitGRow.payload.drop 155=s2Step229ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step229ExitG_retired] at result
  exact result

private def s2Step229ExitGvBefore : Arena := s2Step229ExitFvAfter

private theorem s2Step229ExitGv_Incoming : rowsOwned s2Step229ExitGvBefore [s2Step229ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229ExitGRow,s2Step229ExitFRow,s2Step229ExitFvRow,s2Step229ExitGvRow] 3 s2Step229ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229ExitGvBefore (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229ExitGv_Outgoing : rowsOwned s2Step229ExitGvAfter [s2Step229ExitGvOut] :=
  hmrRows_owned_drop s2Step229ExitGvAfter [s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut] 3 s2Step229ExitBank_outgoingOwned

private theorem s2Step229ExitGv_distinct : (s2Step229ExitGvRow.sign::s2Step229ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229ExitGv_owned : (s2Step229ExitGvRow.sign::s2Step229ExitGvRow.payload).toFinset⊆s2Step229ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229ExitGvBefore (fun q => (0≤q ∧ q<667) ∨ (668≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229ExitGv_retired : s2Step229ExitGvBefore.retireSet s2Step229ExitGvExtra.toFinset=s2Step229ExitGvAfter := by
  unfold Arena.retireSet s2Step229ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step229ExitGvBefore,s2Step229ExitFvAfter,s2Step229ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step229ExitGv_checked : planRowResizeLog s2Step229ExitGvBefore s2Step229ExitGvRow 129 []=
    some (s2Step229ExitGvAfter,s2Step229ExitGvOut,shrinkRow 771 s2Step229ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step229ExitGvBefore s2Step229ExitGvRow 129 s2Step229ExitGv_distinct s2Step229ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step229ExitGvRow.payload.take 129) s2Step229ExitGvRow.sign=s2Step229ExitGvOut := by decide +kernel
  have hi : s2Step229ExitGvRow.payload.drop 129=s2Step229ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step229ExitGv_retired] at result
  exact result

private theorem s2Step229ExitBank_rows : planWindowRowsLog s2Step229ExitGBefore [(s2Step229ExitGRow,155),(s2Step229ExitFRow,155),(s2Step229ExitFvRow,129),(s2Step229ExitGvRow,129)] [[],[],[],[]]=
    some (s2Step229ExitGvAfter,[s2Step229ExitGOut,s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut],(shrinkRow 769 s2Step229ExitGExtra ++ (shrinkRow 768 s2Step229ExitFExtra ++ (shrinkRow 770 s2Step229ExitFvExtra ++ (shrinkRow 771 s2Step229ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step229ExitGvAfter [] []=some (s2Step229ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step229ExitGvBefore s2Step229ExitGvAfter s2Step229ExitGvAfter
    s2Step229ExitGvRow s2Step229ExitGvOut 129 [] [] [] []
    (shrinkRow 771 s2Step229ExitGvExtra) ([]) s2Step229ExitGv_Incoming s2Step229ExitGv_checked h4 s2Step229ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step229ExitFvBefore s2Step229ExitFvAfter s2Step229ExitGvAfter
    s2Step229ExitFvRow s2Step229ExitFvOut 129 [] [(s2Step229ExitGvRow,129)] [[]] [s2Step229ExitGvOut]
    (shrinkRow 770 s2Step229ExitFvExtra) ((shrinkRow 771 s2Step229ExitGvExtra ++ [])) s2Step229ExitFv_Incoming s2Step229ExitFv_checked h3 s2Step229ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step229ExitFBefore s2Step229ExitFAfter s2Step229ExitGvAfter
    s2Step229ExitFRow s2Step229ExitFOut 155 [] [(s2Step229ExitFvRow,129),(s2Step229ExitGvRow,129)] [[],[]] [s2Step229ExitFvOut,s2Step229ExitGvOut]
    (shrinkRow 768 s2Step229ExitFExtra) ((shrinkRow 770 s2Step229ExitFvExtra ++ (shrinkRow 771 s2Step229ExitGvExtra ++ []))) s2Step229ExitF_Incoming s2Step229ExitF_checked h2 s2Step229ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step229ExitGBefore s2Step229ExitGAfter s2Step229ExitGvAfter
    s2Step229ExitGRow s2Step229ExitGOut 155 [] [(s2Step229ExitFRow,155),(s2Step229ExitFvRow,129),(s2Step229ExitGvRow,129)] [[],[],[]] [s2Step229ExitFOut,s2Step229ExitFvOut,s2Step229ExitGvOut]
    (shrinkRow 769 s2Step229ExitGExtra) ((shrinkRow 768 s2Step229ExitFExtra ++ (shrinkRow 770 s2Step229ExitFvExtra ++ (shrinkRow 771 s2Step229ExitGvExtra ++ [])))) s2Step229ExitG_Incoming s2Step229ExitG_checked h1 s2Step229ExitG_Outgoing
  exact h0

private theorem s2Step229ExitBank_checked : compileHmrBankResizeLog .exit s2Step229ExitGBefore ⟨s2Step229ExitFRow,s2Step229ExitGRow,s2Step229ExitFvRow,s2Step229ExitGvRow⟩ ⟨155,155,129,129⟩ [[],[],[],[]]=
    some (s2Step229ExitGvAfter,⟨s2Step229ExitFOut,s2Step229ExitGOut,s2Step229ExitFvOut,s2Step229ExitGvOut⟩,(shrinkRow 769 s2Step229ExitGExtra ++ (shrinkRow 768 s2Step229ExitFExtra ++ (shrinkRow 770 s2Step229ExitFvExtra ++ (shrinkRow 771 s2Step229ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step229ExitBank_rows]
  rfl

private theorem s2Step229Add0_apart : Disjoint s2Step229Add0Arena.live s2Step229Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step229Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229Add0_card : s2Step229Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step229Add0_borrowed : s2Step229Add0Arena.checkBorrow (hmrHybridCount s2Step229Add0Arena s2Step229Add0B.length) s2Step229Add0Work=some s2Step229Add0During := by
  have len : s2Step229Add0Work.length=hmrHybridCount s2Step229Add0Arena s2Step229Add0B.length := by
    rw [hmrHybridCount,s2Step229Add0_card]
    decide +kernel
  have nd : s2Step229Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step229Add0Arena s2Step229Add0During s2Step229Add0Work.toFinset s2Step229Add0_bounded s2Step229Add0_apart rfl

private theorem s2Step229Add0_distinct : (814::820::882::(s2Step229Add0A++s2Step229Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229Add0_owned : (814::820::882::(s2Step229Add0A++s2Step229Add0B)).toFinset⊆s2Step229Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step229Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229Add0_checked : compileHmrHybridCinLog s2Step229Add0Arena 820 814 882 s2Step229Add0A s2Step229Add0B s2Step229Add0Work=some s2Step229Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step229Add0Arena s2Step229Add0During 820 814 882 s2Step229Add0A s2Step229Add0B s2Step229Add0Work
    (by decide +kernel) (by decide +kernel) s2Step229Add0_distinct
    (fun q hq => s2Step229Add0_owned (List.mem_toFinset.mpr hq)) s2Step229Add0_borrowed

private theorem s2Step229Add1_apart : Disjoint s2Step229Add1Arena.live s2Step229Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step229Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229Add1_card : s2Step229Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step229Add1_borrowed : s2Step229Add1Arena.checkBorrow (hmrHybridCount s2Step229Add1Arena s2Step229Add1B.length) s2Step229Add1Work=some s2Step229Add1During := by
  have len : s2Step229Add1Work.length=hmrHybridCount s2Step229Add1Arena s2Step229Add1B.length := by
    rw [hmrHybridCount,s2Step229Add1_card]
    decide +kernel
  have nd : s2Step229Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step229Add1Arena s2Step229Add1During s2Step229Add1Work.toFinset s2Step229Add1_bounded s2Step229Add1_apart rfl

private theorem s2Step229Add1_distinct : (814::820::882::(s2Step229Add1A++s2Step229Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229Add1_owned : (814::820::882::(s2Step229Add1A++s2Step229Add1B)).toFinset⊆s2Step229Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step229Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229Add1_checked : compileHmrHybridCinLog s2Step229Add1Arena 820 814 882 s2Step229Add1A s2Step229Add1B s2Step229Add1Work=some s2Step229Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step229Add1Arena s2Step229Add1During 820 814 882 s2Step229Add1A s2Step229Add1B s2Step229Add1Work
    (by decide +kernel) (by decide +kernel) s2Step229Add1_distinct
    (fun q hq => s2Step229Add1_owned (List.mem_toFinset.mpr hq)) s2Step229Add1_borrowed

private theorem s2Step229F4_apart : Disjoint (s2Step229Add0A++s2Step229Add0B).toFinset (s2Step229Add1A++s2Step229Add1B).toFinset := by
  have nd : ((s2Step229Add0A++s2Step229Add0B)++(s2Step229Add1A++s2Step229Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step229F4_carry : s2Step229F4FlagArena.checkBorrow 1 [882]=some s2Step229Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step229F4FlagArena,s2Step229HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step229F4FlagArena,s2Step229HeadFvAfter,s2Step229Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229F4_distinct : (810::820::814::882::((s2Step229Add0A++s2Step229Add1A)++(s2Step229Add0B++s2Step229Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229F4_flag : s2Step229HeadFvAfter.checkBorrow 1 [814]=some s2Step229F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step229HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step229F4_owned : (810::820::((s2Step229Add0A++s2Step229Add1A)++(s2Step229Add0B++s2Step229Add1B))).toFinset⊆s2Step229HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step229HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229F4_checked : compileHmrHybridF4Log s2Step229HeadFvAfter 810 820 s2Step229Add0A s2Step229Add0B s2Step229Add1A s2Step229Add1B [814] [882] s2Step229Add0Work s2Step229Add1Work=some s2Step229F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step229HeadFvAfter s2Step229F4FlagArena s2Step229Add0Arena s2Step229Add0During s2Step229Add1During 810 820
    s2Step229Add0A s2Step229Add0B s2Step229Add1A s2Step229Add1B [814] [882] s2Step229Add0Work s2Step229Add1Work
    (fun q hq => s2Step229F4_owned (List.mem_toFinset.mpr hq)) s2Step229F4_flag s2Step229F4_carry
    s2Step229F4_distinct s2Step229F4_apart s2Step229Add0_checked s2Step229Add1_checked

private theorem s2Step229Front_branch : s2Step229FrontSigmaArena.checkBorrow 1 [820]=some s2Step229HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step229FrontSigmaArena,s2Step229EntryGvAfter,s2Step229EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step229FrontSigmaArena,s2Step229EntryGvAfter,s2Step229EntryGAfter,s2Step229HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229Front_entry : HmrFrontEntryValid s2Step229EntryFBefore s2Step229FrontBank 156 129 ⟨155,155,129,129⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step229FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step229EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step229EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step229FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step229Front_sigma : s2Step229EntryGvAfter.checkBorrow 1 [810]=some s2Step229FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step229EntryGvAfter,s2Step229EntryGAfter,arenaWires]
  · rfl

private def s2Step229HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229HeadFBefore : Arena := s2Step229HeadGAfter

private def s2Step229HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step229HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step229HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809],769⟩

private def s2Step229HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private theorem s2Step229HeadBank_incomingDistinct : ([s2Step229HeadGRow,s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229HeadF_Incoming : rowsOwned s2Step229HeadFBefore [s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229HeadGRow,s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow] 1 s2Step229HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229HeadBank_outgoingOwned : rowsOwned s2Step229HeadFvAfter [s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step229HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229HeadF_Outgoing : rowsOwned s2Step229HeadFvAfter [s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] :=
  hmrRows_owned_drop s2Step229HeadFvAfter [s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] 1 s2Step229HeadBank_outgoingOwned

private theorem s2Step229HeadF_distinct : (s2Step229HeadFRow.sign::s2Step229HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229HeadF_owned : (s2Step229HeadFRow.sign::s2Step229HeadFRow.payload).toFinset⊆s2Step229HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229HeadF_reserved : s2Step229HeadFBefore.reserve s2Step229HeadFFresh.toFinset=some s2Step229HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229HeadFFresh,arenaWires]
  · norm_num [s2Step229HeadFBefore,s2Step229HeadGAfter,s2Step229HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step229HeadFAfter,s2Step229HeadFBefore,s2Step229HeadGAfter,s2Step229HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229HeadF_checked : planRowResizeLog s2Step229HeadFBefore s2Step229HeadFRow 157 s2Step229HeadFFresh=
    some (s2Step229HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 804],768⟩,growRow 768 s2Step229HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step229HeadFBefore s2Step229HeadFAfter s2Step229HeadFRow 157 s2Step229HeadFFresh
    s2Step229HeadF_distinct s2Step229HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229HeadF_reserved
  have rowEq : WindowRow.mk (s2Step229HeadFRow.payload++s2Step229HeadFFresh) s2Step229HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 804],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step229HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step229HeadFvBefore : Arena := s2Step229HeadGvAfter

private theorem s2Step229HeadFv_Incoming : rowsOwned s2Step229HeadFvBefore [s2Step229HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229HeadGRow,s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow] 3 s2Step229HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229HeadFv_Outgoing : rowsOwned s2Step229HeadFvAfter [s2Step229HeadFvOut] :=
  hmrRows_owned_drop s2Step229HeadFvAfter [s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] 3 s2Step229HeadBank_outgoingOwned

private theorem s2Step229HeadFv_distinct : (s2Step229HeadFvRow.sign::s2Step229HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229HeadFv_owned : (s2Step229HeadFvRow.sign::s2Step229HeadFvRow.payload).toFinset⊆s2Step229HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229HeadFv_reserved : s2Step229HeadFvBefore.reserve s2Step229HeadFvFresh.toFinset=some s2Step229HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229HeadFvFresh,arenaWires]
  · norm_num [s2Step229HeadFvBefore,s2Step229HeadGvAfter,s2Step229HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step229HeadFvAfter,s2Step229HeadFvBefore,s2Step229HeadGvAfter,s2Step229HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229HeadFv_checked : planRowResizeLog s2Step229HeadFvBefore s2Step229HeadFvRow 130 s2Step229HeadFvFresh=
    some (s2Step229HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 849],770⟩,growRow 770 s2Step229HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step229HeadFvBefore s2Step229HeadFvAfter s2Step229HeadFvRow 130 s2Step229HeadFvFresh
    s2Step229HeadFv_distinct s2Step229HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step229HeadFvRow.payload++s2Step229HeadFvFresh) s2Step229HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step229HeadG_Incoming : rowsOwned s2Step229HeadGBefore [s2Step229HeadGRow,s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229HeadGRow,s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow] 0 s2Step229HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229HeadG_Outgoing : rowsOwned s2Step229HeadFvAfter [s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] :=
  hmrRows_owned_drop s2Step229HeadFvAfter [s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] 0 s2Step229HeadBank_outgoingOwned

private theorem s2Step229HeadG_distinct : (s2Step229HeadGRow.sign::s2Step229HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229HeadG_owned : (s2Step229HeadGRow.sign::s2Step229HeadGRow.payload).toFinset⊆s2Step229HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229HeadG_reserved : s2Step229HeadGBefore.reserve s2Step229HeadGFresh.toFinset=some s2Step229HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229HeadGFresh,arenaWires]
  · norm_num [s2Step229HeadGBefore,s2Step229HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step229HeadGAfter,s2Step229HeadGBefore,s2Step229HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229HeadG_checked : planRowResizeLog s2Step229HeadGBefore s2Step229HeadGRow 157 s2Step229HeadGFresh=
    some (s2Step229HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809, 797],769⟩,growRow 769 s2Step229HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step229HeadGBefore s2Step229HeadGAfter s2Step229HeadGRow 157 s2Step229HeadGFresh
    s2Step229HeadG_distinct s2Step229HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229HeadG_reserved
  have rowEq : WindowRow.mk (s2Step229HeadGRow.payload++s2Step229HeadGFresh) s2Step229HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 809, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step229HeadGvBefore : Arena := s2Step229HeadFAfter

private theorem s2Step229HeadGv_Incoming : rowsOwned s2Step229HeadGvBefore [s2Step229HeadGvRow,s2Step229HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step229HeadGRow,s2Step229HeadFRow,s2Step229HeadGvRow,s2Step229HeadFvRow] 2 s2Step229HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step229HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step229HeadGv_Outgoing : rowsOwned s2Step229HeadFvAfter [s2Step229HeadGvOut,s2Step229HeadFvOut] :=
  hmrRows_owned_drop s2Step229HeadFvAfter [s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut] 2 s2Step229HeadBank_outgoingOwned

private theorem s2Step229HeadGv_distinct : (s2Step229HeadGvRow.sign::s2Step229HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step229HeadGv_owned : (s2Step229HeadGvRow.sign::s2Step229HeadGvRow.payload).toFinset⊆s2Step229HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step229HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step229HeadGv_reserved : s2Step229HeadGvBefore.reserve s2Step229HeadGvFresh.toFinset=some s2Step229HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step229HeadGvFresh,arenaWires]
  · norm_num [s2Step229HeadGvBefore,s2Step229HeadFAfter,s2Step229HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step229HeadGvAfter,s2Step229HeadGvBefore,s2Step229HeadFAfter,s2Step229HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step229HeadGv_checked : planRowResizeLog s2Step229HeadGvBefore s2Step229HeadGvRow 130 s2Step229HeadGvFresh=
    some (s2Step229HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 800],771⟩,growRow 771 s2Step229HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step229HeadGvBefore s2Step229HeadGvAfter s2Step229HeadGvRow 130 s2Step229HeadGvFresh
    s2Step229HeadGv_distinct s2Step229HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step229HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step229HeadGvRow.payload++s2Step229HeadGvFresh) s2Step229HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step229HeadBank_rows : planWindowRowsLog s2Step229HeadGBefore [(s2Step229HeadGRow,157),(s2Step229HeadFRow,157),(s2Step229HeadGvRow,130),(s2Step229HeadFvRow,130)] [s2Step229HeadGFresh,s2Step229HeadFFresh,s2Step229HeadGvFresh,s2Step229HeadFvFresh]=
    some (s2Step229HeadFvAfter,[s2Step229HeadGOut,s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut],(growRow 769 s2Step229HeadGFresh ++ (growRow 768 s2Step229HeadFFresh ++ (growRow 771 s2Step229HeadGvFresh ++ (growRow 770 s2Step229HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step229HeadFvAfter [] []=some (s2Step229HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step229HeadFvBefore s2Step229HeadFvAfter s2Step229HeadFvAfter
    s2Step229HeadFvRow s2Step229HeadFvOut 130 s2Step229HeadFvFresh [] [] []
    (growRow 770 s2Step229HeadFvFresh) ([]) s2Step229HeadFv_Incoming s2Step229HeadFv_checked h4 s2Step229HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step229HeadGvBefore s2Step229HeadGvAfter s2Step229HeadFvAfter
    s2Step229HeadGvRow s2Step229HeadGvOut 130 s2Step229HeadGvFresh [(s2Step229HeadFvRow,130)] [s2Step229HeadFvFresh] [s2Step229HeadFvOut]
    (growRow 771 s2Step229HeadGvFresh) ((growRow 770 s2Step229HeadFvFresh ++ [])) s2Step229HeadGv_Incoming s2Step229HeadGv_checked h3 s2Step229HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step229HeadFBefore s2Step229HeadFAfter s2Step229HeadFvAfter
    s2Step229HeadFRow s2Step229HeadFOut 157 s2Step229HeadFFresh [(s2Step229HeadGvRow,130),(s2Step229HeadFvRow,130)] [s2Step229HeadGvFresh,s2Step229HeadFvFresh] [s2Step229HeadGvOut,s2Step229HeadFvOut]
    (growRow 768 s2Step229HeadFFresh) ((growRow 771 s2Step229HeadGvFresh ++ (growRow 770 s2Step229HeadFvFresh ++ []))) s2Step229HeadF_Incoming s2Step229HeadF_checked h2 s2Step229HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step229HeadGBefore s2Step229HeadGAfter s2Step229HeadFvAfter
    s2Step229HeadGRow s2Step229HeadGOut 157 s2Step229HeadGFresh [(s2Step229HeadFRow,157),(s2Step229HeadGvRow,130),(s2Step229HeadFvRow,130)] [s2Step229HeadFFresh,s2Step229HeadGvFresh,s2Step229HeadFvFresh] [s2Step229HeadFOut,s2Step229HeadGvOut,s2Step229HeadFvOut]
    (growRow 769 s2Step229HeadGFresh) ((growRow 768 s2Step229HeadFFresh ++ (growRow 771 s2Step229HeadGvFresh ++ (growRow 770 s2Step229HeadFvFresh ++ [])))) s2Step229HeadG_Incoming s2Step229HeadG_checked h1 s2Step229HeadG_Outgoing
  exact h0

private theorem s2Step229HeadBank_checked : compileHmrBankResizeLog .headroom s2Step229HeadGBefore ⟨s2Step229HeadFRow,s2Step229HeadGRow,s2Step229HeadFvRow,s2Step229HeadGvRow⟩ ⟨157,157,130,130⟩ [s2Step229HeadGFresh,s2Step229HeadFFresh,s2Step229HeadGvFresh,s2Step229HeadFvFresh]=
    some (s2Step229HeadFvAfter,⟨s2Step229HeadFOut,s2Step229HeadGOut,s2Step229HeadFvOut,s2Step229HeadGvOut⟩,(growRow 769 s2Step229HeadGFresh ++ (growRow 768 s2Step229HeadFFresh ++ (growRow 771 s2Step229HeadGvFresh ++ (growRow 770 s2Step229HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step229HeadBank_rows]
  rfl

private theorem s2Step229Front_checked : compileHmrSourceFrontLog s2Step229EntryFBefore s2Step229FrontBank 156 129 ⟨155,155,129,129⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step229FrontLog=some s2Step229FrontPlan := by
  have pairEq : s2Step229FrontPair=⟨s2Step229HeadFRow,s2Step229HeadGRow,s2Step229HeadFvRow,s2Step229HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step229FrontHead=⟨s2Step229ExitFRow,s2Step229ExitGRow,s2Step229ExitFvRow,s2Step229ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step229Add0A=s2Step229FrontHead.f.wires := by decide +kernel
  have gEq : s2Step229Add0B=s2Step229FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step229Add1A=s2Step229FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step229Add1B=s2Step229FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step229EntryFBefore s2Step229FrontBank 156 129 ⟨155,155,129,129⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step229FrontLog s2Step229FrontPlan
  · exact s2Step229Front_entry
  · exact s2Step229EntryBank_checked
  · exact s2Step229Front_sigma
  · rfl
  · exact s2Step229Front_branch
  · rfl
  · simpa only [s2Step229FrontPlan,pairEq] using s2Step229HeadBank_checked
  · simpa only [s2Step229FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step229F4_checked
  · exact s2Step229Counter_checked
  · rfl
  · simpa only [s2Step229FrontPlan,headEq] using s2Step229ExitBank_checked

private theorem s2Step229Complete_explicit_checked : compileHmrEarlyStepLog s2Step229EntryFBefore s2Step229FrontBank 156 129 ⟨155,155,129,129⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step229CompleteLog=some s2Step229CompletePlan := by
  let Q := s2Step229EarlyControlPlan
  have hq := s2Step229EarlyControl_plan_checked
  have fv1 : s2Step229CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step229CompleteOut.fv.payload[2]?.getD s2Step229CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step229CompleteOut.fv.payload[3]?.getD s2Step229CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step229CompleteOut.fv.payload[4]?.getD s2Step229CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step229EntryFBefore s2Step229EarlyControlArena s2Step229FrontBank 156 129 ⟨155,155,129,129⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step229CompleteLog s2Step229FrontPlan Q
    s2Step229Front_checked s2Step229Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step229Complete_owned s2Step229Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step229EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 s2Step229CompleteOut.fv.second (s2Step229CompleteOut.fv.payload[2]?.getD s2Step229CompleteOut.fv.sign) (s2Step229CompleteOut.fv.payload[3]?.getD s2Step229CompleteOut.fv.sign) (s2Step229CompleteOut.fv.payload[4]?.getD s2Step229CompleteOut.fv.sign) 820 49 s2Step229EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep229Arena : Arena := s2Step229EntryFBefore
def s2PrivateStep229Bank : WindowBank := s2Step229FrontBank
def s2PrivateStep229Spec : HmrSourceWalkStepLog := ⟨156,129,⟨155,155,129,129⟩,49,.early s2Step229CompleteLog⟩
def s2PrivateStep229Plan : HmrSourceStepPlan := .early s2Step229CompletePlan
theorem s2PrivateStep229_source : s2PrivateStep229Spec=s2ObservedLogs224[5] := rfl
theorem s2PrivateStep229_checked : compileHmrSourceStepLog s2PrivateStep229Arena s2PrivateStep229Bank
    s2PrivateStep229Spec.fgWidth s2PrivateStep229Spec.vWidth s2PrivateStep229Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 229 s2PrivateStep229Spec.need none s2PrivateStep229Spec.log=some s2PrivateStep229Plan := by
  change compileHmrSourceStepLog s2Step229EntryFBefore s2Step229FrontBank 156 129 ⟨155,155,129,129⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 229 49 none (.early s2Step229CompleteLog)=some (.early s2Step229CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 229<498)]
  rw [s2Step229Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
