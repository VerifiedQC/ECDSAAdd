import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep222
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

private def s2Step224CompleteMoves : List (Wire × Wire) := [(812,157)]

private def s2Step224EarlyControlLog : HmrEarlyControlLog := ⟨[812, 811, 790, 804, 808],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step224FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [780]],[[808], [804], [811], [790]],[[], [], [], []]⟩,[797],[849],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step224CompleteLog : HmrEarlyStepLog := ⟨s2Step224FrontLog,s2Step224CompleteMoves,s2Step224EarlyControlLog⟩

private def s2Step224ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step224ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step224ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩

private def s2Step224ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step224FrontOut : WindowBank := ⟨s2Step224ExitFOut,s2Step224ExitGOut,s2Step224ExitFvOut,s2Step224ExitGvOut⟩

private def s2Step224CompleteOut : WindowBank := s2Step224FrontOut.repacked s2Step224CompleteMoves

private def s2Step224EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step224EarlyControlPositiveArena,[814],s2Step224EarlyControlEqualityArena,[882],⟨⟨797,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step224EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,812⟩,⟨⟨774,false⟩,811⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,804⟩,⟨⟨777,false⟩,808⟩]⟩

private def s2Step224EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step224EarlyControlZeroArena,s2Step224EarlyControlZeroPlan,s2Step224EarlyControlClassPlan,s2Step224EarlyControlFlagArena,s2Step224EarlyControlFittedArena,s2Step224EarlyControlHistoryArena,s2Step224EarlyControlSigmaArena,s2Step224EarlyControlOutputArena,s2Step224EarlyControlLog⟩

private def s2Step224CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step224Counter_bounded : s2Step224CounterWork.toFinset⊆arenaWires := by norm_num [s2Step224CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step224HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224CounterDuring : Arena := ⟨s2Step224HeadFvAfter.live∪s2Step224CounterWork.toFinset,Finset.union_subset s2Step224HeadFvAfter.bounded s2Step224Counter_bounded⟩

private def s2Step224EntryFFresh : List Wire := []

private def s2Step224EntryFvFresh : List Wire := []

private def s2Step224EntryGFresh : List Wire := []

private def s2Step224EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EntryGvFresh : List Wire := [780]

private def s2Step224ExitFExtra : List Wire := [804]

private def s2Step224ExitFvExtra : List Wire := [790]

private def s2Step224ExitGExtra : List Wire := [157, 808]

private def s2Step224ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224ExitGvExtra : List Wire := [811]

private def s2Step224Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step224Add0_bounded : s2Step224Add0Work.toFinset⊆arenaWires := by
  have h : s2Step224Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step224Add0During : Arena := ⟨s2Step224Add0Arena.live∪s2Step224Add0Work.toFinset,Finset.union_subset s2Step224Add0Arena.bounded s2Step224Add0_bounded⟩

private def s2Step224Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step224Add1_bounded : s2Step224Add1Work.toFinset⊆arenaWires := by
  have h : s2Step224Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step224Add1During : Arena := ⟨s2Step224Add1Arena.live∪s2Step224Add1Work.toFinset,Finset.union_subset s2Step224Add1Arena.bounded s2Step224Add1_bounded⟩

private def s2Step224F4FlagArena : Arena := ⟨s2Step224HeadFvAfter.live∪{814},Finset.union_subset s2Step224HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step224F4Plan : HmrHybridF4Plan := ⟨s2Step224F4FlagArena,[814],s2Step224Add0Arena,[882],s2Step224Add0During,s2Step224Add0Work,s2Step224Add1During,s2Step224Add1Work⟩

private def s2Step224HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 804],768⟩

private def s2Step224HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step224HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 808],769⟩

private def s2Step224HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 811],771⟩

private def s2Step224FrontHead : WindowBank := ⟨s2Step224HeadFOut,s2Step224HeadGOut,s2Step224HeadFvOut,s2Step224HeadGvOut⟩

private def s2Step224EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step224EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step224EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩

private def s2Step224EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step224FrontPair : WindowBank := ⟨s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut⟩

private def s2Step224FrontSigmaArena : Arena := ⟨s2Step224EntryGvAfter.live∪{797},Finset.union_subset s2Step224EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step224HeadFFresh : List Wire := [804]

private def s2Step224HeadFvFresh : List Wire := [790]

private def s2Step224HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224HeadGFresh : List Wire := [808]

private def s2Step224HeadGvFresh : List Wire := [811]

private def s2Step224FrontPlan : HmrSourceFront := ⟨s2Step224EntryGvAfter,s2Step224FrontPair,(growRow 768 s2Step224EntryFFresh ++ (growRow 769 s2Step224EntryGFresh ++ (growRow 770 s2Step224EntryFvFresh ++ (growRow 771 s2Step224EntryGvFresh ++ [])))),s2Step224FrontSigmaArena,[797],s2Step224HeadGBefore,[849],
  s2Step224HeadFvAfter,s2Step224FrontHead,(growRow 769 s2Step224HeadGFresh ++ (growRow 768 s2Step224HeadFFresh ++ (growRow 771 s2Step224HeadGvFresh ++ (growRow 770 s2Step224HeadFvFresh ++ [])))),s2Step224F4Plan,s2Step224CounterDuring,s2Step224CounterWork,s2Step224ExitGvAfter,s2Step224FrontOut,(shrinkRow 769 s2Step224ExitGExtra ++ (shrinkRow 768 s2Step224ExitFExtra ++ (shrinkRow 770 s2Step224ExitFvExtra ++ (shrinkRow 771 s2Step224ExitGvExtra ++ []))))⟩

private def s2Step224CompletePlan : HmrEarlyStepPlan := ⟨s2Step224FrontPlan,s2Step224EarlyControlArena,s2Step224EarlyControlPlan,s2Step224CompleteMoves⟩

private theorem s2Step224Complete_apart : List.Disjoint (s2Step224CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step224CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step224Complete_owned : (s2Step224CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step224CompleteMoveArena : Arena := ⟨s2Step224ExitGvAfter.live∪{157},Finset.union_subset s2Step224ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step224Complete_repack : s2Step224ExitGvAfter.checkRepack s2Step224CompleteMoves=some s2Step224EarlyControlArena := by
  have owned : 812∈s2Step224ExitGvAfter.live := by norm_num [s2Step224ExitGvAfter,arenaWires]
  have reserve : s2Step224ExitGvAfter.reserve {157}=some s2Step224CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step224ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step224CompleteMoveArena.retireSet {812}=s2Step224EarlyControlArena := by
    unfold Arena.retireSet s2Step224EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step224CompleteMoveArena,s2Step224ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step224CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step224CompleteMoveArena.retireSet {812}).checkRepack []=some s2Step224EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step224EarlyControl_branchOwned : ([849] : List Wire).toFinset⊆s2Step224EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_branch : compileHmrBranchRetirement s2Step224EarlyControlSigmaArena 849=some s2Step224EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step224EarlyControl_branchOwned
  · ext q
    simp [s2Step224EarlyControlOutputArena,s2Step224EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step224EarlyControl_classEqualityBorrow : s2Step224EarlyControlPositiveArena.checkBorrow (([797, 814] : List Wire).length-1) s2Step224EarlyControlLog.classWork=some s2Step224EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step224EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step224EarlyControlEqualityArena,s2Step224EarlyControlPositiveArena,s2Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step224EarlyControl_classEqualityOwned : ([797, 814] : List Wire).toFinset⊆s2Step224EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_classEquality : compileHmrEqualityLog s2Step224EarlyControlPositiveArena [797, 814] 0 s2Step224EarlyControlLog.classWork=some (s2Step224EarlyControlEqualityArena,s2Step224EarlyControlLog.classWork,s2Step224EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step224EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step224EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step224EarlyControl_classOwned : ([777, 808, 797] : List Wire).toFinset⊆s2Step224EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_positiveBorrow : s2Step224EarlyControlZeroArena.checkBorrow (1) s2Step224EarlyControlLog.positiveWork=some s2Step224EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step224EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step224EarlyControlPositiveArena,s2Step224EarlyControlZeroArena,s2Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step224EarlyControl_class : compileHmrSourceClassLog s2Step224EarlyControlZeroArena false 777 s2Step224EarlyControlZeroPlan.top 0 797 s2Step224EarlyControlLog.positiveWork s2Step224EarlyControlLog.classWork=some s2Step224EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step224EarlyControlClassPlan s2Step224EarlyControlZeroArena false 777 s2Step224EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step224EarlyControl_classOwned
  · exact s2Step224EarlyControl_positiveBorrow
  · exact s2Step224EarlyControl_classEquality

private theorem s2Step224EarlyControl_entryRecordOwned : ([849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_fitBorrow : s2Step224EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step224EarlyControlLog.recordFresh=some s2Step224EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step224EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step224EarlyControlFittedArena,s2Step224EarlyControlFlagArena,s2Step224EarlyControlLog,arenaWires]

private theorem s2Step224EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step224EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_fit : compileHmrRecordGrowLog s2Step224EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step224EarlyControlLog.recordFresh=some s2Step224EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step224EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step224EarlyControl_fitBorrow

private theorem s2Step224EarlyControl_flagsBorrow : s2Step224EarlyControlEqualityArena.checkBorrow (6) s2Step224EarlyControlLog.flagWork=some s2Step224EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step224EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step224EarlyControlFlagArena,s2Step224EarlyControlEqualityArena,s2Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step224EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step224EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_flags : compileHmrFlagsLog s2Step224EarlyControlClassPlan.equalityArena s2Step224EarlyControlClassPlan.equality.top 253 252 251 s2Step224EarlyControlLog.flagWork=some s2Step224EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step224EarlyControl_flagsOwned⟩
  · exact s2Step224EarlyControl_flagsBorrow

private theorem s2Step224EarlyControl_historyBorrow : s2Step224EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step224EarlyControlLog.recordFresh=some s2Step224EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step224EarlyControlHistoryArena,s2Step224EarlyControlArena,s2Step224EarlyControlLog,arenaWires]

private theorem s2Step224EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_history : compileHmrRecordGrowLog s2Step224EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step224EarlyControlLog.recordFresh=some s2Step224EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step224EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step224EarlyControl_historyBorrow

private theorem s2Step224EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step224EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step224EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_sigmaRelease : s2Step224EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step224EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step224EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step224EarlyControlSigmaArena,s2Step224EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step224EarlyControl_sigma : compileHmrSigmaDropLog s2Step224EarlyControlHistoryArena false 0 0 254 797 []=some s2Step224EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step224EarlyControl_sigmaOwned⟩
  · exact s2Step224EarlyControl_sigmaRelease

private theorem s2Step224EarlyControl_zeroBorrow : s2Step224EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step224EarlyControlLog.zeroWork=some s2Step224EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step224EarlyControlZeroArena,s2Step224EarlyControlArena,s2Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step224EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step224EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EarlyControl_zero : compileHmrEqualityLog s2Step224EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step224EarlyControlLog.zeroWork=some (s2Step224EarlyControlZeroArena,s2Step224EarlyControlLog.zeroWork,s2Step224EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step224EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step224EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step224EarlyControl_logged : s2Step224EarlyControlPlan.Logged s2Step224EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 849 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step224EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step224EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step224EarlyControl_zero
  · exact s2Step224EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step224EarlyControl_flags
  · exact s2Step224EarlyControl_fit
  · exact s2Step224EarlyControl_history
  · exact s2Step224EarlyControl_sigma
  · exact s2Step224EarlyControl_branch

private theorem s2Step224EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step224EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 849 47 s2Step224EarlyControlLog=some s2Step224EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step224EarlyControlPlan s2Step224EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 849 47 s2Step224EarlyControl_logged

private def s2Step224EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step224EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step224EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩

private def s2Step224EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private def s2Step224FrontBank : WindowBank := ⟨s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow⟩

private def s2Step224Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 804, 768]

private def s2Step224Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 808, 769]

private def s2Step224Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 770]

private def s2Step224Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 811, 771]

private theorem s2Step224Counter_apart : Disjoint s2Step224HeadFvAfter.live s2Step224CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step224HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224Counter_borrowed : s2Step224HeadFvAfter.checkBorrow 4 s2Step224CounterWork=some s2Step224CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step224HeadFvAfter s2Step224CounterDuring s2Step224CounterWork.toFinset s2Step224Counter_bounded s2Step224Counter_apart rfl

private theorem s2Step224Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step224HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step224HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224Counter_checked : compileHmrCounterStepLog s2Step224HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step224CounterWork=some s2Step224CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step224HeadFvAfter.live := fun q hq => s2Step224Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step224Counter_borrowed

private def s2Step224EntryFAfter : Arena := s2Step224EntryFBefore

private theorem s2Step224EntryBank_incomingDistinct : ([s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224EntryF_Incoming : rowsOwned s2Step224EntryFBefore [s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow] 0 s2Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224EntryBank_outgoingOwned : rowsOwned s2Step224EntryGvAfter [s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step224EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224EntryF_Outgoing : rowsOwned s2Step224EntryGvAfter [s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] :=
  hmrRows_owned_drop s2Step224EntryGvAfter [s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] 0 s2Step224EntryBank_outgoingOwned

private theorem s2Step224EntryF_distinct : (s2Step224EntryFRow.sign::s2Step224EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224EntryF_owned : (s2Step224EntryFRow.sign::s2Step224EntryFRow.payload).toFinset⊆s2Step224EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EntryF_reserved : s2Step224EntryFBefore.reserve s2Step224EntryFFresh.toFinset=some s2Step224EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224EntryFFresh,arenaWires]
  · norm_num [s2Step224EntryFBefore,s2Step224EntryFFresh,arenaWires]
  · simp only [s2Step224EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step224EntryF_checked : planRowResizeLog s2Step224EntryFBefore s2Step224EntryFRow 158 s2Step224EntryFFresh=
    some (s2Step224EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩,growRow 768 s2Step224EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step224EntryFBefore s2Step224EntryFAfter s2Step224EntryFRow 158 s2Step224EntryFFresh
    s2Step224EntryF_distinct s2Step224EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224EntryF_reserved
  have rowEq : WindowRow.mk (s2Step224EntryFRow.payload++s2Step224EntryFFresh) s2Step224EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step224EntryFvAfter : Arena := s2Step224EntryFBefore

private def s2Step224EntryFvBefore : Arena := s2Step224EntryFBefore

private theorem s2Step224EntryFv_Incoming : rowsOwned s2Step224EntryFvBefore [s2Step224EntryFvRow,s2Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow] 2 s2Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224EntryFv_Outgoing : rowsOwned s2Step224EntryGvAfter [s2Step224EntryFvOut,s2Step224EntryGvOut] :=
  hmrRows_owned_drop s2Step224EntryGvAfter [s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] 2 s2Step224EntryBank_outgoingOwned

private theorem s2Step224EntryFv_distinct : (s2Step224EntryFvRow.sign::s2Step224EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224EntryFv_owned : (s2Step224EntryFvRow.sign::s2Step224EntryFvRow.payload).toFinset⊆s2Step224EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EntryFv_reserved : s2Step224EntryFvBefore.reserve s2Step224EntryFvFresh.toFinset=some s2Step224EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224EntryFvFresh,arenaWires]
  · norm_num [s2Step224EntryFvBefore,s2Step224EntryFBefore,s2Step224EntryFvFresh,arenaWires]
  · simp only [s2Step224EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step224EntryFv_checked : planRowResizeLog s2Step224EntryFvBefore s2Step224EntryFvRow 127 s2Step224EntryFvFresh=
    some (s2Step224EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩,growRow 770 s2Step224EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step224EntryFvBefore s2Step224EntryFvAfter s2Step224EntryFvRow 127 s2Step224EntryFvFresh
    s2Step224EntryFv_distinct s2Step224EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step224EntryFvRow.payload++s2Step224EntryFvFresh) s2Step224EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step224EntryGAfter : Arena := s2Step224EntryFBefore

private def s2Step224EntryGBefore : Arena := s2Step224EntryFBefore

private theorem s2Step224EntryG_Incoming : rowsOwned s2Step224EntryGBefore [s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow] 1 s2Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224EntryG_Outgoing : rowsOwned s2Step224EntryGvAfter [s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] :=
  hmrRows_owned_drop s2Step224EntryGvAfter [s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] 1 s2Step224EntryBank_outgoingOwned

private theorem s2Step224EntryG_distinct : (s2Step224EntryGRow.sign::s2Step224EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224EntryG_owned : (s2Step224EntryGRow.sign::s2Step224EntryGRow.payload).toFinset⊆s2Step224EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EntryG_reserved : s2Step224EntryGBefore.reserve s2Step224EntryGFresh.toFinset=some s2Step224EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224EntryGFresh,arenaWires]
  · norm_num [s2Step224EntryGBefore,s2Step224EntryFBefore,s2Step224EntryGFresh,arenaWires]
  · simp only [s2Step224EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step224EntryG_checked : planRowResizeLog s2Step224EntryGBefore s2Step224EntryGRow 158 s2Step224EntryGFresh=
    some (s2Step224EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩,growRow 769 s2Step224EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step224EntryGBefore s2Step224EntryGAfter s2Step224EntryGRow 158 s2Step224EntryGFresh
    s2Step224EntryG_distinct s2Step224EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224EntryG_reserved
  have rowEq : WindowRow.mk (s2Step224EntryGRow.payload++s2Step224EntryGFresh) s2Step224EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step224EntryGvBefore : Arena := s2Step224EntryFBefore

private theorem s2Step224EntryGv_Incoming : rowsOwned s2Step224EntryGvBefore [s2Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow] 3 s2Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224EntryGv_Outgoing : rowsOwned s2Step224EntryGvAfter [s2Step224EntryGvOut] :=
  hmrRows_owned_drop s2Step224EntryGvAfter [s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut] 3 s2Step224EntryBank_outgoingOwned

private theorem s2Step224EntryGv_distinct : (s2Step224EntryGvRow.sign::s2Step224EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224EntryGv_owned : (s2Step224EntryGvRow.sign::s2Step224EntryGvRow.payload).toFinset⊆s2Step224EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224EntryGv_reserved : s2Step224EntryGvBefore.reserve s2Step224EntryGvFresh.toFinset=some s2Step224EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224EntryGvFresh,arenaWires]
  · norm_num [s2Step224EntryGvBefore,s2Step224EntryFBefore,s2Step224EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step224EntryGvAfter,s2Step224EntryGvBefore,s2Step224EntryFBefore,s2Step224EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224EntryGv_checked : planRowResizeLog s2Step224EntryGvBefore s2Step224EntryGvRow 127 s2Step224EntryGvFresh=
    some (s2Step224EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩,growRow 771 s2Step224EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step224EntryGvBefore s2Step224EntryGvAfter s2Step224EntryGvRow 127 s2Step224EntryGvFresh
    s2Step224EntryGv_distinct s2Step224EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step224EntryGvRow.payload++s2Step224EntryGvFresh) s2Step224EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step224EntryBank_rows : planWindowRowsLog s2Step224EntryFBefore [(s2Step224EntryFRow,158),(s2Step224EntryGRow,158),(s2Step224EntryFvRow,127),(s2Step224EntryGvRow,127)] [s2Step224EntryFFresh,s2Step224EntryGFresh,s2Step224EntryFvFresh,s2Step224EntryGvFresh]=
    some (s2Step224EntryGvAfter,[s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut],(growRow 768 s2Step224EntryFFresh ++ (growRow 769 s2Step224EntryGFresh ++ (growRow 770 s2Step224EntryFvFresh ++ (growRow 771 s2Step224EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step224EntryGvAfter [] []=some (s2Step224EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step224EntryGvBefore s2Step224EntryGvAfter s2Step224EntryGvAfter
    s2Step224EntryGvRow s2Step224EntryGvOut 127 s2Step224EntryGvFresh [] [] []
    (growRow 771 s2Step224EntryGvFresh) ([]) s2Step224EntryGv_Incoming s2Step224EntryGv_checked h4 s2Step224EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step224EntryFvBefore s2Step224EntryFvAfter s2Step224EntryGvAfter
    s2Step224EntryFvRow s2Step224EntryFvOut 127 s2Step224EntryFvFresh [(s2Step224EntryGvRow,127)] [s2Step224EntryGvFresh] [s2Step224EntryGvOut]
    (growRow 770 s2Step224EntryFvFresh) ((growRow 771 s2Step224EntryGvFresh ++ [])) s2Step224EntryFv_Incoming s2Step224EntryFv_checked h3 s2Step224EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step224EntryGBefore s2Step224EntryGAfter s2Step224EntryGvAfter
    s2Step224EntryGRow s2Step224EntryGOut 158 s2Step224EntryGFresh [(s2Step224EntryFvRow,127),(s2Step224EntryGvRow,127)] [s2Step224EntryFvFresh,s2Step224EntryGvFresh] [s2Step224EntryFvOut,s2Step224EntryGvOut]
    (growRow 769 s2Step224EntryGFresh) ((growRow 770 s2Step224EntryFvFresh ++ (growRow 771 s2Step224EntryGvFresh ++ []))) s2Step224EntryG_Incoming s2Step224EntryG_checked h2 s2Step224EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step224EntryFBefore s2Step224EntryFAfter s2Step224EntryGvAfter
    s2Step224EntryFRow s2Step224EntryFOut 158 s2Step224EntryFFresh [(s2Step224EntryGRow,158),(s2Step224EntryFvRow,127),(s2Step224EntryGvRow,127)] [s2Step224EntryGFresh,s2Step224EntryFvFresh,s2Step224EntryGvFresh] [s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut]
    (growRow 768 s2Step224EntryFFresh) ((growRow 769 s2Step224EntryGFresh ++ (growRow 770 s2Step224EntryFvFresh ++ (growRow 771 s2Step224EntryGvFresh ++ [])))) s2Step224EntryF_Incoming s2Step224EntryF_checked h1 s2Step224EntryF_Outgoing
  exact h0

private theorem s2Step224EntryBank_checked : compileHmrBankResizeLog .entry s2Step224EntryFBefore ⟨s2Step224EntryFRow,s2Step224EntryGRow,s2Step224EntryFvRow,s2Step224EntryGvRow⟩ ⟨158,158,127,127⟩ [s2Step224EntryFFresh,s2Step224EntryGFresh,s2Step224EntryFvFresh,s2Step224EntryGvFresh]=
    some (s2Step224EntryGvAfter,⟨s2Step224EntryFOut,s2Step224EntryGOut,s2Step224EntryFvOut,s2Step224EntryGvOut⟩,(growRow 768 s2Step224EntryFFresh ++ (growRow 769 s2Step224EntryGFresh ++ (growRow 770 s2Step224EntryFvFresh ++ (growRow 771 s2Step224EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step224EntryBank_rows]
  rfl

private def s2Step224ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224ExitFBefore : Arena := s2Step224ExitGAfter

private def s2Step224ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 804],768⟩

private def s2Step224ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step224ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 808],769⟩

private def s2Step224ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 811],771⟩

private theorem s2Step224ExitBank_incomingDistinct : ([s2Step224ExitGRow,s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224ExitF_Incoming : rowsOwned s2Step224ExitFBefore [s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224ExitGRow,s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow] 1 s2Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224ExitFBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224ExitBank_outgoingOwned : rowsOwned s2Step224ExitGvAfter [s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step224ExitGvAfter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224ExitF_Outgoing : rowsOwned s2Step224ExitGvAfter [s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] :=
  hmrRows_owned_drop s2Step224ExitGvAfter [s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] 1 s2Step224ExitBank_outgoingOwned

private theorem s2Step224ExitF_distinct : (s2Step224ExitFRow.sign::s2Step224ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224ExitF_owned : (s2Step224ExitFRow.sign::s2Step224ExitFRow.payload).toFinset⊆s2Step224ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224ExitFBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224ExitF_retired : s2Step224ExitFBefore.retireSet s2Step224ExitFExtra.toFinset=s2Step224ExitFAfter := by
  unfold Arena.retireSet s2Step224ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step224ExitFBefore,s2Step224ExitGAfter,s2Step224ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step224ExitF_checked : planRowResizeLog s2Step224ExitFBefore s2Step224ExitFRow 158 []=
    some (s2Step224ExitFAfter,s2Step224ExitFOut,shrinkRow 768 s2Step224ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step224ExitFBefore s2Step224ExitFRow 158 s2Step224ExitF_distinct s2Step224ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step224ExitFRow.payload.take 158) s2Step224ExitFRow.sign=s2Step224ExitFOut := by decide +kernel
  have hi : s2Step224ExitFRow.payload.drop 158=s2Step224ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step224ExitF_retired] at result
  exact result

private def s2Step224ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224ExitFvBefore : Arena := s2Step224ExitFAfter

private theorem s2Step224ExitFv_Incoming : rowsOwned s2Step224ExitFvBefore [s2Step224ExitFvRow,s2Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224ExitGRow,s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow] 2 s2Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224ExitFvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224ExitFv_Outgoing : rowsOwned s2Step224ExitGvAfter [s2Step224ExitFvOut,s2Step224ExitGvOut] :=
  hmrRows_owned_drop s2Step224ExitGvAfter [s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] 2 s2Step224ExitBank_outgoingOwned

private theorem s2Step224ExitFv_distinct : (s2Step224ExitFvRow.sign::s2Step224ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224ExitFv_owned : (s2Step224ExitFvRow.sign::s2Step224ExitFvRow.payload).toFinset⊆s2Step224ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224ExitFvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224ExitFv_retired : s2Step224ExitFvBefore.retireSet s2Step224ExitFvExtra.toFinset=s2Step224ExitFvAfter := by
  unfold Arena.retireSet s2Step224ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step224ExitFvBefore,s2Step224ExitFAfter,s2Step224ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step224ExitFv_checked : planRowResizeLog s2Step224ExitFvBefore s2Step224ExitFvRow 127 []=
    some (s2Step224ExitFvAfter,s2Step224ExitFvOut,shrinkRow 770 s2Step224ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step224ExitFvBefore s2Step224ExitFvRow 127 s2Step224ExitFv_distinct s2Step224ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step224ExitFvRow.payload.take 127) s2Step224ExitFvRow.sign=s2Step224ExitFvOut := by decide +kernel
  have hi : s2Step224ExitFvRow.payload.drop 127=s2Step224ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step224ExitFv_retired] at result
  exact result

private def s2Step224ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step224ExitG_Incoming : rowsOwned s2Step224ExitGBefore [s2Step224ExitGRow,s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224ExitGRow,s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow] 0 s2Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224ExitG_Outgoing : rowsOwned s2Step224ExitGvAfter [s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] :=
  hmrRows_owned_drop s2Step224ExitGvAfter [s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] 0 s2Step224ExitBank_outgoingOwned

private theorem s2Step224ExitG_distinct : (s2Step224ExitGRow.sign::s2Step224ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224ExitG_owned : (s2Step224ExitGRow.sign::s2Step224ExitGRow.payload).toFinset⊆s2Step224ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224ExitG_retired : s2Step224ExitGBefore.retireSet s2Step224ExitGExtra.toFinset=s2Step224ExitGAfter := by
  unfold Arena.retireSet s2Step224ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step224ExitGBefore,s2Step224ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step224ExitG_checked : planRowResizeLog s2Step224ExitGBefore s2Step224ExitGRow 157 []=
    some (s2Step224ExitGAfter,s2Step224ExitGOut,shrinkRow 769 s2Step224ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step224ExitGBefore s2Step224ExitGRow 157 s2Step224ExitG_distinct s2Step224ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step224ExitGRow.payload.take 157) s2Step224ExitGRow.sign=s2Step224ExitGOut := by decide +kernel
  have hi : s2Step224ExitGRow.payload.drop 157=s2Step224ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step224ExitG_retired] at result
  exact result

private def s2Step224ExitGvBefore : Arena := s2Step224ExitFvAfter

private theorem s2Step224ExitGv_Incoming : rowsOwned s2Step224ExitGvBefore [s2Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224ExitGRow,s2Step224ExitFRow,s2Step224ExitFvRow,s2Step224ExitGvRow] 3 s2Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224ExitGvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224ExitGv_Outgoing : rowsOwned s2Step224ExitGvAfter [s2Step224ExitGvOut] :=
  hmrRows_owned_drop s2Step224ExitGvAfter [s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut] 3 s2Step224ExitBank_outgoingOwned

private theorem s2Step224ExitGv_distinct : (s2Step224ExitGvRow.sign::s2Step224ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224ExitGv_owned : (s2Step224ExitGvRow.sign::s2Step224ExitGvRow.payload).toFinset⊆s2Step224ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224ExitGvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224ExitGv_retired : s2Step224ExitGvBefore.retireSet s2Step224ExitGvExtra.toFinset=s2Step224ExitGvAfter := by
  unfold Arena.retireSet s2Step224ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step224ExitGvBefore,s2Step224ExitFvAfter,s2Step224ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step224ExitGv_checked : planRowResizeLog s2Step224ExitGvBefore s2Step224ExitGvRow 127 []=
    some (s2Step224ExitGvAfter,s2Step224ExitGvOut,shrinkRow 771 s2Step224ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step224ExitGvBefore s2Step224ExitGvRow 127 s2Step224ExitGv_distinct s2Step224ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step224ExitGvRow.payload.take 127) s2Step224ExitGvRow.sign=s2Step224ExitGvOut := by decide +kernel
  have hi : s2Step224ExitGvRow.payload.drop 127=s2Step224ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step224ExitGv_retired] at result
  exact result

private theorem s2Step224ExitBank_rows : planWindowRowsLog s2Step224ExitGBefore [(s2Step224ExitGRow,157),(s2Step224ExitFRow,158),(s2Step224ExitFvRow,127),(s2Step224ExitGvRow,127)] [[],[],[],[]]=
    some (s2Step224ExitGvAfter,[s2Step224ExitGOut,s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut],(shrinkRow 769 s2Step224ExitGExtra ++ (shrinkRow 768 s2Step224ExitFExtra ++ (shrinkRow 770 s2Step224ExitFvExtra ++ (shrinkRow 771 s2Step224ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step224ExitGvAfter [] []=some (s2Step224ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step224ExitGvBefore s2Step224ExitGvAfter s2Step224ExitGvAfter
    s2Step224ExitGvRow s2Step224ExitGvOut 127 [] [] [] []
    (shrinkRow 771 s2Step224ExitGvExtra) ([]) s2Step224ExitGv_Incoming s2Step224ExitGv_checked h4 s2Step224ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step224ExitFvBefore s2Step224ExitFvAfter s2Step224ExitGvAfter
    s2Step224ExitFvRow s2Step224ExitFvOut 127 [] [(s2Step224ExitGvRow,127)] [[]] [s2Step224ExitGvOut]
    (shrinkRow 770 s2Step224ExitFvExtra) ((shrinkRow 771 s2Step224ExitGvExtra ++ [])) s2Step224ExitFv_Incoming s2Step224ExitFv_checked h3 s2Step224ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step224ExitFBefore s2Step224ExitFAfter s2Step224ExitGvAfter
    s2Step224ExitFRow s2Step224ExitFOut 158 [] [(s2Step224ExitFvRow,127),(s2Step224ExitGvRow,127)] [[],[]] [s2Step224ExitFvOut,s2Step224ExitGvOut]
    (shrinkRow 768 s2Step224ExitFExtra) ((shrinkRow 770 s2Step224ExitFvExtra ++ (shrinkRow 771 s2Step224ExitGvExtra ++ []))) s2Step224ExitF_Incoming s2Step224ExitF_checked h2 s2Step224ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step224ExitGBefore s2Step224ExitGAfter s2Step224ExitGvAfter
    s2Step224ExitGRow s2Step224ExitGOut 157 [] [(s2Step224ExitFRow,158),(s2Step224ExitFvRow,127),(s2Step224ExitGvRow,127)] [[],[],[]] [s2Step224ExitFOut,s2Step224ExitFvOut,s2Step224ExitGvOut]
    (shrinkRow 769 s2Step224ExitGExtra) ((shrinkRow 768 s2Step224ExitFExtra ++ (shrinkRow 770 s2Step224ExitFvExtra ++ (shrinkRow 771 s2Step224ExitGvExtra ++ [])))) s2Step224ExitG_Incoming s2Step224ExitG_checked h1 s2Step224ExitG_Outgoing
  exact h0

private theorem s2Step224ExitBank_checked : compileHmrBankResizeLog .exit s2Step224ExitGBefore ⟨s2Step224ExitFRow,s2Step224ExitGRow,s2Step224ExitFvRow,s2Step224ExitGvRow⟩ ⟨158,157,127,127⟩ [[],[],[],[]]=
    some (s2Step224ExitGvAfter,⟨s2Step224ExitFOut,s2Step224ExitGOut,s2Step224ExitFvOut,s2Step224ExitGvOut⟩,(shrinkRow 769 s2Step224ExitGExtra ++ (shrinkRow 768 s2Step224ExitFExtra ++ (shrinkRow 770 s2Step224ExitFvExtra ++ (shrinkRow 771 s2Step224ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step224ExitBank_rows]
  rfl

private theorem s2Step224Add0_apart : Disjoint s2Step224Add0Arena.live s2Step224Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step224Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224Add0_card : s2Step224Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step224Add0_borrowed : s2Step224Add0Arena.checkBorrow (hmrHybridCount s2Step224Add0Arena s2Step224Add0B.length) s2Step224Add0Work=some s2Step224Add0During := by
  have len : s2Step224Add0Work.length=hmrHybridCount s2Step224Add0Arena s2Step224Add0B.length := by
    rw [hmrHybridCount,s2Step224Add0_card]
    decide +kernel
  have nd : s2Step224Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step224Add0Arena s2Step224Add0During s2Step224Add0Work.toFinset s2Step224Add0_bounded s2Step224Add0_apart rfl

private theorem s2Step224Add0_distinct : (814::849::882::(s2Step224Add0A++s2Step224Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224Add0_owned : (814::849::882::(s2Step224Add0A++s2Step224Add0B)).toFinset⊆s2Step224Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step224Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224Add0_checked : compileHmrHybridCinLog s2Step224Add0Arena 849 814 882 s2Step224Add0A s2Step224Add0B s2Step224Add0Work=some s2Step224Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step224Add0Arena s2Step224Add0During 849 814 882 s2Step224Add0A s2Step224Add0B s2Step224Add0Work
    (by decide +kernel) (by decide +kernel) s2Step224Add0_distinct
    (fun q hq => s2Step224Add0_owned (List.mem_toFinset.mpr hq)) s2Step224Add0_borrowed

private theorem s2Step224Add1_apart : Disjoint s2Step224Add1Arena.live s2Step224Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step224Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224Add1_card : s2Step224Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step224Add1_borrowed : s2Step224Add1Arena.checkBorrow (hmrHybridCount s2Step224Add1Arena s2Step224Add1B.length) s2Step224Add1Work=some s2Step224Add1During := by
  have len : s2Step224Add1Work.length=hmrHybridCount s2Step224Add1Arena s2Step224Add1B.length := by
    rw [hmrHybridCount,s2Step224Add1_card]
    decide +kernel
  have nd : s2Step224Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step224Add1Arena s2Step224Add1During s2Step224Add1Work.toFinset s2Step224Add1_bounded s2Step224Add1_apart rfl

private theorem s2Step224Add1_distinct : (814::849::882::(s2Step224Add1A++s2Step224Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224Add1_owned : (814::849::882::(s2Step224Add1A++s2Step224Add1B)).toFinset⊆s2Step224Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step224Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224Add1_checked : compileHmrHybridCinLog s2Step224Add1Arena 849 814 882 s2Step224Add1A s2Step224Add1B s2Step224Add1Work=some s2Step224Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step224Add1Arena s2Step224Add1During 849 814 882 s2Step224Add1A s2Step224Add1B s2Step224Add1Work
    (by decide +kernel) (by decide +kernel) s2Step224Add1_distinct
    (fun q hq => s2Step224Add1_owned (List.mem_toFinset.mpr hq)) s2Step224Add1_borrowed

private theorem s2Step224F4_apart : Disjoint (s2Step224Add0A++s2Step224Add0B).toFinset (s2Step224Add1A++s2Step224Add1B).toFinset := by
  have nd : ((s2Step224Add0A++s2Step224Add0B)++(s2Step224Add1A++s2Step224Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step224F4_carry : s2Step224F4FlagArena.checkBorrow 1 [882]=some s2Step224Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step224F4FlagArena,s2Step224HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step224F4FlagArena,s2Step224HeadFvAfter,s2Step224Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224F4_distinct : (797::849::814::882::((s2Step224Add0A++s2Step224Add1A)++(s2Step224Add0B++s2Step224Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224F4_flag : s2Step224HeadFvAfter.checkBorrow 1 [814]=some s2Step224F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step224HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step224F4_owned : (797::849::((s2Step224Add0A++s2Step224Add1A)++(s2Step224Add0B++s2Step224Add1B))).toFinset⊆s2Step224HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step224HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224F4_checked : compileHmrHybridF4Log s2Step224HeadFvAfter 797 849 s2Step224Add0A s2Step224Add0B s2Step224Add1A s2Step224Add1B [814] [882] s2Step224Add0Work s2Step224Add1Work=some s2Step224F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step224HeadFvAfter s2Step224F4FlagArena s2Step224Add0Arena s2Step224Add0During s2Step224Add1During 797 849
    s2Step224Add0A s2Step224Add0B s2Step224Add1A s2Step224Add1B [814] [882] s2Step224Add0Work s2Step224Add1Work
    (fun q hq => s2Step224F4_owned (List.mem_toFinset.mpr hq)) s2Step224F4_flag s2Step224F4_carry
    s2Step224F4_distinct s2Step224F4_apart s2Step224Add0_checked s2Step224Add1_checked

private theorem s2Step224Front_branch : s2Step224FrontSigmaArena.checkBorrow 1 [849]=some s2Step224HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step224FrontSigmaArena,s2Step224EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step224FrontSigmaArena,s2Step224EntryGvAfter,s2Step224HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224Front_entry : HmrFrontEntryValid s2Step224EntryFBefore s2Step224FrontBank 158 127 ⟨158,157,127,127⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step224FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step224EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step224EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step224FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step224Front_sigma : s2Step224EntryGvAfter.checkBorrow 1 [797]=some s2Step224FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step224EntryGvAfter,arenaWires]
  · rfl

private def s2Step224HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224HeadFBefore : Arena := s2Step224HeadGAfter

private def s2Step224HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step224HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step224HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩

private def s2Step224HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private theorem s2Step224HeadBank_incomingDistinct : ([s2Step224HeadGRow,s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224HeadF_Incoming : rowsOwned s2Step224HeadFBefore [s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224HeadGRow,s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow] 1 s2Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224HeadBank_outgoingOwned : rowsOwned s2Step224HeadFvAfter [s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step224HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224HeadF_Outgoing : rowsOwned s2Step224HeadFvAfter [s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] :=
  hmrRows_owned_drop s2Step224HeadFvAfter [s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] 1 s2Step224HeadBank_outgoingOwned

private theorem s2Step224HeadF_distinct : (s2Step224HeadFRow.sign::s2Step224HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224HeadF_owned : (s2Step224HeadFRow.sign::s2Step224HeadFRow.payload).toFinset⊆s2Step224HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224HeadF_reserved : s2Step224HeadFBefore.reserve s2Step224HeadFFresh.toFinset=some s2Step224HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224HeadFFresh,arenaWires]
  · norm_num [s2Step224HeadFBefore,s2Step224HeadGAfter,s2Step224HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step224HeadFAfter,s2Step224HeadFBefore,s2Step224HeadGAfter,s2Step224HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224HeadF_checked : planRowResizeLog s2Step224HeadFBefore s2Step224HeadFRow 159 s2Step224HeadFFresh=
    some (s2Step224HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 804],768⟩,growRow 768 s2Step224HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step224HeadFBefore s2Step224HeadFAfter s2Step224HeadFRow 159 s2Step224HeadFFresh
    s2Step224HeadF_distinct s2Step224HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224HeadF_reserved
  have rowEq : WindowRow.mk (s2Step224HeadFRow.payload++s2Step224HeadFFresh) s2Step224HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 804],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step224HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step224HeadFvBefore : Arena := s2Step224HeadGvAfter

private theorem s2Step224HeadFv_Incoming : rowsOwned s2Step224HeadFvBefore [s2Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224HeadGRow,s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow] 3 s2Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224HeadFv_Outgoing : rowsOwned s2Step224HeadFvAfter [s2Step224HeadFvOut] :=
  hmrRows_owned_drop s2Step224HeadFvAfter [s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] 3 s2Step224HeadBank_outgoingOwned

private theorem s2Step224HeadFv_distinct : (s2Step224HeadFvRow.sign::s2Step224HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224HeadFv_owned : (s2Step224HeadFvRow.sign::s2Step224HeadFvRow.payload).toFinset⊆s2Step224HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224HeadFv_reserved : s2Step224HeadFvBefore.reserve s2Step224HeadFvFresh.toFinset=some s2Step224HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224HeadFvFresh,arenaWires]
  · norm_num [s2Step224HeadFvBefore,s2Step224HeadGvAfter,s2Step224HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step224HeadFvAfter,s2Step224HeadFvBefore,s2Step224HeadGvAfter,s2Step224HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224HeadFv_checked : planRowResizeLog s2Step224HeadFvBefore s2Step224HeadFvRow 128 s2Step224HeadFvFresh=
    some (s2Step224HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩,growRow 770 s2Step224HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step224HeadFvBefore s2Step224HeadFvAfter s2Step224HeadFvRow 128 s2Step224HeadFvFresh
    s2Step224HeadFv_distinct s2Step224HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step224HeadFvRow.payload++s2Step224HeadFvFresh) s2Step224HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step224HeadG_Incoming : rowsOwned s2Step224HeadGBefore [s2Step224HeadGRow,s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224HeadGRow,s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow] 0 s2Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224HeadG_Outgoing : rowsOwned s2Step224HeadFvAfter [s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] :=
  hmrRows_owned_drop s2Step224HeadFvAfter [s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] 0 s2Step224HeadBank_outgoingOwned

private theorem s2Step224HeadG_distinct : (s2Step224HeadGRow.sign::s2Step224HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224HeadG_owned : (s2Step224HeadGRow.sign::s2Step224HeadGRow.payload).toFinset⊆s2Step224HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224HeadG_reserved : s2Step224HeadGBefore.reserve s2Step224HeadGFresh.toFinset=some s2Step224HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224HeadGFresh,arenaWires]
  · norm_num [s2Step224HeadGBefore,s2Step224HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step224HeadGAfter,s2Step224HeadGBefore,s2Step224HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224HeadG_checked : planRowResizeLog s2Step224HeadGBefore s2Step224HeadGRow 159 s2Step224HeadGFresh=
    some (s2Step224HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 808],769⟩,growRow 769 s2Step224HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step224HeadGBefore s2Step224HeadGAfter s2Step224HeadGRow 159 s2Step224HeadGFresh
    s2Step224HeadG_distinct s2Step224HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224HeadG_reserved
  have rowEq : WindowRow.mk (s2Step224HeadGRow.payload++s2Step224HeadGFresh) s2Step224HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 808],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step224HeadGvBefore : Arena := s2Step224HeadFAfter

private theorem s2Step224HeadGv_Incoming : rowsOwned s2Step224HeadGvBefore [s2Step224HeadGvRow,s2Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step224HeadGRow,s2Step224HeadFRow,s2Step224HeadGvRow,s2Step224HeadFvRow] 2 s2Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step224HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step224HeadGv_Outgoing : rowsOwned s2Step224HeadFvAfter [s2Step224HeadGvOut,s2Step224HeadFvOut] :=
  hmrRows_owned_drop s2Step224HeadFvAfter [s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut] 2 s2Step224HeadBank_outgoingOwned

private theorem s2Step224HeadGv_distinct : (s2Step224HeadGvRow.sign::s2Step224HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step224HeadGv_owned : (s2Step224HeadGvRow.sign::s2Step224HeadGvRow.payload).toFinset⊆s2Step224HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step224HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step224HeadGv_reserved : s2Step224HeadGvBefore.reserve s2Step224HeadGvFresh.toFinset=some s2Step224HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step224HeadGvFresh,arenaWires]
  · norm_num [s2Step224HeadGvBefore,s2Step224HeadFAfter,s2Step224HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step224HeadGvAfter,s2Step224HeadGvBefore,s2Step224HeadFAfter,s2Step224HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step224HeadGv_checked : planRowResizeLog s2Step224HeadGvBefore s2Step224HeadGvRow 128 s2Step224HeadGvFresh=
    some (s2Step224HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 811],771⟩,growRow 771 s2Step224HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step224HeadGvBefore s2Step224HeadGvAfter s2Step224HeadGvRow 128 s2Step224HeadGvFresh
    s2Step224HeadGv_distinct s2Step224HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step224HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step224HeadGvRow.payload++s2Step224HeadGvFresh) s2Step224HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step224HeadBank_rows : planWindowRowsLog s2Step224HeadGBefore [(s2Step224HeadGRow,159),(s2Step224HeadFRow,159),(s2Step224HeadGvRow,128),(s2Step224HeadFvRow,128)] [s2Step224HeadGFresh,s2Step224HeadFFresh,s2Step224HeadGvFresh,s2Step224HeadFvFresh]=
    some (s2Step224HeadFvAfter,[s2Step224HeadGOut,s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut],(growRow 769 s2Step224HeadGFresh ++ (growRow 768 s2Step224HeadFFresh ++ (growRow 771 s2Step224HeadGvFresh ++ (growRow 770 s2Step224HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step224HeadFvAfter [] []=some (s2Step224HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step224HeadFvBefore s2Step224HeadFvAfter s2Step224HeadFvAfter
    s2Step224HeadFvRow s2Step224HeadFvOut 128 s2Step224HeadFvFresh [] [] []
    (growRow 770 s2Step224HeadFvFresh) ([]) s2Step224HeadFv_Incoming s2Step224HeadFv_checked h4 s2Step224HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step224HeadGvBefore s2Step224HeadGvAfter s2Step224HeadFvAfter
    s2Step224HeadGvRow s2Step224HeadGvOut 128 s2Step224HeadGvFresh [(s2Step224HeadFvRow,128)] [s2Step224HeadFvFresh] [s2Step224HeadFvOut]
    (growRow 771 s2Step224HeadGvFresh) ((growRow 770 s2Step224HeadFvFresh ++ [])) s2Step224HeadGv_Incoming s2Step224HeadGv_checked h3 s2Step224HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step224HeadFBefore s2Step224HeadFAfter s2Step224HeadFvAfter
    s2Step224HeadFRow s2Step224HeadFOut 159 s2Step224HeadFFresh [(s2Step224HeadGvRow,128),(s2Step224HeadFvRow,128)] [s2Step224HeadGvFresh,s2Step224HeadFvFresh] [s2Step224HeadGvOut,s2Step224HeadFvOut]
    (growRow 768 s2Step224HeadFFresh) ((growRow 771 s2Step224HeadGvFresh ++ (growRow 770 s2Step224HeadFvFresh ++ []))) s2Step224HeadF_Incoming s2Step224HeadF_checked h2 s2Step224HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step224HeadGBefore s2Step224HeadGAfter s2Step224HeadFvAfter
    s2Step224HeadGRow s2Step224HeadGOut 159 s2Step224HeadGFresh [(s2Step224HeadFRow,159),(s2Step224HeadGvRow,128),(s2Step224HeadFvRow,128)] [s2Step224HeadFFresh,s2Step224HeadGvFresh,s2Step224HeadFvFresh] [s2Step224HeadFOut,s2Step224HeadGvOut,s2Step224HeadFvOut]
    (growRow 769 s2Step224HeadGFresh) ((growRow 768 s2Step224HeadFFresh ++ (growRow 771 s2Step224HeadGvFresh ++ (growRow 770 s2Step224HeadFvFresh ++ [])))) s2Step224HeadG_Incoming s2Step224HeadG_checked h1 s2Step224HeadG_Outgoing
  exact h0

private theorem s2Step224HeadBank_checked : compileHmrBankResizeLog .headroom s2Step224HeadGBefore ⟨s2Step224HeadFRow,s2Step224HeadGRow,s2Step224HeadFvRow,s2Step224HeadGvRow⟩ ⟨159,159,128,128⟩ [s2Step224HeadGFresh,s2Step224HeadFFresh,s2Step224HeadGvFresh,s2Step224HeadFvFresh]=
    some (s2Step224HeadFvAfter,⟨s2Step224HeadFOut,s2Step224HeadGOut,s2Step224HeadFvOut,s2Step224HeadGvOut⟩,(growRow 769 s2Step224HeadGFresh ++ (growRow 768 s2Step224HeadFFresh ++ (growRow 771 s2Step224HeadGvFresh ++ (growRow 770 s2Step224HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step224HeadBank_rows]
  rfl

private theorem s2Step224Front_checked : compileHmrSourceFrontLog s2Step224EntryFBefore s2Step224FrontBank 158 127 ⟨158,157,127,127⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step224FrontLog=some s2Step224FrontPlan := by
  have pairEq : s2Step224FrontPair=⟨s2Step224HeadFRow,s2Step224HeadGRow,s2Step224HeadFvRow,s2Step224HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step224FrontHead=⟨s2Step224ExitFRow,s2Step224ExitGRow,s2Step224ExitFvRow,s2Step224ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step224Add0A=s2Step224FrontHead.f.wires := by decide +kernel
  have gEq : s2Step224Add0B=s2Step224FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step224Add1A=s2Step224FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step224Add1B=s2Step224FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step224EntryFBefore s2Step224FrontBank 158 127 ⟨158,157,127,127⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step224FrontLog s2Step224FrontPlan
  · exact s2Step224Front_entry
  · exact s2Step224EntryBank_checked
  · exact s2Step224Front_sigma
  · rfl
  · exact s2Step224Front_branch
  · rfl
  · simpa only [s2Step224FrontPlan,pairEq] using s2Step224HeadBank_checked
  · simpa only [s2Step224FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step224F4_checked
  · exact s2Step224Counter_checked
  · rfl
  · simpa only [s2Step224FrontPlan,headEq] using s2Step224ExitBank_checked

private theorem s2Step224Complete_explicit_checked : compileHmrEarlyStepLog s2Step224EntryFBefore s2Step224FrontBank 158 127 ⟨158,157,127,127⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step224CompleteLog=some s2Step224CompletePlan := by
  let Q := s2Step224EarlyControlPlan
  have hq := s2Step224EarlyControl_plan_checked
  have fv1 : s2Step224CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step224CompleteOut.fv.payload[2]?.getD s2Step224CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step224CompleteOut.fv.payload[3]?.getD s2Step224CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step224CompleteOut.fv.payload[4]?.getD s2Step224CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step224EntryFBefore s2Step224EarlyControlArena s2Step224FrontBank 158 127 ⟨158,157,127,127⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step224CompleteLog s2Step224FrontPlan Q
    s2Step224Front_checked s2Step224Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step224Complete_owned s2Step224Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step224EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 s2Step224CompleteOut.fv.second (s2Step224CompleteOut.fv.payload[2]?.getD s2Step224CompleteOut.fv.sign) (s2Step224CompleteOut.fv.payload[3]?.getD s2Step224CompleteOut.fv.sign) (s2Step224CompleteOut.fv.payload[4]?.getD s2Step224CompleteOut.fv.sign) 849 47 s2Step224EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep224Arena : Arena := s2Step224EntryFBefore
def s2PrivateStep224Bank : WindowBank := s2Step224FrontBank
def s2PrivateStep224Spec : HmrSourceWalkStepLog := ⟨158,127,⟨158,157,127,127⟩,47,.early s2Step224CompleteLog⟩
def s2PrivateStep224Plan : HmrSourceStepPlan := .early s2Step224CompletePlan
theorem s2PrivateStep224_source : s2PrivateStep224Spec=s2ObservedLogs224[0] := rfl
theorem s2PrivateStep224_checked : compileHmrSourceStepLog s2PrivateStep224Arena s2PrivateStep224Bank
    s2PrivateStep224Spec.fgWidth s2PrivateStep224Spec.vWidth s2PrivateStep224Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 224 s2PrivateStep224Spec.need none s2PrivateStep224Spec.log=some s2PrivateStep224Plan := by
  change compileHmrSourceStepLog s2Step224EntryFBefore s2Step224FrontBank 158 127 ⟨158,157,127,127⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 224 47 none (.early s2Step224CompleteLog)=some (.early s2Step224CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 224<498)]
  rw [s2Step224Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
