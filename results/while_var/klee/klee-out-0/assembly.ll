; ModuleID = 'code.bc'
source_filename = "code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"code.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !13, metadata !DIExpression()), !dbg !15
  %0 = bitcast i32* %n to i8*, !dbg !16
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %x, metadata !18, metadata !DIExpression()), !dbg !19
  %1 = bitcast i32* %x to i8*, !dbg !20
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %y, metadata !22, metadata !DIExpression()), !dbg !23
  %2 = load i32, i32* %n, align 4, !dbg !24
  %3 = load i32, i32* %x, align 4, !dbg !25
  %sub = sub i32 %2, %3, !dbg !26
  store i32 %sub, i32* %y, align 4, !dbg !23
  br label %while.cond, !dbg !27

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, i32* %x, align 4, !dbg !28
  %5 = load i32, i32* %y, align 4, !dbg !29
  %cmp = icmp ugt i32 %4, %5, !dbg !30
  br i1 %cmp, label %while.body, label %while.end, !dbg !27

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %x, align 4, !dbg !31
  %dec = add i32 %6, -1, !dbg !31
  store i32 %dec, i32* %x, align 4, !dbg !31
  %7 = load i32, i32* %y, align 4, !dbg !33
  %inc = add i32 %7, 1, !dbg !33
  store i32 %inc, i32* %y, align 4, !dbg !33
  %8 = load i32, i32* %x, align 4, !dbg !34
  %9 = load i32, i32* %y, align 4, !dbg !36
  %cmp1 = icmp ult i32 %8, %9, !dbg !37
  br i1 %cmp1, label %if.then, label %if.end, !dbg !38

if.then:                                          ; preds = %while.body
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !39
  br label %if.end, !dbg !41

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !27, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "code.c", directory: "/results/C_while_loop-1/klee")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !10, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 14, type: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DILocation(line: 14, column: 16, scope: !9)
!16 = !DILocation(line: 15, column: 21, scope: !9)
!17 = !DILocation(line: 15, column: 2, scope: !9)
!18 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 16, type: !14)
!19 = !DILocation(line: 16, column: 16, scope: !9)
!20 = !DILocation(line: 17, column: 21, scope: !9)
!21 = !DILocation(line: 17, column: 2, scope: !9)
!22 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 19, type: !14)
!23 = !DILocation(line: 19, column: 16, scope: !9)
!24 = !DILocation(line: 19, column: 20, scope: !9)
!25 = !DILocation(line: 19, column: 24, scope: !9)
!26 = !DILocation(line: 19, column: 22, scope: !9)
!27 = !DILocation(line: 20, column: 3, scope: !9)
!28 = !DILocation(line: 20, column: 10, scope: !9)
!29 = !DILocation(line: 20, column: 14, scope: !9)
!30 = !DILocation(line: 20, column: 12, scope: !9)
!31 = !DILocation(line: 21, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 20, column: 17)
!33 = !DILocation(line: 22, column: 6, scope: !32)
!34 = !DILocation(line: 23, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 23, column: 9)
!36 = !DILocation(line: 23, column: 13, scope: !35)
!37 = !DILocation(line: 23, column: 11, scope: !35)
!38 = !DILocation(line: 23, column: 9, scope: !32)
!39 = !DILocation(line: 25, column: 4, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 23, column: 16)
!41 = !DILocation(line: 26, column: 5, scope: !40)
!42 = distinct !{!42, !27, !43, !44}
!43 = !DILocation(line: 27, column: 3, scope: !9)
!44 = !{!"llvm.loop.mustprogress"}
!45 = !DILocation(line: 28, column: 3, scope: !9)
