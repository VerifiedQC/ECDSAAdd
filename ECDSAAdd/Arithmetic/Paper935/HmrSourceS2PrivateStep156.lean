import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep154
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

private def s2Step156CompleteMoves : List (Wire × Wire) := [(793,191),(804,703)]

private def s2Step156EarlyControlLog : HmrEarlyControlLog := ⟨[804, 793, 790, 797, 847],[780],[867],[877, 879, 882, 885, 888, 890],[]⟩

private def s2Step156FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [801], []],[[780], [847], [790], [797]],[[], [], [], []]⟩,[778],[849],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step156CompleteLog : HmrEarlyStepLog := ⟨s2Step156FrontLog,s2Step156CompleteMoves,s2Step156EarlyControlLog⟩

private def s2Step156ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702],768⟩

private def s2Step156ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step156ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],769⟩

private def s2Step156ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step156FrontOut : WindowBank := ⟨s2Step156ExitFOut,s2Step156ExitGOut,s2Step156ExitFvOut,s2Step156ExitGvOut⟩

private def s2Step156CompleteOut : WindowBank := s2Step156FrontOut.repacked s2Step156CompleteMoves

private def s2Step156EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step156EarlyControlPositiveArena,[780],s2Step156EarlyControlEqualityArena,[867],⟨⟨778,false⟩,[⟨⟨780,false⟩,867⟩]⟩⟩

private def s2Step156EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,804⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,847⟩]⟩

private def s2Step156EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step156EarlyControlZeroArena,s2Step156EarlyControlZeroPlan,s2Step156EarlyControlClassPlan,s2Step156EarlyControlFlagArena,s2Step156EarlyControlFittedArena,s2Step156EarlyControlHistoryArena,s2Step156EarlyControlSigmaArena,s2Step156EarlyControlOutputArena,s2Step156EarlyControlLog⟩

private def s2Step156CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step156Counter_bounded : s2Step156CounterWork.toFinset⊆arenaWires := by norm_num [s2Step156CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step156HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156CounterDuring : Arena := ⟨s2Step156HeadFvAfter.live∪s2Step156CounterWork.toFinset,Finset.union_subset s2Step156HeadFvAfter.bounded s2Step156Counter_bounded⟩

private def s2Step156EntryFFresh : List Wire := []

private def s2Step156EntryFvFresh : List Wire := [801]

private def s2Step156EntryGFresh : List Wire := []

private def s2Step156EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EntryGvAfter : Arena := s2Step156EntryFvAfter

private def s2Step156EntryGvFresh : List Wire := []

private def s2Step156ExitFExtra : List Wire := [703, 847]

private def s2Step156ExitFvExtra : List Wire := [797]

private def s2Step156ExitGExtra : List Wire := [191, 780]

private def s2Step156ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156ExitGvExtra : List Wire := [790]

private def s2Step156Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step156Add0_bounded : s2Step156Add0Work.toFinset⊆arenaWires := by
  have h : s2Step156Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step156Add0During : Arena := ⟨s2Step156Add0Arena.live∪s2Step156Add0Work.toFinset,Finset.union_subset s2Step156Add0Arena.bounded s2Step156Add0_bounded⟩

private def s2Step156Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step156Add1_bounded : s2Step156Add1Work.toFinset⊆arenaWires := by
  have h : s2Step156Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step156Add1During : Arena := ⟨s2Step156Add1Arena.live∪s2Step156Add1Work.toFinset,Finset.union_subset s2Step156Add1Arena.bounded s2Step156Add1_bounded⟩

private def s2Step156F4FlagArena : Arena := ⟨s2Step156HeadFvAfter.live∪{867},Finset.union_subset s2Step156HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step156F4Plan : HmrHybridF4Plan := ⟨s2Step156F4FlagArena,[867],s2Step156Add0Arena,[877],s2Step156Add0During,s2Step156Add0Work,s2Step156Add1During,s2Step156Add1Work⟩

private def s2Step156HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 847],768⟩

private def s2Step156HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩

private def s2Step156HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 780],769⟩

private def s2Step156HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩

private def s2Step156FrontHead : WindowBank := ⟨s2Step156HeadFOut,s2Step156HeadGOut,s2Step156HeadFvOut,s2Step156HeadGvOut⟩

private def s2Step156EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step156EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step156EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step156EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step156FrontPair : WindowBank := ⟨s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut⟩

private def s2Step156FrontSigmaArena : Arena := ⟨s2Step156EntryGvAfter.live∪{778},Finset.union_subset s2Step156EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step156HeadFFresh : List Wire := [847]

private def s2Step156HeadFvFresh : List Wire := [797]

private def s2Step156HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156HeadGFresh : List Wire := [780]

private def s2Step156HeadGvFresh : List Wire := [790]

private def s2Step156FrontPlan : HmrSourceFront := ⟨s2Step156EntryGvAfter,s2Step156FrontPair,(growRow 768 s2Step156EntryFFresh ++ (growRow 769 s2Step156EntryGFresh ++ (growRow 770 s2Step156EntryFvFresh ++ (growRow 771 s2Step156EntryGvFresh ++ [])))),s2Step156FrontSigmaArena,[778],s2Step156HeadGBefore,[849],
  s2Step156HeadFvAfter,s2Step156FrontHead,(growRow 769 s2Step156HeadGFresh ++ (growRow 768 s2Step156HeadFFresh ++ (growRow 771 s2Step156HeadGvFresh ++ (growRow 770 s2Step156HeadFvFresh ++ [])))),s2Step156F4Plan,s2Step156CounterDuring,s2Step156CounterWork,s2Step156ExitGvAfter,s2Step156FrontOut,(shrinkRow 769 s2Step156ExitGExtra ++ (shrinkRow 768 s2Step156ExitFExtra ++ (shrinkRow 770 s2Step156ExitFvExtra ++ (shrinkRow 771 s2Step156ExitGvExtra ++ []))))⟩

private def s2Step156CompletePlan : HmrEarlyStepPlan := ⟨s2Step156FrontPlan,s2Step156EarlyControlArena,s2Step156EarlyControlPlan,s2Step156CompleteMoves⟩

private theorem s2Step156Complete_apart : List.Disjoint (s2Step156CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step156CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step156Complete_owned : (s2Step156CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step156CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,703),(704,780),(781,790),(791,793),(794,797),(798,847),(848,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step156CompleteRelocationMove0Borrowed : Arena := ⟨s2Step156ExitGvAfter.live∪{191},Finset.union_subset s2Step156ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step156CompleteRelocationMove1Borrowed : Arena := ⟨s2Step156CompleteRelocationMove0After.live∪{703},Finset.union_subset s2Step156CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step156CompleteRelocation_move0_owned : 793∈s2Step156ExitGvAfter.live := by norm_num [s2Step156ExitGvAfter,arenaWires]

private theorem s2Step156CompleteRelocation_move0_reserve : s2Step156ExitGvAfter.reserve {191}=some s2Step156CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step156ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step156CompleteRelocation_move0_retire : s2Step156CompleteRelocationMove0Borrowed.retireSet {793}=s2Step156CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step156CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step156CompleteRelocationMove0Borrowed,s2Step156ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step156CompleteRelocation_move1_owned : 804∈s2Step156CompleteRelocationMove0After.live := by norm_num [s2Step156CompleteRelocationMove0After,arenaWires]

private theorem s2Step156CompleteRelocation_move1_reserve : s2Step156CompleteRelocationMove0After.reserve {703}=some s2Step156CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step156CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step156CompleteRelocation_move1_retire : s2Step156CompleteRelocationMove1Borrowed.retireSet {804}=s2Step156EarlyControlArena := by
  unfold Arena.retireSet s2Step156EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step156CompleteRelocationMove1Borrowed,s2Step156CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step156CompleteRelocation_checked : s2Step156ExitGvAfter.checkRepack [(793,191),(804,703)]=some s2Step156EarlyControlArena := by
  have tail2 : s2Step156EarlyControlArena.checkRepack []=some s2Step156EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step156CompleteRelocationMove0After s2Step156CompleteRelocationMove1Borrowed s2Step156EarlyControlArena s2Step156EarlyControlArena 804 703 []
    s2Step156CompleteRelocation_move1_owned s2Step156CompleteRelocation_move1_reserve s2Step156CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step156ExitGvAfter s2Step156CompleteRelocationMove0Borrowed s2Step156CompleteRelocationMove0After s2Step156EarlyControlArena 793 191 [(804,703)]
    s2Step156CompleteRelocation_move0_owned s2Step156CompleteRelocation_move0_reserve s2Step156CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step156Complete_repack : s2Step156ExitGvAfter.checkRepack s2Step156CompleteMoves=some s2Step156EarlyControlArena := by
  simpa only [s2Step156CompleteMoves] using s2Step156CompleteRelocation_checked

private theorem s2Step156EarlyControl_branchOwned : ([849] : List Wire).toFinset⊆s2Step156EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_branch : compileHmrBranchRetirement s2Step156EarlyControlSigmaArena 849=some s2Step156EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step156EarlyControl_branchOwned
  · ext q
    simp [s2Step156EarlyControlOutputArena,s2Step156EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step156EarlyControl_classEqualityBorrow : s2Step156EarlyControlPositiveArena.checkBorrow (([778, 780] : List Wire).length-1) s2Step156EarlyControlLog.classWork=some s2Step156EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step156EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step156EarlyControlEqualityArena,s2Step156EarlyControlPositiveArena,s2Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step156EarlyControl_classEqualityOwned : ([778, 780] : List Wire).toFinset⊆s2Step156EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_classEquality : compileHmrEqualityLog s2Step156EarlyControlPositiveArena [778, 780] 0 s2Step156EarlyControlLog.classWork=some (s2Step156EarlyControlEqualityArena,s2Step156EarlyControlLog.classWork,s2Step156EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step156EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step156EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step156EarlyControl_classOwned : ([777, 847, 778] : List Wire).toFinset⊆s2Step156EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_positiveBorrow : s2Step156EarlyControlZeroArena.checkBorrow (1) s2Step156EarlyControlLog.positiveWork=some s2Step156EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step156EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step156EarlyControlPositiveArena,s2Step156EarlyControlZeroArena,s2Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step156EarlyControl_class : compileHmrSourceClassLog s2Step156EarlyControlZeroArena false 777 s2Step156EarlyControlZeroPlan.top 0 778 s2Step156EarlyControlLog.positiveWork s2Step156EarlyControlLog.classWork=some s2Step156EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step156EarlyControlClassPlan s2Step156EarlyControlZeroArena false 777 s2Step156EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step156EarlyControl_classOwned
  · exact s2Step156EarlyControl_positiveBorrow
  · exact s2Step156EarlyControl_classEquality

private theorem s2Step156EarlyControl_entryRecordOwned : ([849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_fitBorrow : s2Step156EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step156EarlyControlLog.recordFresh=some s2Step156EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step156EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step156EarlyControlFittedArena,s2Step156EarlyControlFlagArena,s2Step156EarlyControlLog,arenaWires]

private theorem s2Step156EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step156EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_fit : compileHmrRecordGrowLog s2Step156EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step156EarlyControlLog.recordFresh=some s2Step156EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step156EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step156EarlyControl_fitBorrow

private theorem s2Step156EarlyControl_flagsBorrow : s2Step156EarlyControlEqualityArena.checkBorrow (6) s2Step156EarlyControlLog.flagWork=some s2Step156EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step156EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step156EarlyControlFlagArena,s2Step156EarlyControlEqualityArena,s2Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step156EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step156EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_flags : compileHmrFlagsLog s2Step156EarlyControlClassPlan.equalityArena s2Step156EarlyControlClassPlan.equality.top 253 252 251 s2Step156EarlyControlLog.flagWork=some s2Step156EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step156EarlyControl_flagsOwned⟩
  · exact s2Step156EarlyControl_flagsBorrow

private theorem s2Step156EarlyControl_historyBorrow : s2Step156EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step156EarlyControlLog.recordFresh=some s2Step156EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step156EarlyControlHistoryArena,s2Step156EarlyControlArena,s2Step156EarlyControlLog,arenaWires]

private theorem s2Step156EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_history : compileHmrRecordGrowLog s2Step156EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step156EarlyControlLog.recordFresh=some s2Step156EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step156EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step156EarlyControl_historyBorrow

private theorem s2Step156EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step156EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step156EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_sigmaRelease : s2Step156EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step156EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step156EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step156EarlyControlSigmaArena,s2Step156EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step156EarlyControl_sigma : compileHmrSigmaDropLog s2Step156EarlyControlHistoryArena false 0 0 254 778 []=some s2Step156EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step156EarlyControl_sigmaOwned⟩
  · exact s2Step156EarlyControl_sigmaRelease

private theorem s2Step156EarlyControl_zeroBorrow : s2Step156EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step156EarlyControlLog.zeroWork=some s2Step156EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step156EarlyControlZeroArena,s2Step156EarlyControlArena,s2Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step156EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step156EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EarlyControl_zero : compileHmrEqualityLog s2Step156EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step156EarlyControlLog.zeroWork=some (s2Step156EarlyControlZeroArena,s2Step156EarlyControlLog.zeroWork,s2Step156EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step156EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step156EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step156EarlyControl_logged : s2Step156EarlyControlPlan.Logged s2Step156EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 849 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step156EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step156EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step156EarlyControl_zero
  · exact s2Step156EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step156EarlyControl_flags
  · exact s2Step156EarlyControl_fit
  · exact s2Step156EarlyControl_history
  · exact s2Step156EarlyControl_sigma
  · exact s2Step156EarlyControl_branch

private theorem s2Step156EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step156EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 849 42 s2Step156EarlyControlLog=some s2Step156EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step156EarlyControlPlan s2Step156EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 849 42 s2Step156EarlyControl_logged

private def s2Step156EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step156EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step156EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step156EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step156FrontBank : WindowBank := ⟨s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow⟩

private def s2Step156Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 847, 768]

private def s2Step156Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 780, 769]

private def s2Step156Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797, 770]

private def s2Step156Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790, 771]

private theorem s2Step156Counter_apart : Disjoint s2Step156HeadFvAfter.live s2Step156CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step156HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156Counter_borrowed : s2Step156HeadFvAfter.checkBorrow 4 s2Step156CounterWork=some s2Step156CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step156HeadFvAfter s2Step156CounterDuring s2Step156CounterWork.toFinset s2Step156Counter_bounded s2Step156Counter_apart rfl

private theorem s2Step156Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step156HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step156HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156Counter_checked : compileHmrCounterStepLog s2Step156HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step156CounterWork=some s2Step156CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step156HeadFvAfter.live := fun q hq => s2Step156Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step156Counter_borrowed

private def s2Step156EntryFAfter : Arena := s2Step156EntryFBefore

private theorem s2Step156EntryBank_incomingDistinct : ([s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156EntryF_Incoming : rowsOwned s2Step156EntryFBefore [s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow] 0 s2Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156EntryBank_outgoingOwned : rowsOwned s2Step156EntryGvAfter [s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step156EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156EntryF_Outgoing : rowsOwned s2Step156EntryGvAfter [s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] :=
  hmrRows_owned_drop s2Step156EntryGvAfter [s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] 0 s2Step156EntryBank_outgoingOwned

private theorem s2Step156EntryF_distinct : (s2Step156EntryFRow.sign::s2Step156EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156EntryF_owned : (s2Step156EntryFRow.sign::s2Step156EntryFRow.payload).toFinset⊆s2Step156EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EntryF_reserved : s2Step156EntryFBefore.reserve s2Step156EntryFFresh.toFinset=some s2Step156EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156EntryFFresh,arenaWires]
  · norm_num [s2Step156EntryFBefore,s2Step156EntryFFresh,arenaWires]
  · simp only [s2Step156EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step156EntryF_checked : planRowResizeLog s2Step156EntryFBefore s2Step156EntryFRow 192 s2Step156EntryFFresh=
    some (s2Step156EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩,growRow 768 s2Step156EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step156EntryFBefore s2Step156EntryFAfter s2Step156EntryFRow 192 s2Step156EntryFFresh
    s2Step156EntryF_distinct s2Step156EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156EntryF_reserved
  have rowEq : WindowRow.mk (s2Step156EntryFRow.payload++s2Step156EntryFFresh) s2Step156EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step156EntryFvBefore : Arena := s2Step156EntryFBefore

private theorem s2Step156EntryFv_Incoming : rowsOwned s2Step156EntryFvBefore [s2Step156EntryFvRow,s2Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow] 2 s2Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156EntryFv_Outgoing : rowsOwned s2Step156EntryGvAfter [s2Step156EntryFvOut,s2Step156EntryGvOut] :=
  hmrRows_owned_drop s2Step156EntryGvAfter [s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] 2 s2Step156EntryBank_outgoingOwned

private theorem s2Step156EntryFv_distinct : (s2Step156EntryFvRow.sign::s2Step156EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156EntryFv_owned : (s2Step156EntryFvRow.sign::s2Step156EntryFvRow.payload).toFinset⊆s2Step156EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EntryFv_reserved : s2Step156EntryFvBefore.reserve s2Step156EntryFvFresh.toFinset=some s2Step156EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156EntryFvFresh,arenaWires]
  · norm_num [s2Step156EntryFvBefore,s2Step156EntryFBefore,s2Step156EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step156EntryFvAfter,s2Step156EntryFvBefore,s2Step156EntryFBefore,s2Step156EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156EntryFv_checked : planRowResizeLog s2Step156EntryFvBefore s2Step156EntryFvRow 93 s2Step156EntryFvFresh=
    some (s2Step156EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩,growRow 770 s2Step156EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step156EntryFvBefore s2Step156EntryFvAfter s2Step156EntryFvRow 93 s2Step156EntryFvFresh
    s2Step156EntryFv_distinct s2Step156EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step156EntryFvRow.payload++s2Step156EntryFvFresh) s2Step156EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step156EntryGAfter : Arena := s2Step156EntryFBefore

private def s2Step156EntryGBefore : Arena := s2Step156EntryFBefore

private theorem s2Step156EntryG_Incoming : rowsOwned s2Step156EntryGBefore [s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow] 1 s2Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156EntryG_Outgoing : rowsOwned s2Step156EntryGvAfter [s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] :=
  hmrRows_owned_drop s2Step156EntryGvAfter [s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] 1 s2Step156EntryBank_outgoingOwned

private theorem s2Step156EntryG_distinct : (s2Step156EntryGRow.sign::s2Step156EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156EntryG_owned : (s2Step156EntryGRow.sign::s2Step156EntryGRow.payload).toFinset⊆s2Step156EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EntryG_reserved : s2Step156EntryGBefore.reserve s2Step156EntryGFresh.toFinset=some s2Step156EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156EntryGFresh,arenaWires]
  · norm_num [s2Step156EntryGBefore,s2Step156EntryFBefore,s2Step156EntryGFresh,arenaWires]
  · simp only [s2Step156EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step156EntryG_checked : planRowResizeLog s2Step156EntryGBefore s2Step156EntryGRow 192 s2Step156EntryGFresh=
    some (s2Step156EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩,growRow 769 s2Step156EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step156EntryGBefore s2Step156EntryGAfter s2Step156EntryGRow 192 s2Step156EntryGFresh
    s2Step156EntryG_distinct s2Step156EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156EntryG_reserved
  have rowEq : WindowRow.mk (s2Step156EntryGRow.payload++s2Step156EntryGFresh) s2Step156EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step156EntryGvBefore : Arena := s2Step156EntryFvAfter

private theorem s2Step156EntryGv_Incoming : rowsOwned s2Step156EntryGvBefore [s2Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow] 3 s2Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156EntryGv_Outgoing : rowsOwned s2Step156EntryGvAfter [s2Step156EntryGvOut] :=
  hmrRows_owned_drop s2Step156EntryGvAfter [s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut] 3 s2Step156EntryBank_outgoingOwned

private theorem s2Step156EntryGv_distinct : (s2Step156EntryGvRow.sign::s2Step156EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156EntryGv_owned : (s2Step156EntryGvRow.sign::s2Step156EntryGvRow.payload).toFinset⊆s2Step156EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156EntryGv_reserved : s2Step156EntryGvBefore.reserve s2Step156EntryGvFresh.toFinset=some s2Step156EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156EntryGvFresh,arenaWires]
  · norm_num [s2Step156EntryGvBefore,s2Step156EntryFvAfter,s2Step156EntryGvFresh,arenaWires]
  · simp only [s2Step156EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step156EntryGv_checked : planRowResizeLog s2Step156EntryGvBefore s2Step156EntryGvRow 93 s2Step156EntryGvFresh=
    some (s2Step156EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩,growRow 771 s2Step156EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step156EntryGvBefore s2Step156EntryGvAfter s2Step156EntryGvRow 93 s2Step156EntryGvFresh
    s2Step156EntryGv_distinct s2Step156EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step156EntryGvRow.payload++s2Step156EntryGvFresh) s2Step156EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step156EntryBank_rows : planWindowRowsLog s2Step156EntryFBefore [(s2Step156EntryFRow,192),(s2Step156EntryGRow,192),(s2Step156EntryFvRow,93),(s2Step156EntryGvRow,93)] [s2Step156EntryFFresh,s2Step156EntryGFresh,s2Step156EntryFvFresh,s2Step156EntryGvFresh]=
    some (s2Step156EntryGvAfter,[s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut],(growRow 768 s2Step156EntryFFresh ++ (growRow 769 s2Step156EntryGFresh ++ (growRow 770 s2Step156EntryFvFresh ++ (growRow 771 s2Step156EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step156EntryGvAfter [] []=some (s2Step156EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step156EntryGvBefore s2Step156EntryGvAfter s2Step156EntryGvAfter
    s2Step156EntryGvRow s2Step156EntryGvOut 93 s2Step156EntryGvFresh [] [] []
    (growRow 771 s2Step156EntryGvFresh) ([]) s2Step156EntryGv_Incoming s2Step156EntryGv_checked h4 s2Step156EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step156EntryFvBefore s2Step156EntryFvAfter s2Step156EntryGvAfter
    s2Step156EntryFvRow s2Step156EntryFvOut 93 s2Step156EntryFvFresh [(s2Step156EntryGvRow,93)] [s2Step156EntryGvFresh] [s2Step156EntryGvOut]
    (growRow 770 s2Step156EntryFvFresh) ((growRow 771 s2Step156EntryGvFresh ++ [])) s2Step156EntryFv_Incoming s2Step156EntryFv_checked h3 s2Step156EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step156EntryGBefore s2Step156EntryGAfter s2Step156EntryGvAfter
    s2Step156EntryGRow s2Step156EntryGOut 192 s2Step156EntryGFresh [(s2Step156EntryFvRow,93),(s2Step156EntryGvRow,93)] [s2Step156EntryFvFresh,s2Step156EntryGvFresh] [s2Step156EntryFvOut,s2Step156EntryGvOut]
    (growRow 769 s2Step156EntryGFresh) ((growRow 770 s2Step156EntryFvFresh ++ (growRow 771 s2Step156EntryGvFresh ++ []))) s2Step156EntryG_Incoming s2Step156EntryG_checked h2 s2Step156EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step156EntryFBefore s2Step156EntryFAfter s2Step156EntryGvAfter
    s2Step156EntryFRow s2Step156EntryFOut 192 s2Step156EntryFFresh [(s2Step156EntryGRow,192),(s2Step156EntryFvRow,93),(s2Step156EntryGvRow,93)] [s2Step156EntryGFresh,s2Step156EntryFvFresh,s2Step156EntryGvFresh] [s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut]
    (growRow 768 s2Step156EntryFFresh) ((growRow 769 s2Step156EntryGFresh ++ (growRow 770 s2Step156EntryFvFresh ++ (growRow 771 s2Step156EntryGvFresh ++ [])))) s2Step156EntryF_Incoming s2Step156EntryF_checked h1 s2Step156EntryF_Outgoing
  exact h0

private theorem s2Step156EntryBank_checked : compileHmrBankResizeLog .entry s2Step156EntryFBefore ⟨s2Step156EntryFRow,s2Step156EntryGRow,s2Step156EntryFvRow,s2Step156EntryGvRow⟩ ⟨192,192,93,93⟩ [s2Step156EntryFFresh,s2Step156EntryGFresh,s2Step156EntryFvFresh,s2Step156EntryGvFresh]=
    some (s2Step156EntryGvAfter,⟨s2Step156EntryFOut,s2Step156EntryGOut,s2Step156EntryFvOut,s2Step156EntryGvOut⟩,(growRow 768 s2Step156EntryFFresh ++ (growRow 769 s2Step156EntryGFresh ++ (growRow 770 s2Step156EntryFvFresh ++ (growRow 771 s2Step156EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step156EntryBank_rows]
  rfl

private def s2Step156ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156ExitFBefore : Arena := s2Step156ExitGAfter

private def s2Step156ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 847],768⟩

private def s2Step156ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩

private def s2Step156ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 780],769⟩

private def s2Step156ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩

private theorem s2Step156ExitBank_incomingDistinct : ([s2Step156ExitGRow,s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156ExitF_Incoming : rowsOwned s2Step156ExitFBefore [s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156ExitGRow,s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow] 1 s2Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156ExitFBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156ExitBank_outgoingOwned : rowsOwned s2Step156ExitGvAfter [s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step156ExitGvAfter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156ExitF_Outgoing : rowsOwned s2Step156ExitGvAfter [s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] :=
  hmrRows_owned_drop s2Step156ExitGvAfter [s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] 1 s2Step156ExitBank_outgoingOwned

private theorem s2Step156ExitF_distinct : (s2Step156ExitFRow.sign::s2Step156ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156ExitF_owned : (s2Step156ExitFRow.sign::s2Step156ExitFRow.payload).toFinset⊆s2Step156ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156ExitFBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156ExitF_retired : s2Step156ExitFBefore.retireSet s2Step156ExitFExtra.toFinset=s2Step156ExitFAfter := by
  unfold Arena.retireSet s2Step156ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step156ExitFBefore,s2Step156ExitGAfter,s2Step156ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step156ExitF_checked : planRowResizeLog s2Step156ExitFBefore s2Step156ExitFRow 191 []=
    some (s2Step156ExitFAfter,s2Step156ExitFOut,shrinkRow 768 s2Step156ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step156ExitFBefore s2Step156ExitFRow 191 s2Step156ExitF_distinct s2Step156ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step156ExitFRow.payload.take 191) s2Step156ExitFRow.sign=s2Step156ExitFOut := by decide +kernel
  have hi : s2Step156ExitFRow.payload.drop 191=s2Step156ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step156ExitF_retired] at result
  exact result

private def s2Step156ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156ExitFvBefore : Arena := s2Step156ExitFAfter

private theorem s2Step156ExitFv_Incoming : rowsOwned s2Step156ExitFvBefore [s2Step156ExitFvRow,s2Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156ExitGRow,s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow] 2 s2Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156ExitFvBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156ExitFv_Outgoing : rowsOwned s2Step156ExitGvAfter [s2Step156ExitFvOut,s2Step156ExitGvOut] :=
  hmrRows_owned_drop s2Step156ExitGvAfter [s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] 2 s2Step156ExitBank_outgoingOwned

private theorem s2Step156ExitFv_distinct : (s2Step156ExitFvRow.sign::s2Step156ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156ExitFv_owned : (s2Step156ExitFvRow.sign::s2Step156ExitFvRow.payload).toFinset⊆s2Step156ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156ExitFvBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156ExitFv_retired : s2Step156ExitFvBefore.retireSet s2Step156ExitFvExtra.toFinset=s2Step156ExitFvAfter := by
  unfold Arena.retireSet s2Step156ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step156ExitFvBefore,s2Step156ExitFAfter,s2Step156ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step156ExitFv_checked : planRowResizeLog s2Step156ExitFvBefore s2Step156ExitFvRow 93 []=
    some (s2Step156ExitFvAfter,s2Step156ExitFvOut,shrinkRow 770 s2Step156ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step156ExitFvBefore s2Step156ExitFvRow 93 s2Step156ExitFv_distinct s2Step156ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step156ExitFvRow.payload.take 93) s2Step156ExitFvRow.sign=s2Step156ExitFvOut := by decide +kernel
  have hi : s2Step156ExitFvRow.payload.drop 93=s2Step156ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step156ExitFv_retired] at result
  exact result

private def s2Step156ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step156ExitG_Incoming : rowsOwned s2Step156ExitGBefore [s2Step156ExitGRow,s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156ExitGRow,s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow] 0 s2Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156ExitG_Outgoing : rowsOwned s2Step156ExitGvAfter [s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] :=
  hmrRows_owned_drop s2Step156ExitGvAfter [s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] 0 s2Step156ExitBank_outgoingOwned

private theorem s2Step156ExitG_distinct : (s2Step156ExitGRow.sign::s2Step156ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156ExitG_owned : (s2Step156ExitGRow.sign::s2Step156ExitGRow.payload).toFinset⊆s2Step156ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156ExitG_retired : s2Step156ExitGBefore.retireSet s2Step156ExitGExtra.toFinset=s2Step156ExitGAfter := by
  unfold Arena.retireSet s2Step156ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step156ExitGBefore,s2Step156ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step156ExitG_checked : planRowResizeLog s2Step156ExitGBefore s2Step156ExitGRow 191 []=
    some (s2Step156ExitGAfter,s2Step156ExitGOut,shrinkRow 769 s2Step156ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step156ExitGBefore s2Step156ExitGRow 191 s2Step156ExitG_distinct s2Step156ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step156ExitGRow.payload.take 191) s2Step156ExitGRow.sign=s2Step156ExitGOut := by decide +kernel
  have hi : s2Step156ExitGRow.payload.drop 191=s2Step156ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step156ExitG_retired] at result
  exact result

private def s2Step156ExitGvBefore : Arena := s2Step156ExitFvAfter

private theorem s2Step156ExitGv_Incoming : rowsOwned s2Step156ExitGvBefore [s2Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156ExitGRow,s2Step156ExitFRow,s2Step156ExitFvRow,s2Step156ExitGvRow] 3 s2Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156ExitGvBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156ExitGv_Outgoing : rowsOwned s2Step156ExitGvAfter [s2Step156ExitGvOut] :=
  hmrRows_owned_drop s2Step156ExitGvAfter [s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut] 3 s2Step156ExitBank_outgoingOwned

private theorem s2Step156ExitGv_distinct : (s2Step156ExitGvRow.sign::s2Step156ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156ExitGv_owned : (s2Step156ExitGvRow.sign::s2Step156ExitGvRow.payload).toFinset⊆s2Step156ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156ExitGvBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<703) ∨ (704≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156ExitGv_retired : s2Step156ExitGvBefore.retireSet s2Step156ExitGvExtra.toFinset=s2Step156ExitGvAfter := by
  unfold Arena.retireSet s2Step156ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step156ExitGvBefore,s2Step156ExitFvAfter,s2Step156ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step156ExitGv_checked : planRowResizeLog s2Step156ExitGvBefore s2Step156ExitGvRow 93 []=
    some (s2Step156ExitGvAfter,s2Step156ExitGvOut,shrinkRow 771 s2Step156ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step156ExitGvBefore s2Step156ExitGvRow 93 s2Step156ExitGv_distinct s2Step156ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step156ExitGvRow.payload.take 93) s2Step156ExitGvRow.sign=s2Step156ExitGvOut := by decide +kernel
  have hi : s2Step156ExitGvRow.payload.drop 93=s2Step156ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step156ExitGv_retired] at result
  exact result

private theorem s2Step156ExitBank_rows : planWindowRowsLog s2Step156ExitGBefore [(s2Step156ExitGRow,191),(s2Step156ExitFRow,191),(s2Step156ExitFvRow,93),(s2Step156ExitGvRow,93)] [[],[],[],[]]=
    some (s2Step156ExitGvAfter,[s2Step156ExitGOut,s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut],(shrinkRow 769 s2Step156ExitGExtra ++ (shrinkRow 768 s2Step156ExitFExtra ++ (shrinkRow 770 s2Step156ExitFvExtra ++ (shrinkRow 771 s2Step156ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step156ExitGvAfter [] []=some (s2Step156ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step156ExitGvBefore s2Step156ExitGvAfter s2Step156ExitGvAfter
    s2Step156ExitGvRow s2Step156ExitGvOut 93 [] [] [] []
    (shrinkRow 771 s2Step156ExitGvExtra) ([]) s2Step156ExitGv_Incoming s2Step156ExitGv_checked h4 s2Step156ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step156ExitFvBefore s2Step156ExitFvAfter s2Step156ExitGvAfter
    s2Step156ExitFvRow s2Step156ExitFvOut 93 [] [(s2Step156ExitGvRow,93)] [[]] [s2Step156ExitGvOut]
    (shrinkRow 770 s2Step156ExitFvExtra) ((shrinkRow 771 s2Step156ExitGvExtra ++ [])) s2Step156ExitFv_Incoming s2Step156ExitFv_checked h3 s2Step156ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step156ExitFBefore s2Step156ExitFAfter s2Step156ExitGvAfter
    s2Step156ExitFRow s2Step156ExitFOut 191 [] [(s2Step156ExitFvRow,93),(s2Step156ExitGvRow,93)] [[],[]] [s2Step156ExitFvOut,s2Step156ExitGvOut]
    (shrinkRow 768 s2Step156ExitFExtra) ((shrinkRow 770 s2Step156ExitFvExtra ++ (shrinkRow 771 s2Step156ExitGvExtra ++ []))) s2Step156ExitF_Incoming s2Step156ExitF_checked h2 s2Step156ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step156ExitGBefore s2Step156ExitGAfter s2Step156ExitGvAfter
    s2Step156ExitGRow s2Step156ExitGOut 191 [] [(s2Step156ExitFRow,191),(s2Step156ExitFvRow,93),(s2Step156ExitGvRow,93)] [[],[],[]] [s2Step156ExitFOut,s2Step156ExitFvOut,s2Step156ExitGvOut]
    (shrinkRow 769 s2Step156ExitGExtra) ((shrinkRow 768 s2Step156ExitFExtra ++ (shrinkRow 770 s2Step156ExitFvExtra ++ (shrinkRow 771 s2Step156ExitGvExtra ++ [])))) s2Step156ExitG_Incoming s2Step156ExitG_checked h1 s2Step156ExitG_Outgoing
  exact h0

private theorem s2Step156ExitBank_checked : compileHmrBankResizeLog .exit s2Step156ExitGBefore ⟨s2Step156ExitFRow,s2Step156ExitGRow,s2Step156ExitFvRow,s2Step156ExitGvRow⟩ ⟨191,191,93,93⟩ [[],[],[],[]]=
    some (s2Step156ExitGvAfter,⟨s2Step156ExitFOut,s2Step156ExitGOut,s2Step156ExitFvOut,s2Step156ExitGvOut⟩,(shrinkRow 769 s2Step156ExitGExtra ++ (shrinkRow 768 s2Step156ExitFExtra ++ (shrinkRow 770 s2Step156ExitFvExtra ++ (shrinkRow 771 s2Step156ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step156ExitBank_rows]
  rfl

private theorem s2Step156Add0_apart : Disjoint s2Step156Add0Arena.live s2Step156Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step156Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156Add0_card : s2Step156Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step156Add0_borrowed : s2Step156Add0Arena.checkBorrow (hmrHybridCount s2Step156Add0Arena s2Step156Add0B.length) s2Step156Add0Work=some s2Step156Add0During := by
  have len : s2Step156Add0Work.length=hmrHybridCount s2Step156Add0Arena s2Step156Add0B.length := by
    rw [hmrHybridCount,s2Step156Add0_card]
    decide +kernel
  have nd : s2Step156Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step156Add0Arena s2Step156Add0During s2Step156Add0Work.toFinset s2Step156Add0_bounded s2Step156Add0_apart rfl

private theorem s2Step156Add0_distinct : (867::849::877::(s2Step156Add0A++s2Step156Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156Add0_owned : (867::849::877::(s2Step156Add0A++s2Step156Add0B)).toFinset⊆s2Step156Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step156Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156Add0_checked : compileHmrHybridCinLog s2Step156Add0Arena 849 867 877 s2Step156Add0A s2Step156Add0B s2Step156Add0Work=some s2Step156Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step156Add0Arena s2Step156Add0During 849 867 877 s2Step156Add0A s2Step156Add0B s2Step156Add0Work
    (by decide +kernel) (by decide +kernel) s2Step156Add0_distinct
    (fun q hq => s2Step156Add0_owned (List.mem_toFinset.mpr hq)) s2Step156Add0_borrowed

private theorem s2Step156Add1_apart : Disjoint s2Step156Add1Arena.live s2Step156Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step156Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156Add1_card : s2Step156Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step156Add1_borrowed : s2Step156Add1Arena.checkBorrow (hmrHybridCount s2Step156Add1Arena s2Step156Add1B.length) s2Step156Add1Work=some s2Step156Add1During := by
  have len : s2Step156Add1Work.length=hmrHybridCount s2Step156Add1Arena s2Step156Add1B.length := by
    rw [hmrHybridCount,s2Step156Add1_card]
    decide +kernel
  have nd : s2Step156Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step156Add1Arena s2Step156Add1During s2Step156Add1Work.toFinset s2Step156Add1_bounded s2Step156Add1_apart rfl

private theorem s2Step156Add1_distinct : (867::849::877::(s2Step156Add1A++s2Step156Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156Add1_owned : (867::849::877::(s2Step156Add1A++s2Step156Add1B)).toFinset⊆s2Step156Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step156Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156Add1_checked : compileHmrHybridCinLog s2Step156Add1Arena 849 867 877 s2Step156Add1A s2Step156Add1B s2Step156Add1Work=some s2Step156Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step156Add1Arena s2Step156Add1During 849 867 877 s2Step156Add1A s2Step156Add1B s2Step156Add1Work
    (by decide +kernel) (by decide +kernel) s2Step156Add1_distinct
    (fun q hq => s2Step156Add1_owned (List.mem_toFinset.mpr hq)) s2Step156Add1_borrowed

private theorem s2Step156F4_apart : Disjoint (s2Step156Add0A++s2Step156Add0B).toFinset (s2Step156Add1A++s2Step156Add1B).toFinset := by
  have nd : ((s2Step156Add0A++s2Step156Add0B)++(s2Step156Add1A++s2Step156Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step156F4_carry : s2Step156F4FlagArena.checkBorrow 1 [877]=some s2Step156Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step156F4FlagArena,s2Step156HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step156F4FlagArena,s2Step156HeadFvAfter,s2Step156Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156F4_distinct : (778::849::867::877::((s2Step156Add0A++s2Step156Add1A)++(s2Step156Add0B++s2Step156Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156F4_flag : s2Step156HeadFvAfter.checkBorrow 1 [867]=some s2Step156F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step156HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step156F4_owned : (778::849::((s2Step156Add0A++s2Step156Add1A)++(s2Step156Add0B++s2Step156Add1B))).toFinset⊆s2Step156HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step156HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156F4_checked : compileHmrHybridF4Log s2Step156HeadFvAfter 778 849 s2Step156Add0A s2Step156Add0B s2Step156Add1A s2Step156Add1B [867] [877] s2Step156Add0Work s2Step156Add1Work=some s2Step156F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step156HeadFvAfter s2Step156F4FlagArena s2Step156Add0Arena s2Step156Add0During s2Step156Add1During 778 849
    s2Step156Add0A s2Step156Add0B s2Step156Add1A s2Step156Add1B [867] [877] s2Step156Add0Work s2Step156Add1Work
    (fun q hq => s2Step156F4_owned (List.mem_toFinset.mpr hq)) s2Step156F4_flag s2Step156F4_carry
    s2Step156F4_distinct s2Step156F4_apart s2Step156Add0_checked s2Step156Add1_checked

private theorem s2Step156Front_branch : s2Step156FrontSigmaArena.checkBorrow 1 [849]=some s2Step156HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step156FrontSigmaArena,s2Step156EntryGvAfter,s2Step156EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step156FrontSigmaArena,s2Step156EntryGvAfter,s2Step156EntryFvAfter,s2Step156HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156Front_entry : HmrFrontEntryValid s2Step156EntryFBefore s2Step156FrontBank 192 93 ⟨191,191,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step156FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step156EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step156EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step156FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step156Front_sigma : s2Step156EntryGvAfter.checkBorrow 1 [778]=some s2Step156FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step156EntryGvAfter,s2Step156EntryFvAfter,arenaWires]
  · rfl

private def s2Step156HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156HeadFBefore : Arena := s2Step156HeadGAfter

private def s2Step156HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step156HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step156HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step156HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private theorem s2Step156HeadBank_incomingDistinct : ([s2Step156HeadGRow,s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156HeadF_Incoming : rowsOwned s2Step156HeadFBefore [s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156HeadGRow,s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow] 1 s2Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156HeadBank_outgoingOwned : rowsOwned s2Step156HeadFvAfter [s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step156HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156HeadF_Outgoing : rowsOwned s2Step156HeadFvAfter [s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] :=
  hmrRows_owned_drop s2Step156HeadFvAfter [s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] 1 s2Step156HeadBank_outgoingOwned

private theorem s2Step156HeadF_distinct : (s2Step156HeadFRow.sign::s2Step156HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156HeadF_owned : (s2Step156HeadFRow.sign::s2Step156HeadFRow.payload).toFinset⊆s2Step156HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156HeadF_reserved : s2Step156HeadFBefore.reserve s2Step156HeadFFresh.toFinset=some s2Step156HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156HeadFFresh,arenaWires]
  · norm_num [s2Step156HeadFBefore,s2Step156HeadGAfter,s2Step156HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step156HeadFAfter,s2Step156HeadFBefore,s2Step156HeadGAfter,s2Step156HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156HeadF_checked : planRowResizeLog s2Step156HeadFBefore s2Step156HeadFRow 193 s2Step156HeadFFresh=
    some (s2Step156HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 847],768⟩,growRow 768 s2Step156HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step156HeadFBefore s2Step156HeadFAfter s2Step156HeadFRow 193 s2Step156HeadFFresh
    s2Step156HeadF_distinct s2Step156HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156HeadF_reserved
  have rowEq : WindowRow.mk (s2Step156HeadFRow.payload++s2Step156HeadFFresh) s2Step156HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 847],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step156HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step156HeadFvBefore : Arena := s2Step156HeadGvAfter

private theorem s2Step156HeadFv_Incoming : rowsOwned s2Step156HeadFvBefore [s2Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156HeadGRow,s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow] 3 s2Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156HeadFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156HeadFv_Outgoing : rowsOwned s2Step156HeadFvAfter [s2Step156HeadFvOut] :=
  hmrRows_owned_drop s2Step156HeadFvAfter [s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] 3 s2Step156HeadBank_outgoingOwned

private theorem s2Step156HeadFv_distinct : (s2Step156HeadFvRow.sign::s2Step156HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156HeadFv_owned : (s2Step156HeadFvRow.sign::s2Step156HeadFvRow.payload).toFinset⊆s2Step156HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156HeadFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156HeadFv_reserved : s2Step156HeadFvBefore.reserve s2Step156HeadFvFresh.toFinset=some s2Step156HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156HeadFvFresh,arenaWires]
  · norm_num [s2Step156HeadFvBefore,s2Step156HeadGvAfter,s2Step156HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step156HeadFvAfter,s2Step156HeadFvBefore,s2Step156HeadGvAfter,s2Step156HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156HeadFv_checked : planRowResizeLog s2Step156HeadFvBefore s2Step156HeadFvRow 94 s2Step156HeadFvFresh=
    some (s2Step156HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩,growRow 770 s2Step156HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step156HeadFvBefore s2Step156HeadFvAfter s2Step156HeadFvRow 94 s2Step156HeadFvFresh
    s2Step156HeadFv_distinct s2Step156HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step156HeadFvRow.payload++s2Step156HeadFvFresh) s2Step156HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step156HeadG_Incoming : rowsOwned s2Step156HeadGBefore [s2Step156HeadGRow,s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156HeadGRow,s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow] 0 s2Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156HeadG_Outgoing : rowsOwned s2Step156HeadFvAfter [s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] :=
  hmrRows_owned_drop s2Step156HeadFvAfter [s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] 0 s2Step156HeadBank_outgoingOwned

private theorem s2Step156HeadG_distinct : (s2Step156HeadGRow.sign::s2Step156HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156HeadG_owned : (s2Step156HeadGRow.sign::s2Step156HeadGRow.payload).toFinset⊆s2Step156HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156HeadG_reserved : s2Step156HeadGBefore.reserve s2Step156HeadGFresh.toFinset=some s2Step156HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156HeadGFresh,arenaWires]
  · norm_num [s2Step156HeadGBefore,s2Step156HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step156HeadGAfter,s2Step156HeadGBefore,s2Step156HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156HeadG_checked : planRowResizeLog s2Step156HeadGBefore s2Step156HeadGRow 193 s2Step156HeadGFresh=
    some (s2Step156HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 780],769⟩,growRow 769 s2Step156HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step156HeadGBefore s2Step156HeadGAfter s2Step156HeadGRow 193 s2Step156HeadGFresh
    s2Step156HeadG_distinct s2Step156HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156HeadG_reserved
  have rowEq : WindowRow.mk (s2Step156HeadGRow.payload++s2Step156HeadGFresh) s2Step156HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step156HeadGvBefore : Arena := s2Step156HeadFAfter

private theorem s2Step156HeadGv_Incoming : rowsOwned s2Step156HeadGvBefore [s2Step156HeadGvRow,s2Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step156HeadGRow,s2Step156HeadFRow,s2Step156HeadGvRow,s2Step156HeadFvRow] 2 s2Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step156HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step156HeadGv_Outgoing : rowsOwned s2Step156HeadFvAfter [s2Step156HeadGvOut,s2Step156HeadFvOut] :=
  hmrRows_owned_drop s2Step156HeadFvAfter [s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut] 2 s2Step156HeadBank_outgoingOwned

private theorem s2Step156HeadGv_distinct : (s2Step156HeadGvRow.sign::s2Step156HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step156HeadGv_owned : (s2Step156HeadGvRow.sign::s2Step156HeadGvRow.payload).toFinset⊆s2Step156HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step156HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step156HeadGv_reserved : s2Step156HeadGvBefore.reserve s2Step156HeadGvFresh.toFinset=some s2Step156HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step156HeadGvFresh,arenaWires]
  · norm_num [s2Step156HeadGvBefore,s2Step156HeadFAfter,s2Step156HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step156HeadGvAfter,s2Step156HeadGvBefore,s2Step156HeadFAfter,s2Step156HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step156HeadGv_checked : planRowResizeLog s2Step156HeadGvBefore s2Step156HeadGvRow 94 s2Step156HeadGvFresh=
    some (s2Step156HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩,growRow 771 s2Step156HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step156HeadGvBefore s2Step156HeadGvAfter s2Step156HeadGvRow 94 s2Step156HeadGvFresh
    s2Step156HeadGv_distinct s2Step156HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step156HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step156HeadGvRow.payload++s2Step156HeadGvFresh) s2Step156HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step156HeadBank_rows : planWindowRowsLog s2Step156HeadGBefore [(s2Step156HeadGRow,193),(s2Step156HeadFRow,193),(s2Step156HeadGvRow,94),(s2Step156HeadFvRow,94)] [s2Step156HeadGFresh,s2Step156HeadFFresh,s2Step156HeadGvFresh,s2Step156HeadFvFresh]=
    some (s2Step156HeadFvAfter,[s2Step156HeadGOut,s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut],(growRow 769 s2Step156HeadGFresh ++ (growRow 768 s2Step156HeadFFresh ++ (growRow 771 s2Step156HeadGvFresh ++ (growRow 770 s2Step156HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step156HeadFvAfter [] []=some (s2Step156HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step156HeadFvBefore s2Step156HeadFvAfter s2Step156HeadFvAfter
    s2Step156HeadFvRow s2Step156HeadFvOut 94 s2Step156HeadFvFresh [] [] []
    (growRow 770 s2Step156HeadFvFresh) ([]) s2Step156HeadFv_Incoming s2Step156HeadFv_checked h4 s2Step156HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step156HeadGvBefore s2Step156HeadGvAfter s2Step156HeadFvAfter
    s2Step156HeadGvRow s2Step156HeadGvOut 94 s2Step156HeadGvFresh [(s2Step156HeadFvRow,94)] [s2Step156HeadFvFresh] [s2Step156HeadFvOut]
    (growRow 771 s2Step156HeadGvFresh) ((growRow 770 s2Step156HeadFvFresh ++ [])) s2Step156HeadGv_Incoming s2Step156HeadGv_checked h3 s2Step156HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step156HeadFBefore s2Step156HeadFAfter s2Step156HeadFvAfter
    s2Step156HeadFRow s2Step156HeadFOut 193 s2Step156HeadFFresh [(s2Step156HeadGvRow,94),(s2Step156HeadFvRow,94)] [s2Step156HeadGvFresh,s2Step156HeadFvFresh] [s2Step156HeadGvOut,s2Step156HeadFvOut]
    (growRow 768 s2Step156HeadFFresh) ((growRow 771 s2Step156HeadGvFresh ++ (growRow 770 s2Step156HeadFvFresh ++ []))) s2Step156HeadF_Incoming s2Step156HeadF_checked h2 s2Step156HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step156HeadGBefore s2Step156HeadGAfter s2Step156HeadFvAfter
    s2Step156HeadGRow s2Step156HeadGOut 193 s2Step156HeadGFresh [(s2Step156HeadFRow,193),(s2Step156HeadGvRow,94),(s2Step156HeadFvRow,94)] [s2Step156HeadFFresh,s2Step156HeadGvFresh,s2Step156HeadFvFresh] [s2Step156HeadFOut,s2Step156HeadGvOut,s2Step156HeadFvOut]
    (growRow 769 s2Step156HeadGFresh) ((growRow 768 s2Step156HeadFFresh ++ (growRow 771 s2Step156HeadGvFresh ++ (growRow 770 s2Step156HeadFvFresh ++ [])))) s2Step156HeadG_Incoming s2Step156HeadG_checked h1 s2Step156HeadG_Outgoing
  exact h0

private theorem s2Step156HeadBank_checked : compileHmrBankResizeLog .headroom s2Step156HeadGBefore ⟨s2Step156HeadFRow,s2Step156HeadGRow,s2Step156HeadFvRow,s2Step156HeadGvRow⟩ ⟨193,193,94,94⟩ [s2Step156HeadGFresh,s2Step156HeadFFresh,s2Step156HeadGvFresh,s2Step156HeadFvFresh]=
    some (s2Step156HeadFvAfter,⟨s2Step156HeadFOut,s2Step156HeadGOut,s2Step156HeadFvOut,s2Step156HeadGvOut⟩,(growRow 769 s2Step156HeadGFresh ++ (growRow 768 s2Step156HeadFFresh ++ (growRow 771 s2Step156HeadGvFresh ++ (growRow 770 s2Step156HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step156HeadBank_rows]
  rfl

private theorem s2Step156Front_checked : compileHmrSourceFrontLog s2Step156EntryFBefore s2Step156FrontBank 192 93 ⟨191,191,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step156FrontLog=some s2Step156FrontPlan := by
  have pairEq : s2Step156FrontPair=⟨s2Step156HeadFRow,s2Step156HeadGRow,s2Step156HeadFvRow,s2Step156HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step156FrontHead=⟨s2Step156ExitFRow,s2Step156ExitGRow,s2Step156ExitFvRow,s2Step156ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step156Add0A=s2Step156FrontHead.f.wires := by decide +kernel
  have gEq : s2Step156Add0B=s2Step156FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step156Add1A=s2Step156FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step156Add1B=s2Step156FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step156EntryFBefore s2Step156FrontBank 192 93 ⟨191,191,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step156FrontLog s2Step156FrontPlan
  · exact s2Step156Front_entry
  · exact s2Step156EntryBank_checked
  · exact s2Step156Front_sigma
  · rfl
  · exact s2Step156Front_branch
  · rfl
  · simpa only [s2Step156FrontPlan,pairEq] using s2Step156HeadBank_checked
  · simpa only [s2Step156FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step156F4_checked
  · exact s2Step156Counter_checked
  · rfl
  · simpa only [s2Step156FrontPlan,headEq] using s2Step156ExitBank_checked

private theorem s2Step156Complete_explicit_checked : compileHmrEarlyStepLog s2Step156EntryFBefore s2Step156FrontBank 192 93 ⟨191,191,93,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step156CompleteLog=some s2Step156CompletePlan := by
  let Q := s2Step156EarlyControlPlan
  have hq := s2Step156EarlyControl_plan_checked
  have fv1 : s2Step156CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step156CompleteOut.fv.payload[2]?.getD s2Step156CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step156CompleteOut.fv.payload[3]?.getD s2Step156CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step156CompleteOut.fv.payload[4]?.getD s2Step156CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step156EntryFBefore s2Step156EarlyControlArena s2Step156FrontBank 192 93 ⟨191,191,93,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step156CompleteLog s2Step156FrontPlan Q
    s2Step156Front_checked s2Step156Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step156Complete_owned s2Step156Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step156EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step156CompleteOut.fv.second (s2Step156CompleteOut.fv.payload[2]?.getD s2Step156CompleteOut.fv.sign) (s2Step156CompleteOut.fv.payload[3]?.getD s2Step156CompleteOut.fv.sign) (s2Step156CompleteOut.fv.payload[4]?.getD s2Step156CompleteOut.fv.sign) 849 42 s2Step156EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep156Arena : Arena := s2Step156EntryFBefore
def s2PrivateStep156Bank : WindowBank := s2Step156FrontBank
def s2PrivateStep156Spec : HmrSourceWalkStepLog := ⟨192,93,⟨191,191,93,93⟩,42,.early s2Step156CompleteLog⟩
def s2PrivateStep156Plan : HmrSourceStepPlan := .early s2Step156CompletePlan
theorem s2PrivateStep156_source : s2PrivateStep156Spec=s2ObservedLogs144[12] := rfl
theorem s2PrivateStep156_checked : compileHmrSourceStepLog s2PrivateStep156Arena s2PrivateStep156Bank
    s2PrivateStep156Spec.fgWidth s2PrivateStep156Spec.vWidth s2PrivateStep156Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 156 s2PrivateStep156Spec.need none s2PrivateStep156Spec.log=some s2PrivateStep156Plan := by
  change compileHmrSourceStepLog s2Step156EntryFBefore s2Step156FrontBank 192 93 ⟨191,191,93,93⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 156 42 none (.early s2Step156CompleteLog)=some (.early s2Step156CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 156<498)]
  rw [s2Step156Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
