; ModuleID = 'code.bc'
source_filename = "code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32** %p, metadata !13, metadata !DIExpression()), !dbg !15
  store i32* null, i32** %p, align 8, !dbg !15
  %0 = load i32*, i32** %p, align 8, !dbg !16
  %cmp = icmp eq i32* %0, null, !dbg !18
  br i1 %cmp, label %if.then, label %if.end, !dbg !19

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %p, align 8, !dbg !20
  store i32 3, i32* %1, align 4, !dbg !22
  br label %if.end, !dbg !23

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %p, align 8, !dbg !24
  %3 = bitcast i32* %2 to i8*, !dbg !24
  call void @free(i8* %3) #3, !dbg !25
  %4 = load i32, i32* %retval, align 4, !dbg !26
  ret i32 %4, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "code.c", directory: "/results/null-deref_false-valid-deref/klee")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "p", scope: !9, file: !1, line: 4, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!15 = !DILocation(line: 4, column: 7, scope: !9)
!16 = !DILocation(line: 5, column: 6, scope: !17)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 6)
!18 = !DILocation(line: 5, column: 8, scope: !17)
!19 = !DILocation(line: 5, column: 6, scope: !9)
!20 = !DILocation(line: 6, column: 4, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 5, column: 14)
!22 = !DILocation(line: 6, column: 6, scope: !21)
!23 = !DILocation(line: 7, column: 2, scope: !21)
!24 = !DILocation(line: 8, column: 7, scope: !9)
!25 = !DILocation(line: 8, column: 2, scope: !9)
!26 = !DILocation(line: 9, column: 1, scope: !9)
