import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep201
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

private def s2Step203CompleteMoves : List (Wire × Wire) := [(844,167)]

private def s2Step203EarlyControlLog : HmrEarlyControlLog := ⟨[844, 781, 816, 789, 822],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step203FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [877], []],[[822], [789], [781], [816]],[[], [], [], []]⟩,[879],[841],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step203CompleteLog : HmrEarlyStepLog := ⟨s2Step203FrontLog,s2Step203CompleteMoves,s2Step203EarlyControlLog⟩

private def s2Step203ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step203ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step203ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩

private def s2Step203ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step203FrontOut : WindowBank := ⟨s2Step203ExitFOut,s2Step203ExitGOut,s2Step203ExitFvOut,s2Step203ExitGvOut⟩

private def s2Step203CompleteOut : WindowBank := s2Step203FrontOut.repacked s2Step203CompleteMoves

private def s2Step203EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step203EarlyControlPositiveArena,[814],s2Step203EarlyControlEqualityArena,[882],⟨⟨879,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step203EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,844⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,822⟩]⟩

private def s2Step203EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step203EarlyControlZeroArena,s2Step203EarlyControlZeroPlan,s2Step203EarlyControlClassPlan,s2Step203EarlyControlFlagArena,s2Step203EarlyControlFittedArena,s2Step203EarlyControlHistoryArena,s2Step203EarlyControlSigmaArena,s2Step203EarlyControlOutputArena,s2Step203EarlyControlLog⟩

private def s2Step203CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step203Counter_bounded : s2Step203CounterWork.toFinset⊆arenaWires := by norm_num [s2Step203CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step203HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203CounterDuring : Arena := ⟨s2Step203HeadFvAfter.live∪s2Step203CounterWork.toFinset,Finset.union_subset s2Step203HeadFvAfter.bounded s2Step203Counter_bounded⟩

private def s2Step203EntryFFresh : List Wire := []

private def s2Step203EntryFvFresh : List Wire := [877]

private def s2Step203EntryGFresh : List Wire := []

private def s2Step203EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EntryGvAfter : Arena := s2Step203EntryFvAfter

private def s2Step203EntryGvFresh : List Wire := []

private def s2Step203ExitFExtra : List Wire := [789]

private def s2Step203ExitFvExtra : List Wire := [816]

private def s2Step203ExitGExtra : List Wire := [167, 822]

private def s2Step203ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203ExitGvExtra : List Wire := [781]

private def s2Step203Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step203Add0_bounded : s2Step203Add0Work.toFinset⊆arenaWires := by
  have h : s2Step203Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step203Add0During : Arena := ⟨s2Step203Add0Arena.live∪s2Step203Add0Work.toFinset,Finset.union_subset s2Step203Add0Arena.bounded s2Step203Add0_bounded⟩

private def s2Step203Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step203Add1_bounded : s2Step203Add1Work.toFinset⊆arenaWires := by
  have h : s2Step203Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step203Add1During : Arena := ⟨s2Step203Add1Arena.live∪s2Step203Add1Work.toFinset,Finset.union_subset s2Step203Add1Arena.bounded s2Step203Add1_bounded⟩

private def s2Step203F4FlagArena : Arena := ⟨s2Step203HeadFvAfter.live∪{814},Finset.union_subset s2Step203HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step203F4Plan : HmrHybridF4Plan := ⟨s2Step203F4FlagArena,[814],s2Step203Add0Arena,[882],s2Step203Add0During,s2Step203Add0Work,s2Step203Add1During,s2Step203Add1Work⟩

private def s2Step203HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 789],768⟩

private def s2Step203HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 816],770⟩

private def s2Step203HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 822],769⟩

private def s2Step203HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 781],771⟩

private def s2Step203FrontHead : WindowBank := ⟨s2Step203HeadFOut,s2Step203HeadGOut,s2Step203HeadFvOut,s2Step203HeadGvOut⟩

private def s2Step203EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step203EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step203EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],769⟩

private def s2Step203EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step203FrontPair : WindowBank := ⟨s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut⟩

private def s2Step203FrontSigmaArena : Arena := ⟨s2Step203EntryGvAfter.live∪{879},Finset.union_subset s2Step203EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step203HeadFFresh : List Wire := [789]

private def s2Step203HeadFvFresh : List Wire := [816]

private def s2Step203HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203HeadGFresh : List Wire := [822]

private def s2Step203HeadGvFresh : List Wire := [781]

private def s2Step203FrontPlan : HmrSourceFront := ⟨s2Step203EntryGvAfter,s2Step203FrontPair,(growRow 768 s2Step203EntryFFresh ++ (growRow 769 s2Step203EntryGFresh ++ (growRow 770 s2Step203EntryFvFresh ++ (growRow 771 s2Step203EntryGvFresh ++ [])))),s2Step203FrontSigmaArena,[879],s2Step203HeadGBefore,[841],
  s2Step203HeadFvAfter,s2Step203FrontHead,(growRow 769 s2Step203HeadGFresh ++ (growRow 768 s2Step203HeadFFresh ++ (growRow 771 s2Step203HeadGvFresh ++ (growRow 770 s2Step203HeadFvFresh ++ [])))),s2Step203F4Plan,s2Step203CounterDuring,s2Step203CounterWork,s2Step203ExitGvAfter,s2Step203FrontOut,(shrinkRow 769 s2Step203ExitGExtra ++ (shrinkRow 768 s2Step203ExitFExtra ++ (shrinkRow 770 s2Step203ExitFvExtra ++ (shrinkRow 771 s2Step203ExitGvExtra ++ []))))⟩

private def s2Step203CompletePlan : HmrEarlyStepPlan := ⟨s2Step203FrontPlan,s2Step203EarlyControlArena,s2Step203EarlyControlPlan,s2Step203CompleteMoves⟩

private theorem s2Step203Complete_apart : List.Disjoint (s2Step203CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [879, 841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step203CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[879, 841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step203Complete_owned : (s2Step203CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step203EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step203CompleteMoveArena : Arena := ⟨s2Step203ExitGvAfter.live∪{167},Finset.union_subset s2Step203ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step203Complete_repack : s2Step203ExitGvAfter.checkRepack s2Step203CompleteMoves=some s2Step203EarlyControlArena := by
  have owned : 844∈s2Step203ExitGvAfter.live := by norm_num [s2Step203ExitGvAfter,arenaWires]
  have reserve : s2Step203ExitGvAfter.reserve {167}=some s2Step203CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step203ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step203CompleteMoveArena.retireSet {844}=s2Step203EarlyControlArena := by
    unfold Arena.retireSet s2Step203EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step203CompleteMoveArena,s2Step203ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step203CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step203CompleteMoveArena.retireSet {844}).checkRepack []=some s2Step203EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step203EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s2Step203EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_branch : compileHmrBranchRetirement s2Step203EarlyControlSigmaArena 841=some s2Step203EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step203EarlyControl_branchOwned
  · ext q
    simp [s2Step203EarlyControlOutputArena,s2Step203EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step203EarlyControl_classEqualityBorrow : s2Step203EarlyControlPositiveArena.checkBorrow (([879, 814] : List Wire).length-1) s2Step203EarlyControlLog.classWork=some s2Step203EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step203EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step203EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step203EarlyControlEqualityArena,s2Step203EarlyControlPositiveArena,s2Step203EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step203EarlyControl_classEqualityOwned : ([879, 814] : List Wire).toFinset⊆s2Step203EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_classEquality : compileHmrEqualityLog s2Step203EarlyControlPositiveArena [879, 814] 0 s2Step203EarlyControlLog.classWork=some (s2Step203EarlyControlEqualityArena,s2Step203EarlyControlLog.classWork,s2Step203EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step203EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step203EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step203EarlyControl_classOwned : ([777, 822, 879] : List Wire).toFinset⊆s2Step203EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_positiveBorrow : s2Step203EarlyControlZeroArena.checkBorrow (1) s2Step203EarlyControlLog.positiveWork=some s2Step203EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step203EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step203EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step203EarlyControlPositiveArena,s2Step203EarlyControlZeroArena,s2Step203EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step203EarlyControl_class : compileHmrSourceClassLog s2Step203EarlyControlZeroArena false 777 s2Step203EarlyControlZeroPlan.top 0 879 s2Step203EarlyControlLog.positiveWork s2Step203EarlyControlLog.classWork=some s2Step203EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step203EarlyControlClassPlan s2Step203EarlyControlZeroArena false 777 s2Step203EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s2Step203EarlyControl_classOwned
  · exact s2Step203EarlyControl_positiveBorrow
  · exact s2Step203EarlyControl_classEquality

private theorem s2Step203EarlyControl_entryRecordOwned : ([841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step203EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s2Step203EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_fitBorrow : s2Step203EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step203EarlyControlLog.recordFresh=some s2Step203EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step203EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step203EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step203EarlyControlFittedArena,s2Step203EarlyControlFlagArena,s2Step203EarlyControlLog,arenaWires]

private theorem s2Step203EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step203EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_fit : compileHmrRecordGrowLog s2Step203EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step203EarlyControlLog.recordFresh=some s2Step203EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step203EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step203EarlyControl_fitBorrow

private theorem s2Step203EarlyControl_flagsBorrow : s2Step203EarlyControlEqualityArena.checkBorrow (6) s2Step203EarlyControlLog.flagWork=some s2Step203EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step203EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step203EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step203EarlyControlFlagArena,s2Step203EarlyControlEqualityArena,s2Step203EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step203EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step203EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_flags : compileHmrFlagsLog s2Step203EarlyControlClassPlan.equalityArena s2Step203EarlyControlClassPlan.equality.top 253 252 251 s2Step203EarlyControlLog.flagWork=some s2Step203EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step203EarlyControl_flagsOwned⟩
  · exact s2Step203EarlyControl_flagsBorrow

private theorem s2Step203EarlyControl_historyBorrow : s2Step203EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step203EarlyControlLog.recordFresh=some s2Step203EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step203EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step203EarlyControlHistoryArena,s2Step203EarlyControlArena,s2Step203EarlyControlLog,arenaWires]

private theorem s2Step203EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step203EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_history : compileHmrRecordGrowLog s2Step203EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step203EarlyControlLog.recordFresh=some s2Step203EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step203EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step203EarlyControl_historyBorrow

private theorem s2Step203EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s2Step203EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s2Step203EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_sigmaRelease : s2Step203EarlyControlHistoryArena.release {879} (fun _ => false)=some s2Step203EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step203EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step203EarlyControlSigmaArena,s2Step203EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step203EarlyControl_sigma : compileHmrSigmaDropLog s2Step203EarlyControlHistoryArena false 0 0 254 879 []=some s2Step203EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step203EarlyControl_sigmaOwned⟩
  · exact s2Step203EarlyControl_sigmaRelease

private theorem s2Step203EarlyControl_zeroBorrow : s2Step203EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step203EarlyControlLog.zeroWork=some s2Step203EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step203EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step203EarlyControlZeroArena,s2Step203EarlyControlArena,s2Step203EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step203EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step203EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step203EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EarlyControl_zero : compileHmrEqualityLog s2Step203EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step203EarlyControlLog.zeroWork=some (s2Step203EarlyControlZeroArena,s2Step203EarlyControlLog.zeroWork,s2Step203EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step203EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step203EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step203EarlyControl_logged : s2Step203EarlyControlPlan.Logged s2Step203EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 841 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step203EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step203EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step203EarlyControl_zero
  · exact s2Step203EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step203EarlyControl_flags
  · exact s2Step203EarlyControl_fit
  · exact s2Step203EarlyControl_history
  · exact s2Step203EarlyControl_sigma
  · exact s2Step203EarlyControl_branch

private theorem s2Step203EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step203EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 841 47 s2Step203EarlyControlLog=some s2Step203EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step203EarlyControlPlan s2Step203EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 841 47 s2Step203EarlyControl_logged

private def s2Step203EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step203EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788],770⟩

private def s2Step203EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],769⟩

private def s2Step203EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step203FrontBank : WindowBank := ⟨s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow⟩

private def s2Step203Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 789, 768]

private def s2Step203Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 822, 769]

private def s2Step203Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 816, 770]

private def s2Step203Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 781, 771]

private theorem s2Step203Counter_apart : Disjoint s2Step203HeadFvAfter.live s2Step203CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step203HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203Counter_borrowed : s2Step203HeadFvAfter.checkBorrow 4 s2Step203CounterWork=some s2Step203CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step203HeadFvAfter s2Step203CounterDuring s2Step203CounterWork.toFinset s2Step203Counter_bounded s2Step203Counter_apart rfl

private theorem s2Step203Counter_owned : (879::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step203HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step203HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203Counter_checked : compileHmrCounterStepLog s2Step203HeadFvAfter true 879 [772, 773, 774, 775, 776, 777] s2Step203CounterWork=some s2Step203CounterDuring := by
  have owned : ∀q∈879::[772, 773, 774, 775, 776, 777],q∈s2Step203HeadFvAfter.live := fun q hq => s2Step203Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step203Counter_borrowed

private def s2Step203EntryFAfter : Arena := s2Step203EntryFBefore

private theorem s2Step203EntryBank_incomingDistinct : ([s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203EntryF_Incoming : rowsOwned s2Step203EntryFBefore [s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow] 0 s2Step203EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203EntryBank_outgoingOwned : rowsOwned s2Step203EntryGvAfter [s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step203EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203EntryF_Outgoing : rowsOwned s2Step203EntryGvAfter [s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] :=
  hmrRows_owned_drop s2Step203EntryGvAfter [s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] 0 s2Step203EntryBank_outgoingOwned

private theorem s2Step203EntryF_distinct : (s2Step203EntryFRow.sign::s2Step203EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203EntryF_owned : (s2Step203EntryFRow.sign::s2Step203EntryFRow.payload).toFinset⊆s2Step203EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EntryF_reserved : s2Step203EntryFBefore.reserve s2Step203EntryFFresh.toFinset=some s2Step203EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203EntryFFresh,arenaWires]
  · norm_num [s2Step203EntryFBefore,s2Step203EntryFFresh,arenaWires]
  · simp only [s2Step203EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step203EntryF_checked : planRowResizeLog s2Step203EntryFBefore s2Step203EntryFRow 168 s2Step203EntryFFresh=
    some (s2Step203EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩,growRow 768 s2Step203EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step203EntryFBefore s2Step203EntryFAfter s2Step203EntryFRow 168 s2Step203EntryFFresh
    s2Step203EntryF_distinct s2Step203EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203EntryF_reserved
  have rowEq : WindowRow.mk (s2Step203EntryFRow.payload++s2Step203EntryFFresh) s2Step203EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step203EntryFvBefore : Arena := s2Step203EntryFBefore

private theorem s2Step203EntryFv_Incoming : rowsOwned s2Step203EntryFvBefore [s2Step203EntryFvRow,s2Step203EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow] 2 s2Step203EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203EntryFv_Outgoing : rowsOwned s2Step203EntryGvAfter [s2Step203EntryFvOut,s2Step203EntryGvOut] :=
  hmrRows_owned_drop s2Step203EntryGvAfter [s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] 2 s2Step203EntryBank_outgoingOwned

private theorem s2Step203EntryFv_distinct : (s2Step203EntryFvRow.sign::s2Step203EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203EntryFv_owned : (s2Step203EntryFvRow.sign::s2Step203EntryFvRow.payload).toFinset⊆s2Step203EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EntryFv_reserved : s2Step203EntryFvBefore.reserve s2Step203EntryFvFresh.toFinset=some s2Step203EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203EntryFvFresh,arenaWires]
  · norm_num [s2Step203EntryFvBefore,s2Step203EntryFBefore,s2Step203EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step203EntryFvAfter,s2Step203EntryFvBefore,s2Step203EntryFBefore,s2Step203EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203EntryFv_checked : planRowResizeLog s2Step203EntryFvBefore s2Step203EntryFvRow 117 s2Step203EntryFvFresh=
    some (s2Step203EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩,growRow 770 s2Step203EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step203EntryFvBefore s2Step203EntryFvAfter s2Step203EntryFvRow 117 s2Step203EntryFvFresh
    s2Step203EntryFv_distinct s2Step203EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step203EntryFvRow.payload++s2Step203EntryFvFresh) s2Step203EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step203EntryGAfter : Arena := s2Step203EntryFBefore

private def s2Step203EntryGBefore : Arena := s2Step203EntryFBefore

private theorem s2Step203EntryG_Incoming : rowsOwned s2Step203EntryGBefore [s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow] 1 s2Step203EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203EntryG_Outgoing : rowsOwned s2Step203EntryGvAfter [s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] :=
  hmrRows_owned_drop s2Step203EntryGvAfter [s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] 1 s2Step203EntryBank_outgoingOwned

private theorem s2Step203EntryG_distinct : (s2Step203EntryGRow.sign::s2Step203EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203EntryG_owned : (s2Step203EntryGRow.sign::s2Step203EntryGRow.payload).toFinset⊆s2Step203EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EntryG_reserved : s2Step203EntryGBefore.reserve s2Step203EntryGFresh.toFinset=some s2Step203EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203EntryGFresh,arenaWires]
  · norm_num [s2Step203EntryGBefore,s2Step203EntryFBefore,s2Step203EntryGFresh,arenaWires]
  · simp only [s2Step203EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step203EntryG_checked : planRowResizeLog s2Step203EntryGBefore s2Step203EntryGRow 168 s2Step203EntryGFresh=
    some (s2Step203EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],769⟩,growRow 769 s2Step203EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step203EntryGBefore s2Step203EntryGAfter s2Step203EntryGRow 168 s2Step203EntryGFresh
    s2Step203EntryG_distinct s2Step203EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203EntryG_reserved
  have rowEq : WindowRow.mk (s2Step203EntryGRow.payload++s2Step203EntryGFresh) s2Step203EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step203EntryGvBefore : Arena := s2Step203EntryFvAfter

private theorem s2Step203EntryGv_Incoming : rowsOwned s2Step203EntryGvBefore [s2Step203EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow] 3 s2Step203EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203EntryGv_Outgoing : rowsOwned s2Step203EntryGvAfter [s2Step203EntryGvOut] :=
  hmrRows_owned_drop s2Step203EntryGvAfter [s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut] 3 s2Step203EntryBank_outgoingOwned

private theorem s2Step203EntryGv_distinct : (s2Step203EntryGvRow.sign::s2Step203EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203EntryGv_owned : (s2Step203EntryGvRow.sign::s2Step203EntryGvRow.payload).toFinset⊆s2Step203EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203EntryGv_reserved : s2Step203EntryGvBefore.reserve s2Step203EntryGvFresh.toFinset=some s2Step203EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203EntryGvFresh,arenaWires]
  · norm_num [s2Step203EntryGvBefore,s2Step203EntryFvAfter,s2Step203EntryGvFresh,arenaWires]
  · simp only [s2Step203EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step203EntryGv_checked : planRowResizeLog s2Step203EntryGvBefore s2Step203EntryGvRow 117 s2Step203EntryGvFresh=
    some (s2Step203EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩,growRow 771 s2Step203EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step203EntryGvBefore s2Step203EntryGvAfter s2Step203EntryGvRow 117 s2Step203EntryGvFresh
    s2Step203EntryGv_distinct s2Step203EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step203EntryGvRow.payload++s2Step203EntryGvFresh) s2Step203EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step203EntryBank_rows : planWindowRowsLog s2Step203EntryFBefore [(s2Step203EntryFRow,168),(s2Step203EntryGRow,168),(s2Step203EntryFvRow,117),(s2Step203EntryGvRow,117)] [s2Step203EntryFFresh,s2Step203EntryGFresh,s2Step203EntryFvFresh,s2Step203EntryGvFresh]=
    some (s2Step203EntryGvAfter,[s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut],(growRow 768 s2Step203EntryFFresh ++ (growRow 769 s2Step203EntryGFresh ++ (growRow 770 s2Step203EntryFvFresh ++ (growRow 771 s2Step203EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step203EntryGvAfter [] []=some (s2Step203EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step203EntryGvBefore s2Step203EntryGvAfter s2Step203EntryGvAfter
    s2Step203EntryGvRow s2Step203EntryGvOut 117 s2Step203EntryGvFresh [] [] []
    (growRow 771 s2Step203EntryGvFresh) ([]) s2Step203EntryGv_Incoming s2Step203EntryGv_checked h4 s2Step203EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step203EntryFvBefore s2Step203EntryFvAfter s2Step203EntryGvAfter
    s2Step203EntryFvRow s2Step203EntryFvOut 117 s2Step203EntryFvFresh [(s2Step203EntryGvRow,117)] [s2Step203EntryGvFresh] [s2Step203EntryGvOut]
    (growRow 770 s2Step203EntryFvFresh) ((growRow 771 s2Step203EntryGvFresh ++ [])) s2Step203EntryFv_Incoming s2Step203EntryFv_checked h3 s2Step203EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step203EntryGBefore s2Step203EntryGAfter s2Step203EntryGvAfter
    s2Step203EntryGRow s2Step203EntryGOut 168 s2Step203EntryGFresh [(s2Step203EntryFvRow,117),(s2Step203EntryGvRow,117)] [s2Step203EntryFvFresh,s2Step203EntryGvFresh] [s2Step203EntryFvOut,s2Step203EntryGvOut]
    (growRow 769 s2Step203EntryGFresh) ((growRow 770 s2Step203EntryFvFresh ++ (growRow 771 s2Step203EntryGvFresh ++ []))) s2Step203EntryG_Incoming s2Step203EntryG_checked h2 s2Step203EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step203EntryFBefore s2Step203EntryFAfter s2Step203EntryGvAfter
    s2Step203EntryFRow s2Step203EntryFOut 168 s2Step203EntryFFresh [(s2Step203EntryGRow,168),(s2Step203EntryFvRow,117),(s2Step203EntryGvRow,117)] [s2Step203EntryGFresh,s2Step203EntryFvFresh,s2Step203EntryGvFresh] [s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut]
    (growRow 768 s2Step203EntryFFresh) ((growRow 769 s2Step203EntryGFresh ++ (growRow 770 s2Step203EntryFvFresh ++ (growRow 771 s2Step203EntryGvFresh ++ [])))) s2Step203EntryF_Incoming s2Step203EntryF_checked h1 s2Step203EntryF_Outgoing
  exact h0

private theorem s2Step203EntryBank_checked : compileHmrBankResizeLog .entry s2Step203EntryFBefore ⟨s2Step203EntryFRow,s2Step203EntryGRow,s2Step203EntryFvRow,s2Step203EntryGvRow⟩ ⟨168,168,117,117⟩ [s2Step203EntryFFresh,s2Step203EntryGFresh,s2Step203EntryFvFresh,s2Step203EntryGvFresh]=
    some (s2Step203EntryGvAfter,⟨s2Step203EntryFOut,s2Step203EntryGOut,s2Step203EntryFvOut,s2Step203EntryGvOut⟩,(growRow 768 s2Step203EntryFFresh ++ (growRow 769 s2Step203EntryGFresh ++ (growRow 770 s2Step203EntryFvFresh ++ (growRow 771 s2Step203EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step203EntryBank_rows]
  rfl

private def s2Step203ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203ExitFBefore : Arena := s2Step203ExitGAfter

private def s2Step203ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 789],768⟩

private def s2Step203ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 816],770⟩

private def s2Step203ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 822],769⟩

private def s2Step203ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 781],771⟩

private theorem s2Step203ExitBank_incomingDistinct : ([s2Step203ExitGRow,s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203ExitF_Incoming : rowsOwned s2Step203ExitFBefore [s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203ExitGRow,s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow] 1 s2Step203ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203ExitFBefore (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203ExitBank_outgoingOwned : rowsOwned s2Step203ExitGvAfter [s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step203ExitGvAfter (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203ExitF_Outgoing : rowsOwned s2Step203ExitGvAfter [s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] :=
  hmrRows_owned_drop s2Step203ExitGvAfter [s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] 1 s2Step203ExitBank_outgoingOwned

private theorem s2Step203ExitF_distinct : (s2Step203ExitFRow.sign::s2Step203ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203ExitF_owned : (s2Step203ExitFRow.sign::s2Step203ExitFRow.payload).toFinset⊆s2Step203ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203ExitFBefore (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203ExitF_retired : s2Step203ExitFBefore.retireSet s2Step203ExitFExtra.toFinset=s2Step203ExitFAfter := by
  unfold Arena.retireSet s2Step203ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step203ExitFBefore,s2Step203ExitGAfter,s2Step203ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step203ExitF_checked : planRowResizeLog s2Step203ExitFBefore s2Step203ExitFRow 168 []=
    some (s2Step203ExitFAfter,s2Step203ExitFOut,shrinkRow 768 s2Step203ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step203ExitFBefore s2Step203ExitFRow 168 s2Step203ExitF_distinct s2Step203ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step203ExitFRow.payload.take 168) s2Step203ExitFRow.sign=s2Step203ExitFOut := by decide +kernel
  have hi : s2Step203ExitFRow.payload.drop 168=s2Step203ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step203ExitF_retired] at result
  exact result

private def s2Step203ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203ExitFvBefore : Arena := s2Step203ExitFAfter

private theorem s2Step203ExitFv_Incoming : rowsOwned s2Step203ExitFvBefore [s2Step203ExitFvRow,s2Step203ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203ExitGRow,s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow] 2 s2Step203ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203ExitFvBefore (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203ExitFv_Outgoing : rowsOwned s2Step203ExitGvAfter [s2Step203ExitFvOut,s2Step203ExitGvOut] :=
  hmrRows_owned_drop s2Step203ExitGvAfter [s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] 2 s2Step203ExitBank_outgoingOwned

private theorem s2Step203ExitFv_distinct : (s2Step203ExitFvRow.sign::s2Step203ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203ExitFv_owned : (s2Step203ExitFvRow.sign::s2Step203ExitFvRow.payload).toFinset⊆s2Step203ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203ExitFvBefore (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203ExitFv_retired : s2Step203ExitFvBefore.retireSet s2Step203ExitFvExtra.toFinset=s2Step203ExitFvAfter := by
  unfold Arena.retireSet s2Step203ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step203ExitFvBefore,s2Step203ExitFAfter,s2Step203ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step203ExitFv_checked : planRowResizeLog s2Step203ExitFvBefore s2Step203ExitFvRow 117 []=
    some (s2Step203ExitFvAfter,s2Step203ExitFvOut,shrinkRow 770 s2Step203ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step203ExitFvBefore s2Step203ExitFvRow 117 s2Step203ExitFv_distinct s2Step203ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step203ExitFvRow.payload.take 117) s2Step203ExitFvRow.sign=s2Step203ExitFvOut := by decide +kernel
  have hi : s2Step203ExitFvRow.payload.drop 117=s2Step203ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step203ExitFv_retired] at result
  exact result

private def s2Step203ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step203ExitG_Incoming : rowsOwned s2Step203ExitGBefore [s2Step203ExitGRow,s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203ExitGRow,s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow] 0 s2Step203ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203ExitG_Outgoing : rowsOwned s2Step203ExitGvAfter [s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] :=
  hmrRows_owned_drop s2Step203ExitGvAfter [s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] 0 s2Step203ExitBank_outgoingOwned

private theorem s2Step203ExitG_distinct : (s2Step203ExitGRow.sign::s2Step203ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203ExitG_owned : (s2Step203ExitGRow.sign::s2Step203ExitGRow.payload).toFinset⊆s2Step203ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203ExitG_retired : s2Step203ExitGBefore.retireSet s2Step203ExitGExtra.toFinset=s2Step203ExitGAfter := by
  unfold Arena.retireSet s2Step203ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step203ExitGBefore,s2Step203ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step203ExitG_checked : planRowResizeLog s2Step203ExitGBefore s2Step203ExitGRow 167 []=
    some (s2Step203ExitGAfter,s2Step203ExitGOut,shrinkRow 769 s2Step203ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step203ExitGBefore s2Step203ExitGRow 167 s2Step203ExitG_distinct s2Step203ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step203ExitGRow.payload.take 167) s2Step203ExitGRow.sign=s2Step203ExitGOut := by decide +kernel
  have hi : s2Step203ExitGRow.payload.drop 167=s2Step203ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step203ExitG_retired] at result
  exact result

private def s2Step203ExitGvBefore : Arena := s2Step203ExitFvAfter

private theorem s2Step203ExitGv_Incoming : rowsOwned s2Step203ExitGvBefore [s2Step203ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203ExitGRow,s2Step203ExitFRow,s2Step203ExitFvRow,s2Step203ExitGvRow] 3 s2Step203ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203ExitGvBefore (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203ExitGv_Outgoing : rowsOwned s2Step203ExitGvAfter [s2Step203ExitGvOut] :=
  hmrRows_owned_drop s2Step203ExitGvAfter [s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut] 3 s2Step203ExitBank_outgoingOwned

private theorem s2Step203ExitGv_distinct : (s2Step203ExitGvRow.sign::s2Step203ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203ExitGv_owned : (s2Step203ExitGvRow.sign::s2Step203ExitGvRow.payload).toFinset⊆s2Step203ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203ExitGvBefore (fun q => (0≤q ∧ q<167) ∨ (168≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203ExitGv_retired : s2Step203ExitGvBefore.retireSet s2Step203ExitGvExtra.toFinset=s2Step203ExitGvAfter := by
  unfold Arena.retireSet s2Step203ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step203ExitGvBefore,s2Step203ExitFvAfter,s2Step203ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step203ExitGv_checked : planRowResizeLog s2Step203ExitGvBefore s2Step203ExitGvRow 117 []=
    some (s2Step203ExitGvAfter,s2Step203ExitGvOut,shrinkRow 771 s2Step203ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step203ExitGvBefore s2Step203ExitGvRow 117 s2Step203ExitGv_distinct s2Step203ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step203ExitGvRow.payload.take 117) s2Step203ExitGvRow.sign=s2Step203ExitGvOut := by decide +kernel
  have hi : s2Step203ExitGvRow.payload.drop 117=s2Step203ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step203ExitGv_retired] at result
  exact result

private theorem s2Step203ExitBank_rows : planWindowRowsLog s2Step203ExitGBefore [(s2Step203ExitGRow,167),(s2Step203ExitFRow,168),(s2Step203ExitFvRow,117),(s2Step203ExitGvRow,117)] [[],[],[],[]]=
    some (s2Step203ExitGvAfter,[s2Step203ExitGOut,s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut],(shrinkRow 769 s2Step203ExitGExtra ++ (shrinkRow 768 s2Step203ExitFExtra ++ (shrinkRow 770 s2Step203ExitFvExtra ++ (shrinkRow 771 s2Step203ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step203ExitGvAfter [] []=some (s2Step203ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step203ExitGvBefore s2Step203ExitGvAfter s2Step203ExitGvAfter
    s2Step203ExitGvRow s2Step203ExitGvOut 117 [] [] [] []
    (shrinkRow 771 s2Step203ExitGvExtra) ([]) s2Step203ExitGv_Incoming s2Step203ExitGv_checked h4 s2Step203ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step203ExitFvBefore s2Step203ExitFvAfter s2Step203ExitGvAfter
    s2Step203ExitFvRow s2Step203ExitFvOut 117 [] [(s2Step203ExitGvRow,117)] [[]] [s2Step203ExitGvOut]
    (shrinkRow 770 s2Step203ExitFvExtra) ((shrinkRow 771 s2Step203ExitGvExtra ++ [])) s2Step203ExitFv_Incoming s2Step203ExitFv_checked h3 s2Step203ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step203ExitFBefore s2Step203ExitFAfter s2Step203ExitGvAfter
    s2Step203ExitFRow s2Step203ExitFOut 168 [] [(s2Step203ExitFvRow,117),(s2Step203ExitGvRow,117)] [[],[]] [s2Step203ExitFvOut,s2Step203ExitGvOut]
    (shrinkRow 768 s2Step203ExitFExtra) ((shrinkRow 770 s2Step203ExitFvExtra ++ (shrinkRow 771 s2Step203ExitGvExtra ++ []))) s2Step203ExitF_Incoming s2Step203ExitF_checked h2 s2Step203ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step203ExitGBefore s2Step203ExitGAfter s2Step203ExitGvAfter
    s2Step203ExitGRow s2Step203ExitGOut 167 [] [(s2Step203ExitFRow,168),(s2Step203ExitFvRow,117),(s2Step203ExitGvRow,117)] [[],[],[]] [s2Step203ExitFOut,s2Step203ExitFvOut,s2Step203ExitGvOut]
    (shrinkRow 769 s2Step203ExitGExtra) ((shrinkRow 768 s2Step203ExitFExtra ++ (shrinkRow 770 s2Step203ExitFvExtra ++ (shrinkRow 771 s2Step203ExitGvExtra ++ [])))) s2Step203ExitG_Incoming s2Step203ExitG_checked h1 s2Step203ExitG_Outgoing
  exact h0

private theorem s2Step203ExitBank_checked : compileHmrBankResizeLog .exit s2Step203ExitGBefore ⟨s2Step203ExitFRow,s2Step203ExitGRow,s2Step203ExitFvRow,s2Step203ExitGvRow⟩ ⟨168,167,117,117⟩ [[],[],[],[]]=
    some (s2Step203ExitGvAfter,⟨s2Step203ExitFOut,s2Step203ExitGOut,s2Step203ExitFvOut,s2Step203ExitGvOut⟩,(shrinkRow 769 s2Step203ExitGExtra ++ (shrinkRow 768 s2Step203ExitFExtra ++ (shrinkRow 770 s2Step203ExitFvExtra ++ (shrinkRow 771 s2Step203ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step203ExitBank_rows]
  rfl

private theorem s2Step203Add0_apart : Disjoint s2Step203Add0Arena.live s2Step203Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step203Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203Add0_card : s2Step203Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step203Add0_borrowed : s2Step203Add0Arena.checkBorrow (hmrHybridCount s2Step203Add0Arena s2Step203Add0B.length) s2Step203Add0Work=some s2Step203Add0During := by
  have len : s2Step203Add0Work.length=hmrHybridCount s2Step203Add0Arena s2Step203Add0B.length := by
    rw [hmrHybridCount,s2Step203Add0_card]
    decide +kernel
  have nd : s2Step203Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step203Add0Arena s2Step203Add0During s2Step203Add0Work.toFinset s2Step203Add0_bounded s2Step203Add0_apart rfl

private theorem s2Step203Add0_distinct : (814::841::882::(s2Step203Add0A++s2Step203Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203Add0_owned : (814::841::882::(s2Step203Add0A++s2Step203Add0B)).toFinset⊆s2Step203Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step203Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203Add0_checked : compileHmrHybridCinLog s2Step203Add0Arena 841 814 882 s2Step203Add0A s2Step203Add0B s2Step203Add0Work=some s2Step203Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step203Add0Arena s2Step203Add0During 841 814 882 s2Step203Add0A s2Step203Add0B s2Step203Add0Work
    (by decide +kernel) (by decide +kernel) s2Step203Add0_distinct
    (fun q hq => s2Step203Add0_owned (List.mem_toFinset.mpr hq)) s2Step203Add0_borrowed

private theorem s2Step203Add1_apart : Disjoint s2Step203Add1Arena.live s2Step203Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step203Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203Add1_card : s2Step203Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step203Add1_borrowed : s2Step203Add1Arena.checkBorrow (hmrHybridCount s2Step203Add1Arena s2Step203Add1B.length) s2Step203Add1Work=some s2Step203Add1During := by
  have len : s2Step203Add1Work.length=hmrHybridCount s2Step203Add1Arena s2Step203Add1B.length := by
    rw [hmrHybridCount,s2Step203Add1_card]
    decide +kernel
  have nd : s2Step203Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step203Add1Arena s2Step203Add1During s2Step203Add1Work.toFinset s2Step203Add1_bounded s2Step203Add1_apart rfl

private theorem s2Step203Add1_distinct : (814::841::882::(s2Step203Add1A++s2Step203Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203Add1_owned : (814::841::882::(s2Step203Add1A++s2Step203Add1B)).toFinset⊆s2Step203Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step203Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203Add1_checked : compileHmrHybridCinLog s2Step203Add1Arena 841 814 882 s2Step203Add1A s2Step203Add1B s2Step203Add1Work=some s2Step203Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step203Add1Arena s2Step203Add1During 841 814 882 s2Step203Add1A s2Step203Add1B s2Step203Add1Work
    (by decide +kernel) (by decide +kernel) s2Step203Add1_distinct
    (fun q hq => s2Step203Add1_owned (List.mem_toFinset.mpr hq)) s2Step203Add1_borrowed

private theorem s2Step203F4_apart : Disjoint (s2Step203Add0A++s2Step203Add0B).toFinset (s2Step203Add1A++s2Step203Add1B).toFinset := by
  have nd : ((s2Step203Add0A++s2Step203Add0B)++(s2Step203Add1A++s2Step203Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step203F4_carry : s2Step203F4FlagArena.checkBorrow 1 [882]=some s2Step203Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step203F4FlagArena,s2Step203HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step203F4FlagArena,s2Step203HeadFvAfter,s2Step203Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203F4_distinct : (879::841::814::882::((s2Step203Add0A++s2Step203Add1A)++(s2Step203Add0B++s2Step203Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203F4_flag : s2Step203HeadFvAfter.checkBorrow 1 [814]=some s2Step203F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step203HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step203F4_owned : (879::841::((s2Step203Add0A++s2Step203Add1A)++(s2Step203Add0B++s2Step203Add1B))).toFinset⊆s2Step203HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step203HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203F4_checked : compileHmrHybridF4Log s2Step203HeadFvAfter 879 841 s2Step203Add0A s2Step203Add0B s2Step203Add1A s2Step203Add1B [814] [882] s2Step203Add0Work s2Step203Add1Work=some s2Step203F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step203HeadFvAfter s2Step203F4FlagArena s2Step203Add0Arena s2Step203Add0During s2Step203Add1During 879 841
    s2Step203Add0A s2Step203Add0B s2Step203Add1A s2Step203Add1B [814] [882] s2Step203Add0Work s2Step203Add1Work
    (fun q hq => s2Step203F4_owned (List.mem_toFinset.mpr hq)) s2Step203F4_flag s2Step203F4_carry
    s2Step203F4_distinct s2Step203F4_apart s2Step203Add0_checked s2Step203Add1_checked

private theorem s2Step203Front_branch : s2Step203FrontSigmaArena.checkBorrow 1 [841]=some s2Step203HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step203FrontSigmaArena,s2Step203EntryGvAfter,s2Step203EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step203FrontSigmaArena,s2Step203EntryGvAfter,s2Step203EntryFvAfter,s2Step203HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203Front_entry : HmrFrontEntryValid s2Step203EntryFBefore s2Step203FrontBank 168 117 ⟨168,167,117,117⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step203FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step203EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step203EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step203FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step203Front_sigma : s2Step203EntryGvAfter.checkBorrow 1 [879]=some s2Step203FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step203EntryGvAfter,s2Step203EntryFvAfter,arenaWires]
  · rfl

private def s2Step203HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203HeadFBefore : Arena := s2Step203HeadGAfter

private def s2Step203HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step203HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step203HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],769⟩

private def s2Step203HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private theorem s2Step203HeadBank_incomingDistinct : ([s2Step203HeadGRow,s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203HeadF_Incoming : rowsOwned s2Step203HeadFBefore [s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203HeadGRow,s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow] 1 s2Step203HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203HeadBank_outgoingOwned : rowsOwned s2Step203HeadFvAfter [s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step203HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203HeadF_Outgoing : rowsOwned s2Step203HeadFvAfter [s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] :=
  hmrRows_owned_drop s2Step203HeadFvAfter [s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] 1 s2Step203HeadBank_outgoingOwned

private theorem s2Step203HeadF_distinct : (s2Step203HeadFRow.sign::s2Step203HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203HeadF_owned : (s2Step203HeadFRow.sign::s2Step203HeadFRow.payload).toFinset⊆s2Step203HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203HeadF_reserved : s2Step203HeadFBefore.reserve s2Step203HeadFFresh.toFinset=some s2Step203HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203HeadFFresh,arenaWires]
  · norm_num [s2Step203HeadFBefore,s2Step203HeadGAfter,s2Step203HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step203HeadFAfter,s2Step203HeadFBefore,s2Step203HeadGAfter,s2Step203HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203HeadF_checked : planRowResizeLog s2Step203HeadFBefore s2Step203HeadFRow 169 s2Step203HeadFFresh=
    some (s2Step203HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 789],768⟩,growRow 768 s2Step203HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step203HeadFBefore s2Step203HeadFAfter s2Step203HeadFRow 169 s2Step203HeadFFresh
    s2Step203HeadF_distinct s2Step203HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203HeadF_reserved
  have rowEq : WindowRow.mk (s2Step203HeadFRow.payload++s2Step203HeadFFresh) s2Step203HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 789],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step203HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step203HeadFvBefore : Arena := s2Step203HeadGvAfter

private theorem s2Step203HeadFv_Incoming : rowsOwned s2Step203HeadFvBefore [s2Step203HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203HeadGRow,s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow] 3 s2Step203HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203HeadFv_Outgoing : rowsOwned s2Step203HeadFvAfter [s2Step203HeadFvOut] :=
  hmrRows_owned_drop s2Step203HeadFvAfter [s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] 3 s2Step203HeadBank_outgoingOwned

private theorem s2Step203HeadFv_distinct : (s2Step203HeadFvRow.sign::s2Step203HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203HeadFv_owned : (s2Step203HeadFvRow.sign::s2Step203HeadFvRow.payload).toFinset⊆s2Step203HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203HeadFv_reserved : s2Step203HeadFvBefore.reserve s2Step203HeadFvFresh.toFinset=some s2Step203HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203HeadFvFresh,arenaWires]
  · norm_num [s2Step203HeadFvBefore,s2Step203HeadGvAfter,s2Step203HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step203HeadFvAfter,s2Step203HeadFvBefore,s2Step203HeadGvAfter,s2Step203HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203HeadFv_checked : planRowResizeLog s2Step203HeadFvBefore s2Step203HeadFvRow 118 s2Step203HeadFvFresh=
    some (s2Step203HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 816],770⟩,growRow 770 s2Step203HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step203HeadFvBefore s2Step203HeadFvAfter s2Step203HeadFvRow 118 s2Step203HeadFvFresh
    s2Step203HeadFv_distinct s2Step203HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step203HeadFvRow.payload++s2Step203HeadFvFresh) s2Step203HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step203HeadG_Incoming : rowsOwned s2Step203HeadGBefore [s2Step203HeadGRow,s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203HeadGRow,s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow] 0 s2Step203HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203HeadG_Outgoing : rowsOwned s2Step203HeadFvAfter [s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] :=
  hmrRows_owned_drop s2Step203HeadFvAfter [s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] 0 s2Step203HeadBank_outgoingOwned

private theorem s2Step203HeadG_distinct : (s2Step203HeadGRow.sign::s2Step203HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203HeadG_owned : (s2Step203HeadGRow.sign::s2Step203HeadGRow.payload).toFinset⊆s2Step203HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203HeadG_reserved : s2Step203HeadGBefore.reserve s2Step203HeadGFresh.toFinset=some s2Step203HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203HeadGFresh,arenaWires]
  · norm_num [s2Step203HeadGBefore,s2Step203HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step203HeadGAfter,s2Step203HeadGBefore,s2Step203HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203HeadG_checked : planRowResizeLog s2Step203HeadGBefore s2Step203HeadGRow 169 s2Step203HeadGFresh=
    some (s2Step203HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 822],769⟩,growRow 769 s2Step203HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step203HeadGBefore s2Step203HeadGAfter s2Step203HeadGRow 169 s2Step203HeadGFresh
    s2Step203HeadG_distinct s2Step203HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203HeadG_reserved
  have rowEq : WindowRow.mk (s2Step203HeadGRow.payload++s2Step203HeadGFresh) s2Step203HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step203HeadGvBefore : Arena := s2Step203HeadFAfter

private theorem s2Step203HeadGv_Incoming : rowsOwned s2Step203HeadGvBefore [s2Step203HeadGvRow,s2Step203HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step203HeadGRow,s2Step203HeadFRow,s2Step203HeadGvRow,s2Step203HeadFvRow] 2 s2Step203HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step203HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step203HeadGv_Outgoing : rowsOwned s2Step203HeadFvAfter [s2Step203HeadGvOut,s2Step203HeadFvOut] :=
  hmrRows_owned_drop s2Step203HeadFvAfter [s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut] 2 s2Step203HeadBank_outgoingOwned

private theorem s2Step203HeadGv_distinct : (s2Step203HeadGvRow.sign::s2Step203HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step203HeadGv_owned : (s2Step203HeadGvRow.sign::s2Step203HeadGvRow.payload).toFinset⊆s2Step203HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step203HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step203HeadGv_reserved : s2Step203HeadGvBefore.reserve s2Step203HeadGvFresh.toFinset=some s2Step203HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step203HeadGvFresh,arenaWires]
  · norm_num [s2Step203HeadGvBefore,s2Step203HeadFAfter,s2Step203HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step203HeadGvAfter,s2Step203HeadGvBefore,s2Step203HeadFAfter,s2Step203HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step203HeadGv_checked : planRowResizeLog s2Step203HeadGvBefore s2Step203HeadGvRow 118 s2Step203HeadGvFresh=
    some (s2Step203HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 781],771⟩,growRow 771 s2Step203HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step203HeadGvBefore s2Step203HeadGvAfter s2Step203HeadGvRow 118 s2Step203HeadGvFresh
    s2Step203HeadGv_distinct s2Step203HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step203HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step203HeadGvRow.payload++s2Step203HeadGvFresh) s2Step203HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step203HeadBank_rows : planWindowRowsLog s2Step203HeadGBefore [(s2Step203HeadGRow,169),(s2Step203HeadFRow,169),(s2Step203HeadGvRow,118),(s2Step203HeadFvRow,118)] [s2Step203HeadGFresh,s2Step203HeadFFresh,s2Step203HeadGvFresh,s2Step203HeadFvFresh]=
    some (s2Step203HeadFvAfter,[s2Step203HeadGOut,s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut],(growRow 769 s2Step203HeadGFresh ++ (growRow 768 s2Step203HeadFFresh ++ (growRow 771 s2Step203HeadGvFresh ++ (growRow 770 s2Step203HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step203HeadFvAfter [] []=some (s2Step203HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step203HeadFvBefore s2Step203HeadFvAfter s2Step203HeadFvAfter
    s2Step203HeadFvRow s2Step203HeadFvOut 118 s2Step203HeadFvFresh [] [] []
    (growRow 770 s2Step203HeadFvFresh) ([]) s2Step203HeadFv_Incoming s2Step203HeadFv_checked h4 s2Step203HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step203HeadGvBefore s2Step203HeadGvAfter s2Step203HeadFvAfter
    s2Step203HeadGvRow s2Step203HeadGvOut 118 s2Step203HeadGvFresh [(s2Step203HeadFvRow,118)] [s2Step203HeadFvFresh] [s2Step203HeadFvOut]
    (growRow 771 s2Step203HeadGvFresh) ((growRow 770 s2Step203HeadFvFresh ++ [])) s2Step203HeadGv_Incoming s2Step203HeadGv_checked h3 s2Step203HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step203HeadFBefore s2Step203HeadFAfter s2Step203HeadFvAfter
    s2Step203HeadFRow s2Step203HeadFOut 169 s2Step203HeadFFresh [(s2Step203HeadGvRow,118),(s2Step203HeadFvRow,118)] [s2Step203HeadGvFresh,s2Step203HeadFvFresh] [s2Step203HeadGvOut,s2Step203HeadFvOut]
    (growRow 768 s2Step203HeadFFresh) ((growRow 771 s2Step203HeadGvFresh ++ (growRow 770 s2Step203HeadFvFresh ++ []))) s2Step203HeadF_Incoming s2Step203HeadF_checked h2 s2Step203HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step203HeadGBefore s2Step203HeadGAfter s2Step203HeadFvAfter
    s2Step203HeadGRow s2Step203HeadGOut 169 s2Step203HeadGFresh [(s2Step203HeadFRow,169),(s2Step203HeadGvRow,118),(s2Step203HeadFvRow,118)] [s2Step203HeadFFresh,s2Step203HeadGvFresh,s2Step203HeadFvFresh] [s2Step203HeadFOut,s2Step203HeadGvOut,s2Step203HeadFvOut]
    (growRow 769 s2Step203HeadGFresh) ((growRow 768 s2Step203HeadFFresh ++ (growRow 771 s2Step203HeadGvFresh ++ (growRow 770 s2Step203HeadFvFresh ++ [])))) s2Step203HeadG_Incoming s2Step203HeadG_checked h1 s2Step203HeadG_Outgoing
  exact h0

private theorem s2Step203HeadBank_checked : compileHmrBankResizeLog .headroom s2Step203HeadGBefore ⟨s2Step203HeadFRow,s2Step203HeadGRow,s2Step203HeadFvRow,s2Step203HeadGvRow⟩ ⟨169,169,118,118⟩ [s2Step203HeadGFresh,s2Step203HeadFFresh,s2Step203HeadGvFresh,s2Step203HeadFvFresh]=
    some (s2Step203HeadFvAfter,⟨s2Step203HeadFOut,s2Step203HeadGOut,s2Step203HeadFvOut,s2Step203HeadGvOut⟩,(growRow 769 s2Step203HeadGFresh ++ (growRow 768 s2Step203HeadFFresh ++ (growRow 771 s2Step203HeadGvFresh ++ (growRow 770 s2Step203HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step203HeadBank_rows]
  rfl

private theorem s2Step203Front_checked : compileHmrSourceFrontLog s2Step203EntryFBefore s2Step203FrontBank 168 117 ⟨168,167,117,117⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step203FrontLog=some s2Step203FrontPlan := by
  have pairEq : s2Step203FrontPair=⟨s2Step203HeadFRow,s2Step203HeadGRow,s2Step203HeadFvRow,s2Step203HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step203FrontHead=⟨s2Step203ExitFRow,s2Step203ExitGRow,s2Step203ExitFvRow,s2Step203ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step203Add0A=s2Step203FrontHead.f.wires := by decide +kernel
  have gEq : s2Step203Add0B=s2Step203FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step203Add1A=s2Step203FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step203Add1B=s2Step203FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step203EntryFBefore s2Step203FrontBank 168 117 ⟨168,167,117,117⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step203FrontLog s2Step203FrontPlan
  · exact s2Step203Front_entry
  · exact s2Step203EntryBank_checked
  · exact s2Step203Front_sigma
  · rfl
  · exact s2Step203Front_branch
  · rfl
  · simpa only [s2Step203FrontPlan,pairEq] using s2Step203HeadBank_checked
  · simpa only [s2Step203FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step203F4_checked
  · exact s2Step203Counter_checked
  · rfl
  · simpa only [s2Step203FrontPlan,headEq] using s2Step203ExitBank_checked

private theorem s2Step203Complete_explicit_checked : compileHmrEarlyStepLog s2Step203EntryFBefore s2Step203FrontBank 168 117 ⟨168,167,117,117⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step203CompleteLog=some s2Step203CompletePlan := by
  let Q := s2Step203EarlyControlPlan
  have hq := s2Step203EarlyControl_plan_checked
  have fv1 : s2Step203CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step203CompleteOut.fv.payload[2]?.getD s2Step203CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step203CompleteOut.fv.payload[3]?.getD s2Step203CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step203CompleteOut.fv.payload[4]?.getD s2Step203CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step203EntryFBefore s2Step203EarlyControlArena s2Step203FrontBank 168 117 ⟨168,167,117,117⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step203CompleteLog s2Step203FrontPlan Q
    s2Step203Front_checked s2Step203Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step203Complete_owned s2Step203Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step203EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 s2Step203CompleteOut.fv.second (s2Step203CompleteOut.fv.payload[2]?.getD s2Step203CompleteOut.fv.sign) (s2Step203CompleteOut.fv.payload[3]?.getD s2Step203CompleteOut.fv.sign) (s2Step203CompleteOut.fv.payload[4]?.getD s2Step203CompleteOut.fv.sign) 841 47 s2Step203EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep203Arena : Arena := s2Step203EntryFBefore
def s2PrivateStep203Bank : WindowBank := s2Step203FrontBank
def s2PrivateStep203Spec : HmrSourceWalkStepLog := ⟨168,117,⟨168,167,117,117⟩,47,.early s2Step203CompleteLog⟩
def s2PrivateStep203Plan : HmrSourceStepPlan := .early s2Step203CompletePlan
theorem s2PrivateStep203_source : s2PrivateStep203Spec=s2ObservedLogs192[11] := rfl
theorem s2PrivateStep203_checked : compileHmrSourceStepLog s2PrivateStep203Arena s2PrivateStep203Bank
    s2PrivateStep203Spec.fgWidth s2PrivateStep203Spec.vWidth s2PrivateStep203Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 203 s2PrivateStep203Spec.need none s2PrivateStep203Spec.log=some s2PrivateStep203Plan := by
  change compileHmrSourceStepLog s2Step203EntryFBefore s2Step203FrontBank 168 117 ⟨168,167,117,117⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 203 47 none (.early s2Step203CompleteLog)=some (.early s2Step203CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 203<498)]
  rw [s2Step203Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
