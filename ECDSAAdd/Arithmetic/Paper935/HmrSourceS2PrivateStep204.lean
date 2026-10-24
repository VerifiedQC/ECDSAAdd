import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep202
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

private def s2Step204CompleteMoves : List (Wire × Wire) := [(845,679)]

private def s2Step204EarlyControlLog : HmrEarlyControlLog := ⟨[845, 789, 816, 841, 781],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step204FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [841], [], []],[[781], [816], [789], [822]],[[], [], [], []]⟩,[879],[844],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step204CompleteLog : HmrEarlyStepLog := ⟨s2Step204FrontLog,s2Step204CompleteMoves,s2Step204EarlyControlLog⟩

private def s2Step204ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step204ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩

private def s2Step204ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩

private def s2Step204ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step204FrontOut : WindowBank := ⟨s2Step204ExitFOut,s2Step204ExitGOut,s2Step204ExitFvOut,s2Step204ExitGvOut⟩

private def s2Step204CompleteOut : WindowBank := s2Step204FrontOut.repacked s2Step204CompleteMoves

private def s2Step204EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step204EarlyControlPositiveArena,[814],s2Step204EarlyControlEqualityArena,[882],⟨⟨879,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step204EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,841⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step204EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step204EarlyControlZeroArena,s2Step204EarlyControlZeroPlan,s2Step204EarlyControlClassPlan,s2Step204EarlyControlFlagArena,s2Step204EarlyControlFittedArena,s2Step204EarlyControlHistoryArena,s2Step204EarlyControlSigmaArena,s2Step204EarlyControlOutputArena,s2Step204EarlyControlLog⟩

private def s2Step204CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step204Counter_bounded : s2Step204CounterWork.toFinset⊆arenaWires := by norm_num [s2Step204CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step204HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204CounterDuring : Arena := ⟨s2Step204HeadFvAfter.live∪s2Step204CounterWork.toFinset,Finset.union_subset s2Step204HeadFvAfter.bounded s2Step204Counter_bounded⟩

private def s2Step204EntryFFresh : List Wire := []

private def s2Step204EntryFvFresh : List Wire := []

private def s2Step204EntryGFresh : List Wire := [841]

private def s2Step204EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EntryGvAfter : Arena := s2Step204EntryGAfter

private def s2Step204EntryGvFresh : List Wire := []

private def s2Step204ExitFExtra : List Wire := [679, 816]

private def s2Step204ExitGExtra : List Wire := [841, 781]

private def s2Step204ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204ExitGvExtra : List Wire := [789]

private def s2Step204Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step204Add0_bounded : s2Step204Add0Work.toFinset⊆arenaWires := by
  have h : s2Step204Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step204Add0During : Arena := ⟨s2Step204Add0Arena.live∪s2Step204Add0Work.toFinset,Finset.union_subset s2Step204Add0Arena.bounded s2Step204Add0_bounded⟩

private def s2Step204Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step204Add1_bounded : s2Step204Add1Work.toFinset⊆arenaWires := by
  have h : s2Step204Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step204Add1During : Arena := ⟨s2Step204Add1Arena.live∪s2Step204Add1Work.toFinset,Finset.union_subset s2Step204Add1Arena.bounded s2Step204Add1_bounded⟩

private def s2Step204F4FlagArena : Arena := ⟨s2Step204HeadFvAfter.live∪{814},Finset.union_subset s2Step204HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step204F4Plan : HmrHybridF4Plan := ⟨s2Step204F4FlagArena,[814],s2Step204Add0Arena,[882],s2Step204Add0During,s2Step204Add0Work,s2Step204Add1During,s2Step204Add1Work⟩

private def s2Step204HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩

private def s2Step204HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩

private def s2Step204HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841, 781],769⟩

private def s2Step204HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 789],771⟩

private def s2Step204FrontHead : WindowBank := ⟨s2Step204HeadFOut,s2Step204HeadGOut,s2Step204HeadFvOut,s2Step204HeadGvOut⟩

private def s2Step204EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step204EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step204EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841],769⟩

private def s2Step204EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step204FrontPair : WindowBank := ⟨s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut⟩

private def s2Step204FrontSigmaArena : Arena := ⟨s2Step204EntryGvAfter.live∪{879},Finset.union_subset s2Step204EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step204HeadFFresh : List Wire := [816]

private def s2Step204HeadFvFresh : List Wire := [822]

private def s2Step204HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204HeadGFresh : List Wire := [781]

private def s2Step204HeadGvFresh : List Wire := [789]

private def s2Step204FrontPlan : HmrSourceFront := ⟨s2Step204EntryGvAfter,s2Step204FrontPair,(growRow 768 s2Step204EntryFFresh ++ (growRow 769 s2Step204EntryGFresh ++ (growRow 770 s2Step204EntryFvFresh ++ (growRow 771 s2Step204EntryGvFresh ++ [])))),s2Step204FrontSigmaArena,[879],s2Step204HeadGBefore,[844],
  s2Step204HeadFvAfter,s2Step204FrontHead,(growRow 769 s2Step204HeadGFresh ++ (growRow 768 s2Step204HeadFFresh ++ (growRow 771 s2Step204HeadGvFresh ++ (growRow 770 s2Step204HeadFvFresh ++ [])))),s2Step204F4Plan,s2Step204CounterDuring,s2Step204CounterWork,s2Step204ExitGvAfter,s2Step204FrontOut,(shrinkRow 769 s2Step204ExitGExtra ++ (shrinkRow 768 s2Step204ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step204ExitGvExtra ++ []))))⟩

private def s2Step204CompletePlan : HmrEarlyStepPlan := ⟨s2Step204FrontPlan,s2Step204EarlyControlArena,s2Step204EarlyControlPlan,s2Step204CompleteMoves⟩

private theorem s2Step204Complete_apart : List.Disjoint (s2Step204CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [879, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step204CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[879, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step204Complete_owned : (s2Step204CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step204CompleteMoveArena : Arena := ⟨s2Step204ExitGvAfter.live∪{679},Finset.union_subset s2Step204ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step204Complete_repack : s2Step204ExitGvAfter.checkRepack s2Step204CompleteMoves=some s2Step204EarlyControlArena := by
  have owned : 845∈s2Step204ExitGvAfter.live := by norm_num [s2Step204ExitGvAfter,arenaWires]
  have reserve : s2Step204ExitGvAfter.reserve {679}=some s2Step204CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step204ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step204CompleteMoveArena.retireSet {845}=s2Step204EarlyControlArena := by
    unfold Arena.retireSet s2Step204EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step204CompleteMoveArena,s2Step204ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step204CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step204CompleteMoveArena.retireSet {845}).checkRepack []=some s2Step204EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step204EarlyControl_branchOwned : ([844] : List Wire).toFinset⊆s2Step204EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_branch : compileHmrBranchRetirement s2Step204EarlyControlSigmaArena 844=some s2Step204EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step204EarlyControl_branchOwned
  · ext q
    simp [s2Step204EarlyControlOutputArena,s2Step204EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step204EarlyControl_classEqualityBorrow : s2Step204EarlyControlPositiveArena.checkBorrow (([879, 814] : List Wire).length-1) s2Step204EarlyControlLog.classWork=some s2Step204EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step204EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step204EarlyControlEqualityArena,s2Step204EarlyControlPositiveArena,s2Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step204EarlyControl_classEqualityOwned : ([879, 814] : List Wire).toFinset⊆s2Step204EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_classEquality : compileHmrEqualityLog s2Step204EarlyControlPositiveArena [879, 814] 0 s2Step204EarlyControlLog.classWork=some (s2Step204EarlyControlEqualityArena,s2Step204EarlyControlLog.classWork,s2Step204EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step204EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step204EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step204EarlyControl_classOwned : ([777, 781, 879] : List Wire).toFinset⊆s2Step204EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_positiveBorrow : s2Step204EarlyControlZeroArena.checkBorrow (1) s2Step204EarlyControlLog.positiveWork=some s2Step204EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step204EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step204EarlyControlPositiveArena,s2Step204EarlyControlZeroArena,s2Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step204EarlyControl_class : compileHmrSourceClassLog s2Step204EarlyControlZeroArena false 777 s2Step204EarlyControlZeroPlan.top 0 879 s2Step204EarlyControlLog.positiveWork s2Step204EarlyControlLog.classWork=some s2Step204EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step204EarlyControlClassPlan s2Step204EarlyControlZeroArena false 777 s2Step204EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s2Step204EarlyControl_classOwned
  · exact s2Step204EarlyControl_positiveBorrow
  · exact s2Step204EarlyControl_classEquality

private theorem s2Step204EarlyControl_entryRecordOwned : ([844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s2Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_fitBorrow : s2Step204EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step204EarlyControlLog.recordFresh=some s2Step204EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step204EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step204EarlyControlFittedArena,s2Step204EarlyControlFlagArena,s2Step204EarlyControlLog,arenaWires]

private theorem s2Step204EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step204EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_fit : compileHmrRecordGrowLog s2Step204EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step204EarlyControlLog.recordFresh=some s2Step204EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step204EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step204EarlyControl_fitBorrow

private theorem s2Step204EarlyControl_flagsBorrow : s2Step204EarlyControlEqualityArena.checkBorrow (6) s2Step204EarlyControlLog.flagWork=some s2Step204EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step204EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step204EarlyControlFlagArena,s2Step204EarlyControlEqualityArena,s2Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step204EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step204EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_flags : compileHmrFlagsLog s2Step204EarlyControlClassPlan.equalityArena s2Step204EarlyControlClassPlan.equality.top 253 252 251 s2Step204EarlyControlLog.flagWork=some s2Step204EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step204EarlyControl_flagsOwned⟩
  · exact s2Step204EarlyControl_flagsBorrow

private theorem s2Step204EarlyControl_historyBorrow : s2Step204EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step204EarlyControlLog.recordFresh=some s2Step204EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step204EarlyControlHistoryArena,s2Step204EarlyControlArena,s2Step204EarlyControlLog,arenaWires]

private theorem s2Step204EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_history : compileHmrRecordGrowLog s2Step204EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step204EarlyControlLog.recordFresh=some s2Step204EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step204EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step204EarlyControl_historyBorrow

private theorem s2Step204EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s2Step204EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s2Step204EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_sigmaRelease : s2Step204EarlyControlHistoryArena.release {879} (fun _ => false)=some s2Step204EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step204EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step204EarlyControlSigmaArena,s2Step204EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step204EarlyControl_sigma : compileHmrSigmaDropLog s2Step204EarlyControlHistoryArena false 0 0 254 879 []=some s2Step204EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step204EarlyControl_sigmaOwned⟩
  · exact s2Step204EarlyControl_sigmaRelease

private theorem s2Step204EarlyControl_zeroBorrow : s2Step204EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step204EarlyControlLog.zeroWork=some s2Step204EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step204EarlyControlZeroArena,s2Step204EarlyControlArena,s2Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step204EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step204EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EarlyControl_zero : compileHmrEqualityLog s2Step204EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step204EarlyControlLog.zeroWork=some (s2Step204EarlyControlZeroArena,s2Step204EarlyControlLog.zeroWork,s2Step204EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step204EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step204EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step204EarlyControl_logged : s2Step204EarlyControlPlan.Logged s2Step204EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 844 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step204EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step204EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step204EarlyControl_zero
  · exact s2Step204EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step204EarlyControl_flags
  · exact s2Step204EarlyControl_fit
  · exact s2Step204EarlyControl_history
  · exact s2Step204EarlyControl_sigma
  · exact s2Step204EarlyControl_branch

private theorem s2Step204EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step204EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 844 47 s2Step204EarlyControlLog=some s2Step204EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step204EarlyControlPlan s2Step204EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 844 47 s2Step204EarlyControl_logged

private def s2Step204EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step204EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step204EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩

private def s2Step204EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step204FrontBank : WindowBank := ⟨s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow⟩

private def s2Step204Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816, 768]

private def s2Step204Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841, 781, 769]

private def s2Step204Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822, 770]

private def s2Step204Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 789, 771]

private theorem s2Step204Counter_apart : Disjoint s2Step204HeadFvAfter.live s2Step204CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step204HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204Counter_borrowed : s2Step204HeadFvAfter.checkBorrow 4 s2Step204CounterWork=some s2Step204CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step204HeadFvAfter s2Step204CounterDuring s2Step204CounterWork.toFinset s2Step204Counter_bounded s2Step204Counter_apart rfl

private theorem s2Step204Counter_owned : (879::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step204HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step204HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204Counter_checked : compileHmrCounterStepLog s2Step204HeadFvAfter true 879 [772, 773, 774, 775, 776, 777] s2Step204CounterWork=some s2Step204CounterDuring := by
  have owned : ∀q∈879::[772, 773, 774, 775, 776, 777],q∈s2Step204HeadFvAfter.live := fun q hq => s2Step204Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step204Counter_borrowed

private def s2Step204EntryFAfter : Arena := s2Step204EntryFBefore

private theorem s2Step204EntryBank_incomingDistinct : ([s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204EntryF_Incoming : rowsOwned s2Step204EntryFBefore [s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow] 0 s2Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204EntryBank_outgoingOwned : rowsOwned s2Step204EntryGvAfter [s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step204EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204EntryF_Outgoing : rowsOwned s2Step204EntryGvAfter [s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] :=
  hmrRows_owned_drop s2Step204EntryGvAfter [s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] 0 s2Step204EntryBank_outgoingOwned

private theorem s2Step204EntryF_distinct : (s2Step204EntryFRow.sign::s2Step204EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204EntryF_owned : (s2Step204EntryFRow.sign::s2Step204EntryFRow.payload).toFinset⊆s2Step204EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EntryF_reserved : s2Step204EntryFBefore.reserve s2Step204EntryFFresh.toFinset=some s2Step204EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204EntryFFresh,arenaWires]
  · norm_num [s2Step204EntryFBefore,s2Step204EntryFFresh,arenaWires]
  · simp only [s2Step204EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step204EntryF_checked : planRowResizeLog s2Step204EntryFBefore s2Step204EntryFRow 168 s2Step204EntryFFresh=
    some (s2Step204EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩,growRow 768 s2Step204EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step204EntryFBefore s2Step204EntryFAfter s2Step204EntryFRow 168 s2Step204EntryFFresh
    s2Step204EntryF_distinct s2Step204EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204EntryF_reserved
  have rowEq : WindowRow.mk (s2Step204EntryFRow.payload++s2Step204EntryFFresh) s2Step204EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step204EntryFvAfter : Arena := s2Step204EntryGAfter

private def s2Step204EntryFvBefore : Arena := s2Step204EntryGAfter

private theorem s2Step204EntryFv_Incoming : rowsOwned s2Step204EntryFvBefore [s2Step204EntryFvRow,s2Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow] 2 s2Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204EntryFv_Outgoing : rowsOwned s2Step204EntryGvAfter [s2Step204EntryFvOut,s2Step204EntryGvOut] :=
  hmrRows_owned_drop s2Step204EntryGvAfter [s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] 2 s2Step204EntryBank_outgoingOwned

private theorem s2Step204EntryFv_distinct : (s2Step204EntryFvRow.sign::s2Step204EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204EntryFv_owned : (s2Step204EntryFvRow.sign::s2Step204EntryFvRow.payload).toFinset⊆s2Step204EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EntryFv_reserved : s2Step204EntryFvBefore.reserve s2Step204EntryFvFresh.toFinset=some s2Step204EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204EntryFvFresh,arenaWires]
  · norm_num [s2Step204EntryFvBefore,s2Step204EntryGAfter,s2Step204EntryFvFresh,arenaWires]
  · simp only [s2Step204EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step204EntryFv_checked : planRowResizeLog s2Step204EntryFvBefore s2Step204EntryFvRow 117 s2Step204EntryFvFresh=
    some (s2Step204EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩,growRow 770 s2Step204EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step204EntryFvBefore s2Step204EntryFvAfter s2Step204EntryFvRow 117 s2Step204EntryFvFresh
    s2Step204EntryFv_distinct s2Step204EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step204EntryFvRow.payload++s2Step204EntryFvFresh) s2Step204EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step204EntryGBefore : Arena := s2Step204EntryFBefore

private theorem s2Step204EntryG_Incoming : rowsOwned s2Step204EntryGBefore [s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow] 1 s2Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204EntryG_Outgoing : rowsOwned s2Step204EntryGvAfter [s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] :=
  hmrRows_owned_drop s2Step204EntryGvAfter [s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] 1 s2Step204EntryBank_outgoingOwned

private theorem s2Step204EntryG_distinct : (s2Step204EntryGRow.sign::s2Step204EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204EntryG_owned : (s2Step204EntryGRow.sign::s2Step204EntryGRow.payload).toFinset⊆s2Step204EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EntryG_reserved : s2Step204EntryGBefore.reserve s2Step204EntryGFresh.toFinset=some s2Step204EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204EntryGFresh,arenaWires]
  · norm_num [s2Step204EntryGBefore,s2Step204EntryFBefore,s2Step204EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step204EntryGAfter,s2Step204EntryGBefore,s2Step204EntryFBefore,s2Step204EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204EntryG_checked : planRowResizeLog s2Step204EntryGBefore s2Step204EntryGRow 168 s2Step204EntryGFresh=
    some (s2Step204EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841],769⟩,growRow 769 s2Step204EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step204EntryGBefore s2Step204EntryGAfter s2Step204EntryGRow 168 s2Step204EntryGFresh
    s2Step204EntryG_distinct s2Step204EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204EntryG_reserved
  have rowEq : WindowRow.mk (s2Step204EntryGRow.payload++s2Step204EntryGFresh) s2Step204EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step204EntryGvBefore : Arena := s2Step204EntryGAfter

private theorem s2Step204EntryGv_Incoming : rowsOwned s2Step204EntryGvBefore [s2Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow] 3 s2Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204EntryGv_Outgoing : rowsOwned s2Step204EntryGvAfter [s2Step204EntryGvOut] :=
  hmrRows_owned_drop s2Step204EntryGvAfter [s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut] 3 s2Step204EntryBank_outgoingOwned

private theorem s2Step204EntryGv_distinct : (s2Step204EntryGvRow.sign::s2Step204EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204EntryGv_owned : (s2Step204EntryGvRow.sign::s2Step204EntryGvRow.payload).toFinset⊆s2Step204EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204EntryGv_reserved : s2Step204EntryGvBefore.reserve s2Step204EntryGvFresh.toFinset=some s2Step204EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204EntryGvFresh,arenaWires]
  · norm_num [s2Step204EntryGvBefore,s2Step204EntryGAfter,s2Step204EntryGvFresh,arenaWires]
  · simp only [s2Step204EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step204EntryGv_checked : planRowResizeLog s2Step204EntryGvBefore s2Step204EntryGvRow 117 s2Step204EntryGvFresh=
    some (s2Step204EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩,growRow 771 s2Step204EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step204EntryGvBefore s2Step204EntryGvAfter s2Step204EntryGvRow 117 s2Step204EntryGvFresh
    s2Step204EntryGv_distinct s2Step204EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step204EntryGvRow.payload++s2Step204EntryGvFresh) s2Step204EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step204EntryBank_rows : planWindowRowsLog s2Step204EntryFBefore [(s2Step204EntryFRow,168),(s2Step204EntryGRow,168),(s2Step204EntryFvRow,117),(s2Step204EntryGvRow,117)] [s2Step204EntryFFresh,s2Step204EntryGFresh,s2Step204EntryFvFresh,s2Step204EntryGvFresh]=
    some (s2Step204EntryGvAfter,[s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut],(growRow 768 s2Step204EntryFFresh ++ (growRow 769 s2Step204EntryGFresh ++ (growRow 770 s2Step204EntryFvFresh ++ (growRow 771 s2Step204EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step204EntryGvAfter [] []=some (s2Step204EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step204EntryGvBefore s2Step204EntryGvAfter s2Step204EntryGvAfter
    s2Step204EntryGvRow s2Step204EntryGvOut 117 s2Step204EntryGvFresh [] [] []
    (growRow 771 s2Step204EntryGvFresh) ([]) s2Step204EntryGv_Incoming s2Step204EntryGv_checked h4 s2Step204EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step204EntryFvBefore s2Step204EntryFvAfter s2Step204EntryGvAfter
    s2Step204EntryFvRow s2Step204EntryFvOut 117 s2Step204EntryFvFresh [(s2Step204EntryGvRow,117)] [s2Step204EntryGvFresh] [s2Step204EntryGvOut]
    (growRow 770 s2Step204EntryFvFresh) ((growRow 771 s2Step204EntryGvFresh ++ [])) s2Step204EntryFv_Incoming s2Step204EntryFv_checked h3 s2Step204EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step204EntryGBefore s2Step204EntryGAfter s2Step204EntryGvAfter
    s2Step204EntryGRow s2Step204EntryGOut 168 s2Step204EntryGFresh [(s2Step204EntryFvRow,117),(s2Step204EntryGvRow,117)] [s2Step204EntryFvFresh,s2Step204EntryGvFresh] [s2Step204EntryFvOut,s2Step204EntryGvOut]
    (growRow 769 s2Step204EntryGFresh) ((growRow 770 s2Step204EntryFvFresh ++ (growRow 771 s2Step204EntryGvFresh ++ []))) s2Step204EntryG_Incoming s2Step204EntryG_checked h2 s2Step204EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step204EntryFBefore s2Step204EntryFAfter s2Step204EntryGvAfter
    s2Step204EntryFRow s2Step204EntryFOut 168 s2Step204EntryFFresh [(s2Step204EntryGRow,168),(s2Step204EntryFvRow,117),(s2Step204EntryGvRow,117)] [s2Step204EntryGFresh,s2Step204EntryFvFresh,s2Step204EntryGvFresh] [s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut]
    (growRow 768 s2Step204EntryFFresh) ((growRow 769 s2Step204EntryGFresh ++ (growRow 770 s2Step204EntryFvFresh ++ (growRow 771 s2Step204EntryGvFresh ++ [])))) s2Step204EntryF_Incoming s2Step204EntryF_checked h1 s2Step204EntryF_Outgoing
  exact h0

private theorem s2Step204EntryBank_checked : compileHmrBankResizeLog .entry s2Step204EntryFBefore ⟨s2Step204EntryFRow,s2Step204EntryGRow,s2Step204EntryFvRow,s2Step204EntryGvRow⟩ ⟨168,168,117,117⟩ [s2Step204EntryFFresh,s2Step204EntryGFresh,s2Step204EntryFvFresh,s2Step204EntryGvFresh]=
    some (s2Step204EntryGvAfter,⟨s2Step204EntryFOut,s2Step204EntryGOut,s2Step204EntryFvOut,s2Step204EntryGvOut⟩,(growRow 768 s2Step204EntryFFresh ++ (growRow 769 s2Step204EntryGFresh ++ (growRow 770 s2Step204EntryFvFresh ++ (growRow 771 s2Step204EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step204EntryBank_rows]
  rfl

private def s2Step204ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204ExitFBefore : Arena := s2Step204ExitGAfter

private def s2Step204ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩

private def s2Step204ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩

private def s2Step204ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841, 781],769⟩

private def s2Step204ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 789],771⟩

private theorem s2Step204ExitBank_incomingDistinct : ([s2Step204ExitGRow,s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204ExitF_Incoming : rowsOwned s2Step204ExitFBefore [s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204ExitGRow,s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow] 1 s2Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204ExitBank_outgoingOwned : rowsOwned s2Step204ExitGvAfter [s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step204ExitGvAfter (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204ExitF_Outgoing : rowsOwned s2Step204ExitGvAfter [s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] :=
  hmrRows_owned_drop s2Step204ExitGvAfter [s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] 1 s2Step204ExitBank_outgoingOwned

private theorem s2Step204ExitF_distinct : (s2Step204ExitFRow.sign::s2Step204ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204ExitF_owned : (s2Step204ExitFRow.sign::s2Step204ExitFRow.payload).toFinset⊆s2Step204ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204ExitF_retired : s2Step204ExitFBefore.retireSet s2Step204ExitFExtra.toFinset=s2Step204ExitFAfter := by
  unfold Arena.retireSet s2Step204ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step204ExitFBefore,s2Step204ExitGAfter,s2Step204ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step204ExitF_checked : planRowResizeLog s2Step204ExitFBefore s2Step204ExitFRow 167 []=
    some (s2Step204ExitFAfter,s2Step204ExitFOut,shrinkRow 768 s2Step204ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step204ExitFBefore s2Step204ExitFRow 167 s2Step204ExitF_distinct s2Step204ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step204ExitFRow.payload.take 167) s2Step204ExitFRow.sign=s2Step204ExitFOut := by decide +kernel
  have hi : s2Step204ExitFRow.payload.drop 167=s2Step204ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step204ExitF_retired] at result
  exact result

private def s2Step204ExitFvAfter : Arena := s2Step204ExitFAfter

private def s2Step204ExitFvBefore : Arena := s2Step204ExitFAfter

private theorem s2Step204ExitFv_Incoming : rowsOwned s2Step204ExitFvBefore [s2Step204ExitFvRow,s2Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204ExitGRow,s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow] 2 s2Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204ExitFvBefore (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204ExitFv_Outgoing : rowsOwned s2Step204ExitGvAfter [s2Step204ExitFvOut,s2Step204ExitGvOut] :=
  hmrRows_owned_drop s2Step204ExitGvAfter [s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] 2 s2Step204ExitBank_outgoingOwned

private theorem s2Step204ExitFv_distinct : (s2Step204ExitFvRow.sign::s2Step204ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204ExitFv_owned : (s2Step204ExitFvRow.sign::s2Step204ExitFvRow.payload).toFinset⊆s2Step204ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204ExitFvBefore (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204ExitFv_reserved : s2Step204ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step204ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step204ExitFv_checked : planRowResizeLog s2Step204ExitFvBefore s2Step204ExitFvRow 118 []=
    some (s2Step204ExitFvAfter,s2Step204ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step204ExitFvBefore s2Step204ExitFvAfter s2Step204ExitFvRow 118 []
    s2Step204ExitFv_distinct s2Step204ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step204ExitFvRow.payload++[]) s2Step204ExitFvRow.sign=s2Step204ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step204ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step204ExitG_Incoming : rowsOwned s2Step204ExitGBefore [s2Step204ExitGRow,s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204ExitGRow,s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow] 0 s2Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204ExitG_Outgoing : rowsOwned s2Step204ExitGvAfter [s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] :=
  hmrRows_owned_drop s2Step204ExitGvAfter [s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] 0 s2Step204ExitBank_outgoingOwned

private theorem s2Step204ExitG_distinct : (s2Step204ExitGRow.sign::s2Step204ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204ExitG_owned : (s2Step204ExitGRow.sign::s2Step204ExitGRow.payload).toFinset⊆s2Step204ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204ExitG_retired : s2Step204ExitGBefore.retireSet s2Step204ExitGExtra.toFinset=s2Step204ExitGAfter := by
  unfold Arena.retireSet s2Step204ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step204ExitGBefore,s2Step204ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step204ExitG_checked : planRowResizeLog s2Step204ExitGBefore s2Step204ExitGRow 167 []=
    some (s2Step204ExitGAfter,s2Step204ExitGOut,shrinkRow 769 s2Step204ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step204ExitGBefore s2Step204ExitGRow 167 s2Step204ExitG_distinct s2Step204ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step204ExitGRow.payload.take 167) s2Step204ExitGRow.sign=s2Step204ExitGOut := by decide +kernel
  have hi : s2Step204ExitGRow.payload.drop 167=s2Step204ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step204ExitG_retired] at result
  exact result

private def s2Step204ExitGvBefore : Arena := s2Step204ExitFAfter

private theorem s2Step204ExitGv_Incoming : rowsOwned s2Step204ExitGvBefore [s2Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204ExitGRow,s2Step204ExitFRow,s2Step204ExitFvRow,s2Step204ExitGvRow] 3 s2Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204ExitGvBefore (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204ExitGv_Outgoing : rowsOwned s2Step204ExitGvAfter [s2Step204ExitGvOut] :=
  hmrRows_owned_drop s2Step204ExitGvAfter [s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut] 3 s2Step204ExitBank_outgoingOwned

private theorem s2Step204ExitGv_distinct : (s2Step204ExitGvRow.sign::s2Step204ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204ExitGv_owned : (s2Step204ExitGvRow.sign::s2Step204ExitGvRow.payload).toFinset⊆s2Step204ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204ExitGvBefore (fun q => (0≤q ∧ q<679) ∨ (680≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204ExitGv_retired : s2Step204ExitGvBefore.retireSet s2Step204ExitGvExtra.toFinset=s2Step204ExitGvAfter := by
  unfold Arena.retireSet s2Step204ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step204ExitGvBefore,s2Step204ExitFAfter,s2Step204ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step204ExitGv_checked : planRowResizeLog s2Step204ExitGvBefore s2Step204ExitGvRow 117 []=
    some (s2Step204ExitGvAfter,s2Step204ExitGvOut,shrinkRow 771 s2Step204ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step204ExitGvBefore s2Step204ExitGvRow 117 s2Step204ExitGv_distinct s2Step204ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step204ExitGvRow.payload.take 117) s2Step204ExitGvRow.sign=s2Step204ExitGvOut := by decide +kernel
  have hi : s2Step204ExitGvRow.payload.drop 117=s2Step204ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step204ExitGv_retired] at result
  exact result

private theorem s2Step204ExitBank_rows : planWindowRowsLog s2Step204ExitGBefore [(s2Step204ExitGRow,167),(s2Step204ExitFRow,167),(s2Step204ExitFvRow,118),(s2Step204ExitGvRow,117)] [[],[],[],[]]=
    some (s2Step204ExitGvAfter,[s2Step204ExitGOut,s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut],(shrinkRow 769 s2Step204ExitGExtra ++ (shrinkRow 768 s2Step204ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step204ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step204ExitGvAfter [] []=some (s2Step204ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step204ExitGvBefore s2Step204ExitGvAfter s2Step204ExitGvAfter
    s2Step204ExitGvRow s2Step204ExitGvOut 117 [] [] [] []
    (shrinkRow 771 s2Step204ExitGvExtra) ([]) s2Step204ExitGv_Incoming s2Step204ExitGv_checked h4 s2Step204ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step204ExitFvBefore s2Step204ExitFvAfter s2Step204ExitGvAfter
    s2Step204ExitFvRow s2Step204ExitFvOut 118 [] [(s2Step204ExitGvRow,117)] [[]] [s2Step204ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step204ExitGvExtra ++ [])) s2Step204ExitFv_Incoming s2Step204ExitFv_checked h3 s2Step204ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step204ExitFBefore s2Step204ExitFAfter s2Step204ExitGvAfter
    s2Step204ExitFRow s2Step204ExitFOut 167 [] [(s2Step204ExitFvRow,118),(s2Step204ExitGvRow,117)] [[],[]] [s2Step204ExitFvOut,s2Step204ExitGvOut]
    (shrinkRow 768 s2Step204ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step204ExitGvExtra ++ []))) s2Step204ExitF_Incoming s2Step204ExitF_checked h2 s2Step204ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step204ExitGBefore s2Step204ExitGAfter s2Step204ExitGvAfter
    s2Step204ExitGRow s2Step204ExitGOut 167 [] [(s2Step204ExitFRow,167),(s2Step204ExitFvRow,118),(s2Step204ExitGvRow,117)] [[],[],[]] [s2Step204ExitFOut,s2Step204ExitFvOut,s2Step204ExitGvOut]
    (shrinkRow 769 s2Step204ExitGExtra) ((shrinkRow 768 s2Step204ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step204ExitGvExtra ++ [])))) s2Step204ExitG_Incoming s2Step204ExitG_checked h1 s2Step204ExitG_Outgoing
  exact h0

private theorem s2Step204ExitBank_checked : compileHmrBankResizeLog .exit s2Step204ExitGBefore ⟨s2Step204ExitFRow,s2Step204ExitGRow,s2Step204ExitFvRow,s2Step204ExitGvRow⟩ ⟨167,167,118,117⟩ [[],[],[],[]]=
    some (s2Step204ExitGvAfter,⟨s2Step204ExitFOut,s2Step204ExitGOut,s2Step204ExitFvOut,s2Step204ExitGvOut⟩,(shrinkRow 769 s2Step204ExitGExtra ++ (shrinkRow 768 s2Step204ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step204ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step204ExitBank_rows]
  rfl

private theorem s2Step204Add0_apart : Disjoint s2Step204Add0Arena.live s2Step204Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step204Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204Add0_card : s2Step204Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step204Add0_borrowed : s2Step204Add0Arena.checkBorrow (hmrHybridCount s2Step204Add0Arena s2Step204Add0B.length) s2Step204Add0Work=some s2Step204Add0During := by
  have len : s2Step204Add0Work.length=hmrHybridCount s2Step204Add0Arena s2Step204Add0B.length := by
    rw [hmrHybridCount,s2Step204Add0_card]
    decide +kernel
  have nd : s2Step204Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step204Add0Arena s2Step204Add0During s2Step204Add0Work.toFinset s2Step204Add0_bounded s2Step204Add0_apart rfl

private theorem s2Step204Add0_distinct : (814::844::882::(s2Step204Add0A++s2Step204Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204Add0_owned : (814::844::882::(s2Step204Add0A++s2Step204Add0B)).toFinset⊆s2Step204Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step204Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204Add0_checked : compileHmrHybridCinLog s2Step204Add0Arena 844 814 882 s2Step204Add0A s2Step204Add0B s2Step204Add0Work=some s2Step204Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step204Add0Arena s2Step204Add0During 844 814 882 s2Step204Add0A s2Step204Add0B s2Step204Add0Work
    (by decide +kernel) (by decide +kernel) s2Step204Add0_distinct
    (fun q hq => s2Step204Add0_owned (List.mem_toFinset.mpr hq)) s2Step204Add0_borrowed

private theorem s2Step204Add1_apart : Disjoint s2Step204Add1Arena.live s2Step204Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step204Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204Add1_card : s2Step204Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step204Add1_borrowed : s2Step204Add1Arena.checkBorrow (hmrHybridCount s2Step204Add1Arena s2Step204Add1B.length) s2Step204Add1Work=some s2Step204Add1During := by
  have len : s2Step204Add1Work.length=hmrHybridCount s2Step204Add1Arena s2Step204Add1B.length := by
    rw [hmrHybridCount,s2Step204Add1_card]
    decide +kernel
  have nd : s2Step204Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step204Add1Arena s2Step204Add1During s2Step204Add1Work.toFinset s2Step204Add1_bounded s2Step204Add1_apart rfl

private theorem s2Step204Add1_distinct : (814::844::882::(s2Step204Add1A++s2Step204Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204Add1_owned : (814::844::882::(s2Step204Add1A++s2Step204Add1B)).toFinset⊆s2Step204Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step204Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204Add1_checked : compileHmrHybridCinLog s2Step204Add1Arena 844 814 882 s2Step204Add1A s2Step204Add1B s2Step204Add1Work=some s2Step204Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step204Add1Arena s2Step204Add1During 844 814 882 s2Step204Add1A s2Step204Add1B s2Step204Add1Work
    (by decide +kernel) (by decide +kernel) s2Step204Add1_distinct
    (fun q hq => s2Step204Add1_owned (List.mem_toFinset.mpr hq)) s2Step204Add1_borrowed

private theorem s2Step204F4_apart : Disjoint (s2Step204Add0A++s2Step204Add0B).toFinset (s2Step204Add1A++s2Step204Add1B).toFinset := by
  have nd : ((s2Step204Add0A++s2Step204Add0B)++(s2Step204Add1A++s2Step204Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step204F4_carry : s2Step204F4FlagArena.checkBorrow 1 [882]=some s2Step204Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step204F4FlagArena,s2Step204HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step204F4FlagArena,s2Step204HeadFvAfter,s2Step204Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204F4_distinct : (879::844::814::882::((s2Step204Add0A++s2Step204Add1A)++(s2Step204Add0B++s2Step204Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204F4_flag : s2Step204HeadFvAfter.checkBorrow 1 [814]=some s2Step204F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step204HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step204F4_owned : (879::844::((s2Step204Add0A++s2Step204Add1A)++(s2Step204Add0B++s2Step204Add1B))).toFinset⊆s2Step204HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step204HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204F4_checked : compileHmrHybridF4Log s2Step204HeadFvAfter 879 844 s2Step204Add0A s2Step204Add0B s2Step204Add1A s2Step204Add1B [814] [882] s2Step204Add0Work s2Step204Add1Work=some s2Step204F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step204HeadFvAfter s2Step204F4FlagArena s2Step204Add0Arena s2Step204Add0During s2Step204Add1During 879 844
    s2Step204Add0A s2Step204Add0B s2Step204Add1A s2Step204Add1B [814] [882] s2Step204Add0Work s2Step204Add1Work
    (fun q hq => s2Step204F4_owned (List.mem_toFinset.mpr hq)) s2Step204F4_flag s2Step204F4_carry
    s2Step204F4_distinct s2Step204F4_apart s2Step204Add0_checked s2Step204Add1_checked

private theorem s2Step204Front_branch : s2Step204FrontSigmaArena.checkBorrow 1 [844]=some s2Step204HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step204FrontSigmaArena,s2Step204EntryGvAfter,s2Step204EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step204FrontSigmaArena,s2Step204EntryGvAfter,s2Step204EntryGAfter,s2Step204HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204Front_entry : HmrFrontEntryValid s2Step204EntryFBefore s2Step204FrontBank 168 117 ⟨167,167,118,117⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step204FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step204EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step204EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step204FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step204Front_sigma : s2Step204EntryGvAfter.checkBorrow 1 [879]=some s2Step204FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step204EntryGvAfter,s2Step204EntryGAfter,arenaWires]
  · rfl

private def s2Step204HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204HeadFBefore : Arena := s2Step204HeadGAfter

private def s2Step204HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step204HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step204HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841],769⟩

private def s2Step204HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private theorem s2Step204HeadBank_incomingDistinct : ([s2Step204HeadGRow,s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204HeadF_Incoming : rowsOwned s2Step204HeadFBefore [s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204HeadGRow,s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow] 1 s2Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204HeadBank_outgoingOwned : rowsOwned s2Step204HeadFvAfter [s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step204HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204HeadF_Outgoing : rowsOwned s2Step204HeadFvAfter [s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] :=
  hmrRows_owned_drop s2Step204HeadFvAfter [s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] 1 s2Step204HeadBank_outgoingOwned

private theorem s2Step204HeadF_distinct : (s2Step204HeadFRow.sign::s2Step204HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204HeadF_owned : (s2Step204HeadFRow.sign::s2Step204HeadFRow.payload).toFinset⊆s2Step204HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204HeadF_reserved : s2Step204HeadFBefore.reserve s2Step204HeadFFresh.toFinset=some s2Step204HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204HeadFFresh,arenaWires]
  · norm_num [s2Step204HeadFBefore,s2Step204HeadGAfter,s2Step204HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step204HeadFAfter,s2Step204HeadFBefore,s2Step204HeadGAfter,s2Step204HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204HeadF_checked : planRowResizeLog s2Step204HeadFBefore s2Step204HeadFRow 169 s2Step204HeadFFresh=
    some (s2Step204HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩,growRow 768 s2Step204HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step204HeadFBefore s2Step204HeadFAfter s2Step204HeadFRow 169 s2Step204HeadFFresh
    s2Step204HeadF_distinct s2Step204HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204HeadF_reserved
  have rowEq : WindowRow.mk (s2Step204HeadFRow.payload++s2Step204HeadFFresh) s2Step204HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step204HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step204HeadFvBefore : Arena := s2Step204HeadGvAfter

private theorem s2Step204HeadFv_Incoming : rowsOwned s2Step204HeadFvBefore [s2Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204HeadGRow,s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow] 3 s2Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204HeadFv_Outgoing : rowsOwned s2Step204HeadFvAfter [s2Step204HeadFvOut] :=
  hmrRows_owned_drop s2Step204HeadFvAfter [s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] 3 s2Step204HeadBank_outgoingOwned

private theorem s2Step204HeadFv_distinct : (s2Step204HeadFvRow.sign::s2Step204HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204HeadFv_owned : (s2Step204HeadFvRow.sign::s2Step204HeadFvRow.payload).toFinset⊆s2Step204HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204HeadFv_reserved : s2Step204HeadFvBefore.reserve s2Step204HeadFvFresh.toFinset=some s2Step204HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204HeadFvFresh,arenaWires]
  · norm_num [s2Step204HeadFvBefore,s2Step204HeadGvAfter,s2Step204HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step204HeadFvAfter,s2Step204HeadFvBefore,s2Step204HeadGvAfter,s2Step204HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204HeadFv_checked : planRowResizeLog s2Step204HeadFvBefore s2Step204HeadFvRow 118 s2Step204HeadFvFresh=
    some (s2Step204HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩,growRow 770 s2Step204HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step204HeadFvBefore s2Step204HeadFvAfter s2Step204HeadFvRow 118 s2Step204HeadFvFresh
    s2Step204HeadFv_distinct s2Step204HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step204HeadFvRow.payload++s2Step204HeadFvFresh) s2Step204HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step204HeadG_Incoming : rowsOwned s2Step204HeadGBefore [s2Step204HeadGRow,s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204HeadGRow,s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow] 0 s2Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204HeadG_Outgoing : rowsOwned s2Step204HeadFvAfter [s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] :=
  hmrRows_owned_drop s2Step204HeadFvAfter [s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] 0 s2Step204HeadBank_outgoingOwned

private theorem s2Step204HeadG_distinct : (s2Step204HeadGRow.sign::s2Step204HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204HeadG_owned : (s2Step204HeadGRow.sign::s2Step204HeadGRow.payload).toFinset⊆s2Step204HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204HeadG_reserved : s2Step204HeadGBefore.reserve s2Step204HeadGFresh.toFinset=some s2Step204HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204HeadGFresh,arenaWires]
  · norm_num [s2Step204HeadGBefore,s2Step204HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step204HeadGAfter,s2Step204HeadGBefore,s2Step204HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204HeadG_checked : planRowResizeLog s2Step204HeadGBefore s2Step204HeadGRow 169 s2Step204HeadGFresh=
    some (s2Step204HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841, 781],769⟩,growRow 769 s2Step204HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step204HeadGBefore s2Step204HeadGAfter s2Step204HeadGRow 169 s2Step204HeadGFresh
    s2Step204HeadG_distinct s2Step204HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204HeadG_reserved
  have rowEq : WindowRow.mk (s2Step204HeadGRow.payload++s2Step204HeadGFresh) s2Step204HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 841, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step204HeadGvBefore : Arena := s2Step204HeadFAfter

private theorem s2Step204HeadGv_Incoming : rowsOwned s2Step204HeadGvBefore [s2Step204HeadGvRow,s2Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step204HeadGRow,s2Step204HeadFRow,s2Step204HeadGvRow,s2Step204HeadFvRow] 2 s2Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step204HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step204HeadGv_Outgoing : rowsOwned s2Step204HeadFvAfter [s2Step204HeadGvOut,s2Step204HeadFvOut] :=
  hmrRows_owned_drop s2Step204HeadFvAfter [s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut] 2 s2Step204HeadBank_outgoingOwned

private theorem s2Step204HeadGv_distinct : (s2Step204HeadGvRow.sign::s2Step204HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step204HeadGv_owned : (s2Step204HeadGvRow.sign::s2Step204HeadGvRow.payload).toFinset⊆s2Step204HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step204HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step204HeadGv_reserved : s2Step204HeadGvBefore.reserve s2Step204HeadGvFresh.toFinset=some s2Step204HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step204HeadGvFresh,arenaWires]
  · norm_num [s2Step204HeadGvBefore,s2Step204HeadFAfter,s2Step204HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step204HeadGvAfter,s2Step204HeadGvBefore,s2Step204HeadFAfter,s2Step204HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step204HeadGv_checked : planRowResizeLog s2Step204HeadGvBefore s2Step204HeadGvRow 118 s2Step204HeadGvFresh=
    some (s2Step204HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 789],771⟩,growRow 771 s2Step204HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step204HeadGvBefore s2Step204HeadGvAfter s2Step204HeadGvRow 118 s2Step204HeadGvFresh
    s2Step204HeadGv_distinct s2Step204HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step204HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step204HeadGvRow.payload++s2Step204HeadGvFresh) s2Step204HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step204HeadBank_rows : planWindowRowsLog s2Step204HeadGBefore [(s2Step204HeadGRow,169),(s2Step204HeadFRow,169),(s2Step204HeadGvRow,118),(s2Step204HeadFvRow,118)] [s2Step204HeadGFresh,s2Step204HeadFFresh,s2Step204HeadGvFresh,s2Step204HeadFvFresh]=
    some (s2Step204HeadFvAfter,[s2Step204HeadGOut,s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut],(growRow 769 s2Step204HeadGFresh ++ (growRow 768 s2Step204HeadFFresh ++ (growRow 771 s2Step204HeadGvFresh ++ (growRow 770 s2Step204HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step204HeadFvAfter [] []=some (s2Step204HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step204HeadFvBefore s2Step204HeadFvAfter s2Step204HeadFvAfter
    s2Step204HeadFvRow s2Step204HeadFvOut 118 s2Step204HeadFvFresh [] [] []
    (growRow 770 s2Step204HeadFvFresh) ([]) s2Step204HeadFv_Incoming s2Step204HeadFv_checked h4 s2Step204HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step204HeadGvBefore s2Step204HeadGvAfter s2Step204HeadFvAfter
    s2Step204HeadGvRow s2Step204HeadGvOut 118 s2Step204HeadGvFresh [(s2Step204HeadFvRow,118)] [s2Step204HeadFvFresh] [s2Step204HeadFvOut]
    (growRow 771 s2Step204HeadGvFresh) ((growRow 770 s2Step204HeadFvFresh ++ [])) s2Step204HeadGv_Incoming s2Step204HeadGv_checked h3 s2Step204HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step204HeadFBefore s2Step204HeadFAfter s2Step204HeadFvAfter
    s2Step204HeadFRow s2Step204HeadFOut 169 s2Step204HeadFFresh [(s2Step204HeadGvRow,118),(s2Step204HeadFvRow,118)] [s2Step204HeadGvFresh,s2Step204HeadFvFresh] [s2Step204HeadGvOut,s2Step204HeadFvOut]
    (growRow 768 s2Step204HeadFFresh) ((growRow 771 s2Step204HeadGvFresh ++ (growRow 770 s2Step204HeadFvFresh ++ []))) s2Step204HeadF_Incoming s2Step204HeadF_checked h2 s2Step204HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step204HeadGBefore s2Step204HeadGAfter s2Step204HeadFvAfter
    s2Step204HeadGRow s2Step204HeadGOut 169 s2Step204HeadGFresh [(s2Step204HeadFRow,169),(s2Step204HeadGvRow,118),(s2Step204HeadFvRow,118)] [s2Step204HeadFFresh,s2Step204HeadGvFresh,s2Step204HeadFvFresh] [s2Step204HeadFOut,s2Step204HeadGvOut,s2Step204HeadFvOut]
    (growRow 769 s2Step204HeadGFresh) ((growRow 768 s2Step204HeadFFresh ++ (growRow 771 s2Step204HeadGvFresh ++ (growRow 770 s2Step204HeadFvFresh ++ [])))) s2Step204HeadG_Incoming s2Step204HeadG_checked h1 s2Step204HeadG_Outgoing
  exact h0

private theorem s2Step204HeadBank_checked : compileHmrBankResizeLog .headroom s2Step204HeadGBefore ⟨s2Step204HeadFRow,s2Step204HeadGRow,s2Step204HeadFvRow,s2Step204HeadGvRow⟩ ⟨169,169,118,118⟩ [s2Step204HeadGFresh,s2Step204HeadFFresh,s2Step204HeadGvFresh,s2Step204HeadFvFresh]=
    some (s2Step204HeadFvAfter,⟨s2Step204HeadFOut,s2Step204HeadGOut,s2Step204HeadFvOut,s2Step204HeadGvOut⟩,(growRow 769 s2Step204HeadGFresh ++ (growRow 768 s2Step204HeadFFresh ++ (growRow 771 s2Step204HeadGvFresh ++ (growRow 770 s2Step204HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step204HeadBank_rows]
  rfl

private theorem s2Step204Front_checked : compileHmrSourceFrontLog s2Step204EntryFBefore s2Step204FrontBank 168 117 ⟨167,167,118,117⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step204FrontLog=some s2Step204FrontPlan := by
  have pairEq : s2Step204FrontPair=⟨s2Step204HeadFRow,s2Step204HeadGRow,s2Step204HeadFvRow,s2Step204HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step204FrontHead=⟨s2Step204ExitFRow,s2Step204ExitGRow,s2Step204ExitFvRow,s2Step204ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step204Add0A=s2Step204FrontHead.f.wires := by decide +kernel
  have gEq : s2Step204Add0B=s2Step204FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step204Add1A=s2Step204FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step204Add1B=s2Step204FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step204EntryFBefore s2Step204FrontBank 168 117 ⟨167,167,118,117⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step204FrontLog s2Step204FrontPlan
  · exact s2Step204Front_entry
  · exact s2Step204EntryBank_checked
  · exact s2Step204Front_sigma
  · rfl
  · exact s2Step204Front_branch
  · rfl
  · simpa only [s2Step204FrontPlan,pairEq] using s2Step204HeadBank_checked
  · simpa only [s2Step204FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step204F4_checked
  · exact s2Step204Counter_checked
  · rfl
  · simpa only [s2Step204FrontPlan,headEq] using s2Step204ExitBank_checked

private theorem s2Step204Complete_explicit_checked : compileHmrEarlyStepLog s2Step204EntryFBefore s2Step204FrontBank 168 117 ⟨167,167,118,117⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step204CompleteLog=some s2Step204CompletePlan := by
  let Q := s2Step204EarlyControlPlan
  have hq := s2Step204EarlyControl_plan_checked
  have fv1 : s2Step204CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step204CompleteOut.fv.payload[2]?.getD s2Step204CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step204CompleteOut.fv.payload[3]?.getD s2Step204CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step204CompleteOut.fv.payload[4]?.getD s2Step204CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step204EntryFBefore s2Step204EarlyControlArena s2Step204FrontBank 168 117 ⟨167,167,118,117⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step204CompleteLog s2Step204FrontPlan Q
    s2Step204Front_checked s2Step204Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step204Complete_owned s2Step204Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step204EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 s2Step204CompleteOut.fv.second (s2Step204CompleteOut.fv.payload[2]?.getD s2Step204CompleteOut.fv.sign) (s2Step204CompleteOut.fv.payload[3]?.getD s2Step204CompleteOut.fv.sign) (s2Step204CompleteOut.fv.payload[4]?.getD s2Step204CompleteOut.fv.sign) 844 47 s2Step204EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep204Arena : Arena := s2Step204EntryFBefore
def s2PrivateStep204Bank : WindowBank := s2Step204FrontBank
def s2PrivateStep204Spec : HmrSourceWalkStepLog := ⟨168,117,⟨167,167,118,117⟩,47,.early s2Step204CompleteLog⟩
def s2PrivateStep204Plan : HmrSourceStepPlan := .early s2Step204CompletePlan
theorem s2PrivateStep204_source : s2PrivateStep204Spec=s2ObservedLogs192[12] := rfl
theorem s2PrivateStep204_checked : compileHmrSourceStepLog s2PrivateStep204Arena s2PrivateStep204Bank
    s2PrivateStep204Spec.fgWidth s2PrivateStep204Spec.vWidth s2PrivateStep204Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 204 s2PrivateStep204Spec.need none s2PrivateStep204Spec.log=some s2PrivateStep204Plan := by
  change compileHmrSourceStepLog s2Step204EntryFBefore s2Step204FrontBank 168 117 ⟨167,167,118,117⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 204 47 none (.early s2Step204CompleteLog)=some (.early s2Step204CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 204<498)]
  rw [s2Step204Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
