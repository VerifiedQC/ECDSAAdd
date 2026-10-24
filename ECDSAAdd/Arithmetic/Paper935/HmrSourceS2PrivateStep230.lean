import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep228
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

private def s2Step230CompleteMoves : List (Wire × Wire) := [(787,154)]

private def s2Step230EarlyControlLog : HmrEarlyControlLog := ⟨[787, 800, 805, 809, 797],[814],[882],[826, 842, 885, 891, 894, 896],[]⟩

private def s2Step230FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[805], [800], [849], [804]],[[], [], [], []]⟩,[820],[810],[809],[797],[814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[809, 797, 814, 882]⟩

private def s2Step230CompleteLog : HmrEarlyStepLog := ⟨s2Step230FrontLog,s2Step230CompleteMoves,s2Step230EarlyControlLog⟩

private def s2Step230ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step230ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step230ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩

private def s2Step230ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step230FrontOut : WindowBank := ⟨s2Step230ExitFOut,s2Step230ExitGOut,s2Step230ExitFvOut,s2Step230ExitGvOut⟩

private def s2Step230CompleteOut : WindowBank := s2Step230FrontOut.repacked s2Step230CompleteMoves

private def s2Step230EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step230EarlyControlPositiveArena,[814],s2Step230EarlyControlEqualityArena,[882],⟨⟨820,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step230EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,787⟩,⟨⟨774,false⟩,800⟩,⟨⟨775,false⟩,805⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step230EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step230EarlyControlZeroArena,s2Step230EarlyControlZeroPlan,s2Step230EarlyControlClassPlan,s2Step230EarlyControlFlagArena,s2Step230EarlyControlFittedArena,s2Step230EarlyControlHistoryArena,s2Step230EarlyControlSigmaArena,s2Step230EarlyControlOutputArena,s2Step230EarlyControlLog⟩

private def s2Step230CounterWork : List Wire := [809, 797, 814, 882]

private theorem s2Step230Counter_bounded : s2Step230CounterWork.toFinset⊆arenaWires := by norm_num [s2Step230CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step230HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230CounterDuring : Arena := ⟨s2Step230HeadFvAfter.live∪s2Step230CounterWork.toFinset,Finset.union_subset s2Step230HeadFvAfter.bounded s2Step230Counter_bounded⟩

private def s2Step230EntryFFresh : List Wire := []

private def s2Step230EntryFvFresh : List Wire := []

private def s2Step230EntryGFresh : List Wire := []

private def s2Step230EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230EntryGvAfter : Arena := s2Step230EntryFBefore

private def s2Step230EntryGvFresh : List Wire := []

private def s2Step230ExitFExtra : List Wire := [800]

private def s2Step230ExitGExtra : List Wire := [154, 805]

private def s2Step230ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230ExitGvAfter : Arena := s2Step230ExitFAfter

private def s2Step230Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step230Add0_bounded : s2Step230Add0Work.toFinset⊆arenaWires := by
  have h : s2Step230Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step230Add0During : Arena := ⟨s2Step230Add0Arena.live∪s2Step230Add0Work.toFinset,Finset.union_subset s2Step230Add0Arena.bounded s2Step230Add0_bounded⟩

private def s2Step230Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step230Add1_bounded : s2Step230Add1Work.toFinset⊆arenaWires := by
  have h : s2Step230Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step230Add1During : Arena := ⟨s2Step230Add1Arena.live∪s2Step230Add1Work.toFinset,Finset.union_subset s2Step230Add1Arena.bounded s2Step230Add1_bounded⟩

private def s2Step230F4FlagArena : Arena := ⟨s2Step230HeadFvAfter.live∪{809},Finset.union_subset s2Step230HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step230F4Plan : HmrHybridF4Plan := ⟨s2Step230F4FlagArena,[809],s2Step230Add0Arena,[797],s2Step230Add0During,s2Step230Add0Work,s2Step230Add1During,s2Step230Add1Work⟩

private def s2Step230HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 800],768⟩

private def s2Step230HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step230HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 805],769⟩

private def s2Step230HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step230FrontHead : WindowBank := ⟨s2Step230HeadFOut,s2Step230HeadGOut,s2Step230HeadFvOut,s2Step230HeadGvOut⟩

private def s2Step230EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step230EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step230EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩

private def s2Step230EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step230FrontPair : WindowBank := ⟨s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut⟩

private def s2Step230FrontSigmaArena : Arena := ⟨s2Step230EntryGvAfter.live∪{820},Finset.union_subset s2Step230EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step230HeadFFresh : List Wire := [800]

private def s2Step230HeadFvFresh : List Wire := [804]

private def s2Step230HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230HeadGFresh : List Wire := [805]

private def s2Step230HeadGvFresh : List Wire := [849]

private def s2Step230FrontPlan : HmrSourceFront := ⟨s2Step230EntryGvAfter,s2Step230FrontPair,(growRow 768 s2Step230EntryFFresh ++ (growRow 769 s2Step230EntryGFresh ++ (growRow 770 s2Step230EntryFvFresh ++ (growRow 771 s2Step230EntryGvFresh ++ [])))),s2Step230FrontSigmaArena,[820],s2Step230HeadGBefore,[810],
  s2Step230HeadFvAfter,s2Step230FrontHead,(growRow 769 s2Step230HeadGFresh ++ (growRow 768 s2Step230HeadFFresh ++ (growRow 771 s2Step230HeadGvFresh ++ (growRow 770 s2Step230HeadFvFresh ++ [])))),s2Step230F4Plan,s2Step230CounterDuring,s2Step230CounterWork,s2Step230ExitGvAfter,s2Step230FrontOut,(shrinkRow 769 s2Step230ExitGExtra ++ (shrinkRow 768 s2Step230ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step230CompletePlan : HmrEarlyStepPlan := ⟨s2Step230FrontPlan,s2Step230EarlyControlArena,s2Step230EarlyControlPlan,s2Step230CompleteMoves⟩

private theorem s2Step230Complete_apart : List.Disjoint (s2Step230CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step230CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step230Complete_owned : (s2Step230CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step230CompleteMoveArena : Arena := ⟨s2Step230ExitGvAfter.live∪{154},Finset.union_subset s2Step230ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step230Complete_repack : s2Step230ExitGvAfter.checkRepack s2Step230CompleteMoves=some s2Step230EarlyControlArena := by
  have owned : 787∈s2Step230ExitGvAfter.live := by norm_num [s2Step230ExitGvAfter,s2Step230ExitFAfter,arenaWires]
  have reserve : s2Step230ExitGvAfter.reserve {154}=some s2Step230CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step230ExitGvAfter,s2Step230ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step230CompleteMoveArena.retireSet {787}=s2Step230EarlyControlArena := by
    unfold Arena.retireSet s2Step230EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step230CompleteMoveArena,s2Step230ExitGvAfter,s2Step230ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step230CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step230CompleteMoveArena.retireSet {787}).checkRepack []=some s2Step230EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step230EarlyControl_branchOwned : ([810] : List Wire).toFinset⊆s2Step230EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_branch : compileHmrBranchRetirement s2Step230EarlyControlSigmaArena 810=some s2Step230EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step230EarlyControl_branchOwned
  · ext q
    simp [s2Step230EarlyControlOutputArena,s2Step230EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step230EarlyControl_classEqualityBorrow : s2Step230EarlyControlPositiveArena.checkBorrow (([820, 814] : List Wire).length-1) s2Step230EarlyControlLog.classWork=some s2Step230EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step230EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step230EarlyControlEqualityArena,s2Step230EarlyControlPositiveArena,s2Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step230EarlyControl_classEqualityOwned : ([820, 814] : List Wire).toFinset⊆s2Step230EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_classEquality : compileHmrEqualityLog s2Step230EarlyControlPositiveArena [820, 814] 0 s2Step230EarlyControlLog.classWork=some (s2Step230EarlyControlEqualityArena,s2Step230EarlyControlLog.classWork,s2Step230EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step230EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step230EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step230EarlyControl_classOwned : ([777, 797, 820] : List Wire).toFinset⊆s2Step230EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_positiveBorrow : s2Step230EarlyControlZeroArena.checkBorrow (1) s2Step230EarlyControlLog.positiveWork=some s2Step230EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step230EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step230EarlyControlPositiveArena,s2Step230EarlyControlZeroArena,s2Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step230EarlyControl_class : compileHmrSourceClassLog s2Step230EarlyControlZeroArena false 777 s2Step230EarlyControlZeroPlan.top 0 820 s2Step230EarlyControlLog.positiveWork s2Step230EarlyControlLog.classWork=some s2Step230EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step230EarlyControlClassPlan s2Step230EarlyControlZeroArena false 777 s2Step230EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step230EarlyControl_classOwned
  · exact s2Step230EarlyControl_positiveBorrow
  · exact s2Step230EarlyControl_classEquality

private theorem s2Step230EarlyControl_entryRecordOwned : ([810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_fitBorrow : s2Step230EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step230EarlyControlLog.recordFresh=some s2Step230EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step230EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step230EarlyControlFittedArena,s2Step230EarlyControlFlagArena,s2Step230EarlyControlLog,arenaWires]

private theorem s2Step230EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step230EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_fit : compileHmrRecordGrowLog s2Step230EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step230EarlyControlLog.recordFresh=some s2Step230EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step230EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step230EarlyControl_fitBorrow

private theorem s2Step230EarlyControl_flagsBorrow : s2Step230EarlyControlEqualityArena.checkBorrow (6) s2Step230EarlyControlLog.flagWork=some s2Step230EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step230EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step230EarlyControlFlagArena,s2Step230EarlyControlEqualityArena,s2Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step230EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step230EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_flags : compileHmrFlagsLog s2Step230EarlyControlClassPlan.equalityArena s2Step230EarlyControlClassPlan.equality.top 253 252 251 s2Step230EarlyControlLog.flagWork=some s2Step230EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step230EarlyControl_flagsOwned⟩
  · exact s2Step230EarlyControl_flagsBorrow

private theorem s2Step230EarlyControl_historyBorrow : s2Step230EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step230EarlyControlLog.recordFresh=some s2Step230EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step230EarlyControlHistoryArena,s2Step230EarlyControlArena,s2Step230EarlyControlLog,arenaWires]

private theorem s2Step230EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_history : compileHmrRecordGrowLog s2Step230EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step230EarlyControlLog.recordFresh=some s2Step230EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step230EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step230EarlyControl_historyBorrow

private theorem s2Step230EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step230EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step230EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_sigmaRelease : s2Step230EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step230EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step230EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step230EarlyControlSigmaArena,s2Step230EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step230EarlyControl_sigma : compileHmrSigmaDropLog s2Step230EarlyControlHistoryArena false 0 0 254 820 []=some s2Step230EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step230EarlyControl_sigmaOwned⟩
  · exact s2Step230EarlyControl_sigmaRelease

private theorem s2Step230EarlyControl_zeroBorrow : s2Step230EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step230EarlyControlLog.zeroWork=some s2Step230EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step230EarlyControlZeroArena,s2Step230EarlyControlArena,s2Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step230EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step230EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EarlyControl_zero : compileHmrEqualityLog s2Step230EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step230EarlyControlLog.zeroWork=some (s2Step230EarlyControlZeroArena,s2Step230EarlyControlLog.zeroWork,s2Step230EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step230EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step230EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step230EarlyControl_logged : s2Step230EarlyControlPlan.Logged s2Step230EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 810 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step230EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step230EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step230EarlyControl_zero
  · exact s2Step230EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step230EarlyControl_flags
  · exact s2Step230EarlyControl_fit
  · exact s2Step230EarlyControl_history
  · exact s2Step230EarlyControl_sigma
  · exact s2Step230EarlyControl_branch

private theorem s2Step230EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step230EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 810 49 s2Step230EarlyControlLog=some s2Step230EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step230EarlyControlPlan s2Step230EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 810 49 s2Step230EarlyControl_logged

private def s2Step230EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step230EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step230EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩

private def s2Step230EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step230FrontBank : WindowBank := ⟨s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow⟩

private def s2Step230Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 800, 768]

private def s2Step230Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 805, 769]

private def s2Step230Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 770]

private def s2Step230Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 771]

private theorem s2Step230Counter_apart : Disjoint s2Step230HeadFvAfter.live s2Step230CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step230HeadFvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230Counter_borrowed : s2Step230HeadFvAfter.checkBorrow 4 s2Step230CounterWork=some s2Step230CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step230HeadFvAfter s2Step230CounterDuring s2Step230CounterWork.toFinset s2Step230Counter_bounded s2Step230Counter_apart rfl

private theorem s2Step230Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step230HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step230HeadFvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230Counter_checked : compileHmrCounterStepLog s2Step230HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step230CounterWork=some s2Step230CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step230HeadFvAfter.live := fun q hq => s2Step230Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step230Counter_borrowed

private def s2Step230EntryFAfter : Arena := s2Step230EntryFBefore

private theorem s2Step230EntryBank_incomingDistinct : ([s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230EntryF_Incoming : rowsOwned s2Step230EntryFBefore [s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow] 0 s2Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230EntryBank_outgoingOwned : rowsOwned s2Step230EntryGvAfter [s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step230EntryGvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230EntryF_Outgoing : rowsOwned s2Step230EntryGvAfter [s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] :=
  hmrRows_owned_drop s2Step230EntryGvAfter [s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] 0 s2Step230EntryBank_outgoingOwned

private theorem s2Step230EntryF_distinct : (s2Step230EntryFRow.sign::s2Step230EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230EntryF_owned : (s2Step230EntryFRow.sign::s2Step230EntryFRow.payload).toFinset⊆s2Step230EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EntryF_reserved : s2Step230EntryFBefore.reserve s2Step230EntryFFresh.toFinset=some s2Step230EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230EntryFFresh,arenaWires]
  · norm_num [s2Step230EntryFBefore,s2Step230EntryFFresh,arenaWires]
  · simp only [s2Step230EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step230EntryF_checked : planRowResizeLog s2Step230EntryFBefore s2Step230EntryFRow 155 s2Step230EntryFFresh=
    some (s2Step230EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩,growRow 768 s2Step230EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step230EntryFBefore s2Step230EntryFAfter s2Step230EntryFRow 155 s2Step230EntryFFresh
    s2Step230EntryF_distinct s2Step230EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230EntryF_reserved
  have rowEq : WindowRow.mk (s2Step230EntryFRow.payload++s2Step230EntryFFresh) s2Step230EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step230EntryFvAfter : Arena := s2Step230EntryFBefore

private def s2Step230EntryFvBefore : Arena := s2Step230EntryFBefore

private theorem s2Step230EntryFv_Incoming : rowsOwned s2Step230EntryFvBefore [s2Step230EntryFvRow,s2Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow] 2 s2Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230EntryFv_Outgoing : rowsOwned s2Step230EntryGvAfter [s2Step230EntryFvOut,s2Step230EntryGvOut] :=
  hmrRows_owned_drop s2Step230EntryGvAfter [s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] 2 s2Step230EntryBank_outgoingOwned

private theorem s2Step230EntryFv_distinct : (s2Step230EntryFvRow.sign::s2Step230EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230EntryFv_owned : (s2Step230EntryFvRow.sign::s2Step230EntryFvRow.payload).toFinset⊆s2Step230EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EntryFv_reserved : s2Step230EntryFvBefore.reserve s2Step230EntryFvFresh.toFinset=some s2Step230EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230EntryFvFresh,arenaWires]
  · norm_num [s2Step230EntryFvBefore,s2Step230EntryFBefore,s2Step230EntryFvFresh,arenaWires]
  · simp only [s2Step230EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step230EntryFv_checked : planRowResizeLog s2Step230EntryFvBefore s2Step230EntryFvRow 129 s2Step230EntryFvFresh=
    some (s2Step230EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩,growRow 770 s2Step230EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step230EntryFvBefore s2Step230EntryFvAfter s2Step230EntryFvRow 129 s2Step230EntryFvFresh
    s2Step230EntryFv_distinct s2Step230EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step230EntryFvRow.payload++s2Step230EntryFvFresh) s2Step230EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step230EntryGAfter : Arena := s2Step230EntryFBefore

private def s2Step230EntryGBefore : Arena := s2Step230EntryFBefore

private theorem s2Step230EntryG_Incoming : rowsOwned s2Step230EntryGBefore [s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow] 1 s2Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230EntryG_Outgoing : rowsOwned s2Step230EntryGvAfter [s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] :=
  hmrRows_owned_drop s2Step230EntryGvAfter [s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] 1 s2Step230EntryBank_outgoingOwned

private theorem s2Step230EntryG_distinct : (s2Step230EntryGRow.sign::s2Step230EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230EntryG_owned : (s2Step230EntryGRow.sign::s2Step230EntryGRow.payload).toFinset⊆s2Step230EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EntryG_reserved : s2Step230EntryGBefore.reserve s2Step230EntryGFresh.toFinset=some s2Step230EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230EntryGFresh,arenaWires]
  · norm_num [s2Step230EntryGBefore,s2Step230EntryFBefore,s2Step230EntryGFresh,arenaWires]
  · simp only [s2Step230EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step230EntryG_checked : planRowResizeLog s2Step230EntryGBefore s2Step230EntryGRow 155 s2Step230EntryGFresh=
    some (s2Step230EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩,growRow 769 s2Step230EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step230EntryGBefore s2Step230EntryGAfter s2Step230EntryGRow 155 s2Step230EntryGFresh
    s2Step230EntryG_distinct s2Step230EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230EntryG_reserved
  have rowEq : WindowRow.mk (s2Step230EntryGRow.payload++s2Step230EntryGFresh) s2Step230EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step230EntryGvBefore : Arena := s2Step230EntryFBefore

private theorem s2Step230EntryGv_Incoming : rowsOwned s2Step230EntryGvBefore [s2Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow] 3 s2Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230EntryGv_Outgoing : rowsOwned s2Step230EntryGvAfter [s2Step230EntryGvOut] :=
  hmrRows_owned_drop s2Step230EntryGvAfter [s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut] 3 s2Step230EntryBank_outgoingOwned

private theorem s2Step230EntryGv_distinct : (s2Step230EntryGvRow.sign::s2Step230EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230EntryGv_owned : (s2Step230EntryGvRow.sign::s2Step230EntryGvRow.payload).toFinset⊆s2Step230EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230EntryGv_reserved : s2Step230EntryGvBefore.reserve s2Step230EntryGvFresh.toFinset=some s2Step230EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230EntryGvFresh,arenaWires]
  · norm_num [s2Step230EntryGvBefore,s2Step230EntryFBefore,s2Step230EntryGvFresh,arenaWires]
  · simp only [s2Step230EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step230EntryGv_checked : planRowResizeLog s2Step230EntryGvBefore s2Step230EntryGvRow 129 s2Step230EntryGvFresh=
    some (s2Step230EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩,growRow 771 s2Step230EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step230EntryGvBefore s2Step230EntryGvAfter s2Step230EntryGvRow 129 s2Step230EntryGvFresh
    s2Step230EntryGv_distinct s2Step230EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step230EntryGvRow.payload++s2Step230EntryGvFresh) s2Step230EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step230EntryBank_rows : planWindowRowsLog s2Step230EntryFBefore [(s2Step230EntryFRow,155),(s2Step230EntryGRow,155),(s2Step230EntryFvRow,129),(s2Step230EntryGvRow,129)] [s2Step230EntryFFresh,s2Step230EntryGFresh,s2Step230EntryFvFresh,s2Step230EntryGvFresh]=
    some (s2Step230EntryGvAfter,[s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut],(growRow 768 s2Step230EntryFFresh ++ (growRow 769 s2Step230EntryGFresh ++ (growRow 770 s2Step230EntryFvFresh ++ (growRow 771 s2Step230EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step230EntryGvAfter [] []=some (s2Step230EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step230EntryGvBefore s2Step230EntryGvAfter s2Step230EntryGvAfter
    s2Step230EntryGvRow s2Step230EntryGvOut 129 s2Step230EntryGvFresh [] [] []
    (growRow 771 s2Step230EntryGvFresh) ([]) s2Step230EntryGv_Incoming s2Step230EntryGv_checked h4 s2Step230EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step230EntryFvBefore s2Step230EntryFvAfter s2Step230EntryGvAfter
    s2Step230EntryFvRow s2Step230EntryFvOut 129 s2Step230EntryFvFresh [(s2Step230EntryGvRow,129)] [s2Step230EntryGvFresh] [s2Step230EntryGvOut]
    (growRow 770 s2Step230EntryFvFresh) ((growRow 771 s2Step230EntryGvFresh ++ [])) s2Step230EntryFv_Incoming s2Step230EntryFv_checked h3 s2Step230EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step230EntryGBefore s2Step230EntryGAfter s2Step230EntryGvAfter
    s2Step230EntryGRow s2Step230EntryGOut 155 s2Step230EntryGFresh [(s2Step230EntryFvRow,129),(s2Step230EntryGvRow,129)] [s2Step230EntryFvFresh,s2Step230EntryGvFresh] [s2Step230EntryFvOut,s2Step230EntryGvOut]
    (growRow 769 s2Step230EntryGFresh) ((growRow 770 s2Step230EntryFvFresh ++ (growRow 771 s2Step230EntryGvFresh ++ []))) s2Step230EntryG_Incoming s2Step230EntryG_checked h2 s2Step230EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step230EntryFBefore s2Step230EntryFAfter s2Step230EntryGvAfter
    s2Step230EntryFRow s2Step230EntryFOut 155 s2Step230EntryFFresh [(s2Step230EntryGRow,155),(s2Step230EntryFvRow,129),(s2Step230EntryGvRow,129)] [s2Step230EntryGFresh,s2Step230EntryFvFresh,s2Step230EntryGvFresh] [s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut]
    (growRow 768 s2Step230EntryFFresh) ((growRow 769 s2Step230EntryGFresh ++ (growRow 770 s2Step230EntryFvFresh ++ (growRow 771 s2Step230EntryGvFresh ++ [])))) s2Step230EntryF_Incoming s2Step230EntryF_checked h1 s2Step230EntryF_Outgoing
  exact h0

private theorem s2Step230EntryBank_checked : compileHmrBankResizeLog .entry s2Step230EntryFBefore ⟨s2Step230EntryFRow,s2Step230EntryGRow,s2Step230EntryFvRow,s2Step230EntryGvRow⟩ ⟨155,155,129,129⟩ [s2Step230EntryFFresh,s2Step230EntryGFresh,s2Step230EntryFvFresh,s2Step230EntryGvFresh]=
    some (s2Step230EntryGvAfter,⟨s2Step230EntryFOut,s2Step230EntryGOut,s2Step230EntryFvOut,s2Step230EntryGvOut⟩,(growRow 768 s2Step230EntryFFresh ++ (growRow 769 s2Step230EntryGFresh ++ (growRow 770 s2Step230EntryFvFresh ++ (growRow 771 s2Step230EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step230EntryBank_rows]
  rfl

private def s2Step230ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230ExitFBefore : Arena := s2Step230ExitGAfter

private def s2Step230ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 800],768⟩

private def s2Step230ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step230ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 805],769⟩

private def s2Step230ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private theorem s2Step230ExitBank_incomingDistinct : ([s2Step230ExitGRow,s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230ExitF_Incoming : rowsOwned s2Step230ExitFBefore [s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230ExitGRow,s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow] 1 s2Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230ExitFBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230ExitBank_outgoingOwned : rowsOwned s2Step230ExitGvAfter [s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step230ExitGvAfter (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230ExitF_Outgoing : rowsOwned s2Step230ExitGvAfter [s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] :=
  hmrRows_owned_drop s2Step230ExitGvAfter [s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] 1 s2Step230ExitBank_outgoingOwned

private theorem s2Step230ExitF_distinct : (s2Step230ExitFRow.sign::s2Step230ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230ExitF_owned : (s2Step230ExitFRow.sign::s2Step230ExitFRow.payload).toFinset⊆s2Step230ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230ExitFBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230ExitF_retired : s2Step230ExitFBefore.retireSet s2Step230ExitFExtra.toFinset=s2Step230ExitFAfter := by
  unfold Arena.retireSet s2Step230ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step230ExitFBefore,s2Step230ExitGAfter,s2Step230ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step230ExitF_checked : planRowResizeLog s2Step230ExitFBefore s2Step230ExitFRow 155 []=
    some (s2Step230ExitFAfter,s2Step230ExitFOut,shrinkRow 768 s2Step230ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step230ExitFBefore s2Step230ExitFRow 155 s2Step230ExitF_distinct s2Step230ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step230ExitFRow.payload.take 155) s2Step230ExitFRow.sign=s2Step230ExitFOut := by decide +kernel
  have hi : s2Step230ExitFRow.payload.drop 155=s2Step230ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step230ExitF_retired] at result
  exact result

private def s2Step230ExitFvAfter : Arena := s2Step230ExitFAfter

private def s2Step230ExitFvBefore : Arena := s2Step230ExitFAfter

private theorem s2Step230ExitFv_Incoming : rowsOwned s2Step230ExitFvBefore [s2Step230ExitFvRow,s2Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230ExitGRow,s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow] 2 s2Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230ExitFvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230ExitFv_Outgoing : rowsOwned s2Step230ExitGvAfter [s2Step230ExitFvOut,s2Step230ExitGvOut] :=
  hmrRows_owned_drop s2Step230ExitGvAfter [s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] 2 s2Step230ExitBank_outgoingOwned

private theorem s2Step230ExitFv_distinct : (s2Step230ExitFvRow.sign::s2Step230ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230ExitFv_owned : (s2Step230ExitFvRow.sign::s2Step230ExitFvRow.payload).toFinset⊆s2Step230ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230ExitFvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230ExitFv_reserved : s2Step230ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step230ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step230ExitFv_checked : planRowResizeLog s2Step230ExitFvBefore s2Step230ExitFvRow 130 []=
    some (s2Step230ExitFvAfter,s2Step230ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step230ExitFvBefore s2Step230ExitFvAfter s2Step230ExitFvRow 130 []
    s2Step230ExitFv_distinct s2Step230ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step230ExitFvRow.payload++[]) s2Step230ExitFvRow.sign=s2Step230ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step230ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step230ExitG_Incoming : rowsOwned s2Step230ExitGBefore [s2Step230ExitGRow,s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230ExitGRow,s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow] 0 s2Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230ExitGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230ExitG_Outgoing : rowsOwned s2Step230ExitGvAfter [s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] :=
  hmrRows_owned_drop s2Step230ExitGvAfter [s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] 0 s2Step230ExitBank_outgoingOwned

private theorem s2Step230ExitG_distinct : (s2Step230ExitGRow.sign::s2Step230ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230ExitG_owned : (s2Step230ExitGRow.sign::s2Step230ExitGRow.payload).toFinset⊆s2Step230ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230ExitGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230ExitG_retired : s2Step230ExitGBefore.retireSet s2Step230ExitGExtra.toFinset=s2Step230ExitGAfter := by
  unfold Arena.retireSet s2Step230ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step230ExitGBefore,s2Step230ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step230ExitG_checked : planRowResizeLog s2Step230ExitGBefore s2Step230ExitGRow 154 []=
    some (s2Step230ExitGAfter,s2Step230ExitGOut,shrinkRow 769 s2Step230ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step230ExitGBefore s2Step230ExitGRow 154 s2Step230ExitG_distinct s2Step230ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step230ExitGRow.payload.take 154) s2Step230ExitGRow.sign=s2Step230ExitGOut := by decide +kernel
  have hi : s2Step230ExitGRow.payload.drop 154=s2Step230ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step230ExitG_retired] at result
  exact result

private def s2Step230ExitGvBefore : Arena := s2Step230ExitFAfter

private theorem s2Step230ExitGv_Incoming : rowsOwned s2Step230ExitGvBefore [s2Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230ExitGRow,s2Step230ExitFRow,s2Step230ExitFvRow,s2Step230ExitGvRow] 3 s2Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230ExitGvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230ExitGv_Outgoing : rowsOwned s2Step230ExitGvAfter [s2Step230ExitGvOut] :=
  hmrRows_owned_drop s2Step230ExitGvAfter [s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut] 3 s2Step230ExitBank_outgoingOwned

private theorem s2Step230ExitGv_distinct : (s2Step230ExitGvRow.sign::s2Step230ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230ExitGv_owned : (s2Step230ExitGvRow.sign::s2Step230ExitGvRow.payload).toFinset⊆s2Step230ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230ExitGvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230ExitGv_reserved : s2Step230ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step230ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step230ExitGv_checked : planRowResizeLog s2Step230ExitGvBefore s2Step230ExitGvRow 130 []=
    some (s2Step230ExitGvAfter,s2Step230ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step230ExitGvBefore s2Step230ExitGvAfter s2Step230ExitGvRow 130 []
    s2Step230ExitGv_distinct s2Step230ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step230ExitGvRow.payload++[]) s2Step230ExitGvRow.sign=s2Step230ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step230ExitBank_rows : planWindowRowsLog s2Step230ExitGBefore [(s2Step230ExitGRow,154),(s2Step230ExitFRow,155),(s2Step230ExitFvRow,130),(s2Step230ExitGvRow,130)] [[],[],[],[]]=
    some (s2Step230ExitGvAfter,[s2Step230ExitGOut,s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut],(shrinkRow 769 s2Step230ExitGExtra ++ (shrinkRow 768 s2Step230ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step230ExitGvAfter [] []=some (s2Step230ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step230ExitGvBefore s2Step230ExitGvAfter s2Step230ExitGvAfter
    s2Step230ExitGvRow s2Step230ExitGvOut 130 [] [] [] []
    (growRow 771 []) ([]) s2Step230ExitGv_Incoming s2Step230ExitGv_checked h4 s2Step230ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step230ExitFvBefore s2Step230ExitFvAfter s2Step230ExitGvAfter
    s2Step230ExitFvRow s2Step230ExitFvOut 130 [] [(s2Step230ExitGvRow,130)] [[]] [s2Step230ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step230ExitFv_Incoming s2Step230ExitFv_checked h3 s2Step230ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step230ExitFBefore s2Step230ExitFAfter s2Step230ExitGvAfter
    s2Step230ExitFRow s2Step230ExitFOut 155 [] [(s2Step230ExitFvRow,130),(s2Step230ExitGvRow,130)] [[],[]] [s2Step230ExitFvOut,s2Step230ExitGvOut]
    (shrinkRow 768 s2Step230ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step230ExitF_Incoming s2Step230ExitF_checked h2 s2Step230ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step230ExitGBefore s2Step230ExitGAfter s2Step230ExitGvAfter
    s2Step230ExitGRow s2Step230ExitGOut 154 [] [(s2Step230ExitFRow,155),(s2Step230ExitFvRow,130),(s2Step230ExitGvRow,130)] [[],[],[]] [s2Step230ExitFOut,s2Step230ExitFvOut,s2Step230ExitGvOut]
    (shrinkRow 769 s2Step230ExitGExtra) ((shrinkRow 768 s2Step230ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step230ExitG_Incoming s2Step230ExitG_checked h1 s2Step230ExitG_Outgoing
  exact h0

private theorem s2Step230ExitBank_checked : compileHmrBankResizeLog .exit s2Step230ExitGBefore ⟨s2Step230ExitFRow,s2Step230ExitGRow,s2Step230ExitFvRow,s2Step230ExitGvRow⟩ ⟨155,154,130,130⟩ [[],[],[],[]]=
    some (s2Step230ExitGvAfter,⟨s2Step230ExitFOut,s2Step230ExitGOut,s2Step230ExitFvOut,s2Step230ExitGvOut⟩,(shrinkRow 769 s2Step230ExitGExtra ++ (shrinkRow 768 s2Step230ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step230ExitBank_rows]
  rfl

private theorem s2Step230Add0_apart : Disjoint s2Step230Add0Arena.live s2Step230Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step230Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230Add0_card : s2Step230Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step230Add0_borrowed : s2Step230Add0Arena.checkBorrow (hmrHybridCount s2Step230Add0Arena s2Step230Add0B.length) s2Step230Add0Work=some s2Step230Add0During := by
  have len : s2Step230Add0Work.length=hmrHybridCount s2Step230Add0Arena s2Step230Add0B.length := by
    rw [hmrHybridCount,s2Step230Add0_card]
    decide +kernel
  have nd : s2Step230Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step230Add0Arena s2Step230Add0During s2Step230Add0Work.toFinset s2Step230Add0_bounded s2Step230Add0_apart rfl

private theorem s2Step230Add0_distinct : (809::810::797::(s2Step230Add0A++s2Step230Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230Add0_owned : (809::810::797::(s2Step230Add0A++s2Step230Add0B)).toFinset⊆s2Step230Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step230Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230Add0_checked : compileHmrHybridCinLog s2Step230Add0Arena 810 809 797 s2Step230Add0A s2Step230Add0B s2Step230Add0Work=some s2Step230Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step230Add0Arena s2Step230Add0During 810 809 797 s2Step230Add0A s2Step230Add0B s2Step230Add0Work
    (by decide +kernel) (by decide +kernel) s2Step230Add0_distinct
    (fun q hq => s2Step230Add0_owned (List.mem_toFinset.mpr hq)) s2Step230Add0_borrowed

private theorem s2Step230Add1_apart : Disjoint s2Step230Add1Arena.live s2Step230Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step230Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230Add1_card : s2Step230Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step230Add1_borrowed : s2Step230Add1Arena.checkBorrow (hmrHybridCount s2Step230Add1Arena s2Step230Add1B.length) s2Step230Add1Work=some s2Step230Add1During := by
  have len : s2Step230Add1Work.length=hmrHybridCount s2Step230Add1Arena s2Step230Add1B.length := by
    rw [hmrHybridCount,s2Step230Add1_card]
    decide +kernel
  have nd : s2Step230Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step230Add1Arena s2Step230Add1During s2Step230Add1Work.toFinset s2Step230Add1_bounded s2Step230Add1_apart rfl

private theorem s2Step230Add1_distinct : (809::810::797::(s2Step230Add1A++s2Step230Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230Add1_owned : (809::810::797::(s2Step230Add1A++s2Step230Add1B)).toFinset⊆s2Step230Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step230Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230Add1_checked : compileHmrHybridCinLog s2Step230Add1Arena 810 809 797 s2Step230Add1A s2Step230Add1B s2Step230Add1Work=some s2Step230Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step230Add1Arena s2Step230Add1During 810 809 797 s2Step230Add1A s2Step230Add1B s2Step230Add1Work
    (by decide +kernel) (by decide +kernel) s2Step230Add1_distinct
    (fun q hq => s2Step230Add1_owned (List.mem_toFinset.mpr hq)) s2Step230Add1_borrowed

private theorem s2Step230F4_apart : Disjoint (s2Step230Add0A++s2Step230Add0B).toFinset (s2Step230Add1A++s2Step230Add1B).toFinset := by
  have nd : ((s2Step230Add0A++s2Step230Add0B)++(s2Step230Add1A++s2Step230Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step230F4_carry : s2Step230F4FlagArena.checkBorrow 1 [797]=some s2Step230Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step230F4FlagArena,s2Step230HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step230F4FlagArena,s2Step230HeadFvAfter,s2Step230Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step230F4_distinct : (820::810::809::797::((s2Step230Add0A++s2Step230Add1A)++(s2Step230Add0B++s2Step230Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230F4_flag : s2Step230HeadFvAfter.checkBorrow 1 [809]=some s2Step230F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step230HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step230F4_owned : (820::810::((s2Step230Add0A++s2Step230Add1A)++(s2Step230Add0B++s2Step230Add1B))).toFinset⊆s2Step230HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step230HeadFvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230F4_checked : compileHmrHybridF4Log s2Step230HeadFvAfter 820 810 s2Step230Add0A s2Step230Add0B s2Step230Add1A s2Step230Add1B [809] [797] s2Step230Add0Work s2Step230Add1Work=some s2Step230F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step230HeadFvAfter s2Step230F4FlagArena s2Step230Add0Arena s2Step230Add0During s2Step230Add1During 820 810
    s2Step230Add0A s2Step230Add0B s2Step230Add1A s2Step230Add1B [809] [797] s2Step230Add0Work s2Step230Add1Work
    (fun q hq => s2Step230F4_owned (List.mem_toFinset.mpr hq)) s2Step230F4_flag s2Step230F4_carry
    s2Step230F4_distinct s2Step230F4_apart s2Step230Add0_checked s2Step230Add1_checked

private theorem s2Step230Front_branch : s2Step230FrontSigmaArena.checkBorrow 1 [810]=some s2Step230HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step230FrontSigmaArena,s2Step230EntryGvAfter,s2Step230EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step230FrontSigmaArena,s2Step230EntryGvAfter,s2Step230EntryFBefore,s2Step230HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step230Front_entry : HmrFrontEntryValid s2Step230EntryFBefore s2Step230FrontBank 155 129 ⟨155,154,130,130⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step230FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step230EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step230EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step230FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step230Front_sigma : s2Step230EntryGvAfter.checkBorrow 1 [820]=some s2Step230FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step230EntryGvAfter,s2Step230EntryFBefore,arenaWires]
  · rfl

private def s2Step230HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230HeadFBefore : Arena := s2Step230HeadGAfter

private def s2Step230HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step230HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step230HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩

private def s2Step230HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private theorem s2Step230HeadBank_incomingDistinct : ([s2Step230HeadGRow,s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230HeadF_Incoming : rowsOwned s2Step230HeadFBefore [s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230HeadGRow,s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow] 1 s2Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230HeadBank_outgoingOwned : rowsOwned s2Step230HeadFvAfter [s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step230HeadFvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230HeadF_Outgoing : rowsOwned s2Step230HeadFvAfter [s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] :=
  hmrRows_owned_drop s2Step230HeadFvAfter [s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] 1 s2Step230HeadBank_outgoingOwned

private theorem s2Step230HeadF_distinct : (s2Step230HeadFRow.sign::s2Step230HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230HeadF_owned : (s2Step230HeadFRow.sign::s2Step230HeadFRow.payload).toFinset⊆s2Step230HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230HeadF_reserved : s2Step230HeadFBefore.reserve s2Step230HeadFFresh.toFinset=some s2Step230HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230HeadFFresh,arenaWires]
  · norm_num [s2Step230HeadFBefore,s2Step230HeadGAfter,s2Step230HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step230HeadFAfter,s2Step230HeadFBefore,s2Step230HeadGAfter,s2Step230HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step230HeadF_checked : planRowResizeLog s2Step230HeadFBefore s2Step230HeadFRow 156 s2Step230HeadFFresh=
    some (s2Step230HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 800],768⟩,growRow 768 s2Step230HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step230HeadFBefore s2Step230HeadFAfter s2Step230HeadFRow 156 s2Step230HeadFFresh
    s2Step230HeadF_distinct s2Step230HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230HeadF_reserved
  have rowEq : WindowRow.mk (s2Step230HeadFRow.payload++s2Step230HeadFFresh) s2Step230HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step230HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step230HeadFvBefore : Arena := s2Step230HeadGvAfter

private theorem s2Step230HeadFv_Incoming : rowsOwned s2Step230HeadFvBefore [s2Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230HeadGRow,s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow] 3 s2Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230HeadFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230HeadFv_Outgoing : rowsOwned s2Step230HeadFvAfter [s2Step230HeadFvOut] :=
  hmrRows_owned_drop s2Step230HeadFvAfter [s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] 3 s2Step230HeadBank_outgoingOwned

private theorem s2Step230HeadFv_distinct : (s2Step230HeadFvRow.sign::s2Step230HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230HeadFv_owned : (s2Step230HeadFvRow.sign::s2Step230HeadFvRow.payload).toFinset⊆s2Step230HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230HeadFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230HeadFv_reserved : s2Step230HeadFvBefore.reserve s2Step230HeadFvFresh.toFinset=some s2Step230HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230HeadFvFresh,arenaWires]
  · norm_num [s2Step230HeadFvBefore,s2Step230HeadGvAfter,s2Step230HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step230HeadFvAfter,s2Step230HeadFvBefore,s2Step230HeadGvAfter,s2Step230HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step230HeadFv_checked : planRowResizeLog s2Step230HeadFvBefore s2Step230HeadFvRow 130 s2Step230HeadFvFresh=
    some (s2Step230HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩,growRow 770 s2Step230HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step230HeadFvBefore s2Step230HeadFvAfter s2Step230HeadFvRow 130 s2Step230HeadFvFresh
    s2Step230HeadFv_distinct s2Step230HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step230HeadFvRow.payload++s2Step230HeadFvFresh) s2Step230HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step230HeadG_Incoming : rowsOwned s2Step230HeadGBefore [s2Step230HeadGRow,s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230HeadGRow,s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow] 0 s2Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230HeadG_Outgoing : rowsOwned s2Step230HeadFvAfter [s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] :=
  hmrRows_owned_drop s2Step230HeadFvAfter [s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] 0 s2Step230HeadBank_outgoingOwned

private theorem s2Step230HeadG_distinct : (s2Step230HeadGRow.sign::s2Step230HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230HeadG_owned : (s2Step230HeadGRow.sign::s2Step230HeadGRow.payload).toFinset⊆s2Step230HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230HeadG_reserved : s2Step230HeadGBefore.reserve s2Step230HeadGFresh.toFinset=some s2Step230HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230HeadGFresh,arenaWires]
  · norm_num [s2Step230HeadGBefore,s2Step230HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step230HeadGAfter,s2Step230HeadGBefore,s2Step230HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step230HeadG_checked : planRowResizeLog s2Step230HeadGBefore s2Step230HeadGRow 156 s2Step230HeadGFresh=
    some (s2Step230HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 805],769⟩,growRow 769 s2Step230HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step230HeadGBefore s2Step230HeadGAfter s2Step230HeadGRow 156 s2Step230HeadGFresh
    s2Step230HeadG_distinct s2Step230HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230HeadG_reserved
  have rowEq : WindowRow.mk (s2Step230HeadGRow.payload++s2Step230HeadGFresh) s2Step230HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step230HeadGvBefore : Arena := s2Step230HeadFAfter

private theorem s2Step230HeadGv_Incoming : rowsOwned s2Step230HeadGvBefore [s2Step230HeadGvRow,s2Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step230HeadGRow,s2Step230HeadFRow,s2Step230HeadGvRow,s2Step230HeadFvRow] 2 s2Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step230HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step230HeadGv_Outgoing : rowsOwned s2Step230HeadFvAfter [s2Step230HeadGvOut,s2Step230HeadFvOut] :=
  hmrRows_owned_drop s2Step230HeadFvAfter [s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut] 2 s2Step230HeadBank_outgoingOwned

private theorem s2Step230HeadGv_distinct : (s2Step230HeadGvRow.sign::s2Step230HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step230HeadGv_owned : (s2Step230HeadGvRow.sign::s2Step230HeadGvRow.payload).toFinset⊆s2Step230HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step230HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step230HeadGv_reserved : s2Step230HeadGvBefore.reserve s2Step230HeadGvFresh.toFinset=some s2Step230HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step230HeadGvFresh,arenaWires]
  · norm_num [s2Step230HeadGvBefore,s2Step230HeadFAfter,s2Step230HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step230HeadGvAfter,s2Step230HeadGvBefore,s2Step230HeadFAfter,s2Step230HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step230HeadGv_checked : planRowResizeLog s2Step230HeadGvBefore s2Step230HeadGvRow 130 s2Step230HeadGvFresh=
    some (s2Step230HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩,growRow 771 s2Step230HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step230HeadGvBefore s2Step230HeadGvAfter s2Step230HeadGvRow 130 s2Step230HeadGvFresh
    s2Step230HeadGv_distinct s2Step230HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step230HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step230HeadGvRow.payload++s2Step230HeadGvFresh) s2Step230HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step230HeadBank_rows : planWindowRowsLog s2Step230HeadGBefore [(s2Step230HeadGRow,156),(s2Step230HeadFRow,156),(s2Step230HeadGvRow,130),(s2Step230HeadFvRow,130)] [s2Step230HeadGFresh,s2Step230HeadFFresh,s2Step230HeadGvFresh,s2Step230HeadFvFresh]=
    some (s2Step230HeadFvAfter,[s2Step230HeadGOut,s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut],(growRow 769 s2Step230HeadGFresh ++ (growRow 768 s2Step230HeadFFresh ++ (growRow 771 s2Step230HeadGvFresh ++ (growRow 770 s2Step230HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step230HeadFvAfter [] []=some (s2Step230HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step230HeadFvBefore s2Step230HeadFvAfter s2Step230HeadFvAfter
    s2Step230HeadFvRow s2Step230HeadFvOut 130 s2Step230HeadFvFresh [] [] []
    (growRow 770 s2Step230HeadFvFresh) ([]) s2Step230HeadFv_Incoming s2Step230HeadFv_checked h4 s2Step230HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step230HeadGvBefore s2Step230HeadGvAfter s2Step230HeadFvAfter
    s2Step230HeadGvRow s2Step230HeadGvOut 130 s2Step230HeadGvFresh [(s2Step230HeadFvRow,130)] [s2Step230HeadFvFresh] [s2Step230HeadFvOut]
    (growRow 771 s2Step230HeadGvFresh) ((growRow 770 s2Step230HeadFvFresh ++ [])) s2Step230HeadGv_Incoming s2Step230HeadGv_checked h3 s2Step230HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step230HeadFBefore s2Step230HeadFAfter s2Step230HeadFvAfter
    s2Step230HeadFRow s2Step230HeadFOut 156 s2Step230HeadFFresh [(s2Step230HeadGvRow,130),(s2Step230HeadFvRow,130)] [s2Step230HeadGvFresh,s2Step230HeadFvFresh] [s2Step230HeadGvOut,s2Step230HeadFvOut]
    (growRow 768 s2Step230HeadFFresh) ((growRow 771 s2Step230HeadGvFresh ++ (growRow 770 s2Step230HeadFvFresh ++ []))) s2Step230HeadF_Incoming s2Step230HeadF_checked h2 s2Step230HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step230HeadGBefore s2Step230HeadGAfter s2Step230HeadFvAfter
    s2Step230HeadGRow s2Step230HeadGOut 156 s2Step230HeadGFresh [(s2Step230HeadFRow,156),(s2Step230HeadGvRow,130),(s2Step230HeadFvRow,130)] [s2Step230HeadFFresh,s2Step230HeadGvFresh,s2Step230HeadFvFresh] [s2Step230HeadFOut,s2Step230HeadGvOut,s2Step230HeadFvOut]
    (growRow 769 s2Step230HeadGFresh) ((growRow 768 s2Step230HeadFFresh ++ (growRow 771 s2Step230HeadGvFresh ++ (growRow 770 s2Step230HeadFvFresh ++ [])))) s2Step230HeadG_Incoming s2Step230HeadG_checked h1 s2Step230HeadG_Outgoing
  exact h0

private theorem s2Step230HeadBank_checked : compileHmrBankResizeLog .headroom s2Step230HeadGBefore ⟨s2Step230HeadFRow,s2Step230HeadGRow,s2Step230HeadFvRow,s2Step230HeadGvRow⟩ ⟨156,156,130,130⟩ [s2Step230HeadGFresh,s2Step230HeadFFresh,s2Step230HeadGvFresh,s2Step230HeadFvFresh]=
    some (s2Step230HeadFvAfter,⟨s2Step230HeadFOut,s2Step230HeadGOut,s2Step230HeadFvOut,s2Step230HeadGvOut⟩,(growRow 769 s2Step230HeadGFresh ++ (growRow 768 s2Step230HeadFFresh ++ (growRow 771 s2Step230HeadGvFresh ++ (growRow 770 s2Step230HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step230HeadBank_rows]
  rfl

private theorem s2Step230Front_checked : compileHmrSourceFrontLog s2Step230EntryFBefore s2Step230FrontBank 155 129 ⟨155,154,130,130⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step230FrontLog=some s2Step230FrontPlan := by
  have pairEq : s2Step230FrontPair=⟨s2Step230HeadFRow,s2Step230HeadGRow,s2Step230HeadFvRow,s2Step230HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step230FrontHead=⟨s2Step230ExitFRow,s2Step230ExitGRow,s2Step230ExitFvRow,s2Step230ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step230Add0A=s2Step230FrontHead.f.wires := by decide +kernel
  have gEq : s2Step230Add0B=s2Step230FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step230Add1A=s2Step230FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step230Add1B=s2Step230FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step230EntryFBefore s2Step230FrontBank 155 129 ⟨155,154,130,130⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step230FrontLog s2Step230FrontPlan
  · exact s2Step230Front_entry
  · exact s2Step230EntryBank_checked
  · exact s2Step230Front_sigma
  · rfl
  · exact s2Step230Front_branch
  · rfl
  · simpa only [s2Step230FrontPlan,pairEq] using s2Step230HeadBank_checked
  · simpa only [s2Step230FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step230F4_checked
  · exact s2Step230Counter_checked
  · rfl
  · simpa only [s2Step230FrontPlan,headEq] using s2Step230ExitBank_checked

private theorem s2Step230Complete_explicit_checked : compileHmrEarlyStepLog s2Step230EntryFBefore s2Step230FrontBank 155 129 ⟨155,154,130,130⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step230CompleteLog=some s2Step230CompletePlan := by
  let Q := s2Step230EarlyControlPlan
  have hq := s2Step230EarlyControl_plan_checked
  have fv1 : s2Step230CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step230CompleteOut.fv.payload[2]?.getD s2Step230CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step230CompleteOut.fv.payload[3]?.getD s2Step230CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step230CompleteOut.fv.payload[4]?.getD s2Step230CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step230EntryFBefore s2Step230EarlyControlArena s2Step230FrontBank 155 129 ⟨155,154,130,130⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step230CompleteLog s2Step230FrontPlan Q
    s2Step230Front_checked s2Step230Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step230Complete_owned s2Step230Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step230EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 s2Step230CompleteOut.fv.second (s2Step230CompleteOut.fv.payload[2]?.getD s2Step230CompleteOut.fv.sign) (s2Step230CompleteOut.fv.payload[3]?.getD s2Step230CompleteOut.fv.sign) (s2Step230CompleteOut.fv.payload[4]?.getD s2Step230CompleteOut.fv.sign) 810 49 s2Step230EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep230Arena : Arena := s2Step230EntryFBefore
def s2PrivateStep230Bank : WindowBank := s2Step230FrontBank
def s2PrivateStep230Spec : HmrSourceWalkStepLog := ⟨155,129,⟨155,154,130,130⟩,49,.early s2Step230CompleteLog⟩
def s2PrivateStep230Plan : HmrSourceStepPlan := .early s2Step230CompletePlan
theorem s2PrivateStep230_source : s2PrivateStep230Spec=s2ObservedLogs224[6] := rfl
theorem s2PrivateStep230_checked : compileHmrSourceStepLog s2PrivateStep230Arena s2PrivateStep230Bank
    s2PrivateStep230Spec.fgWidth s2PrivateStep230Spec.vWidth s2PrivateStep230Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 230 s2PrivateStep230Spec.need none s2PrivateStep230Spec.log=some s2PrivateStep230Plan := by
  change compileHmrSourceStepLog s2Step230EntryFBefore s2Step230FrontBank 155 129 ⟨155,154,130,130⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 230 49 none (.early s2Step230CompleteLog)=some (.early s2Step230CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 230<498)]
  rw [s2Step230Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
