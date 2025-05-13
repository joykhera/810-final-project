; ModuleID = 'code.bc'
source_filename = "code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"input: [%d, %d, %d, %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"insertion_sort: [%d, %d, %d, %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bubble_sort   : [%d, %d, %d, %d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"temp1[i] == temp2[i]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"code.c\00", align 1
@__PRETTY_FUNCTION__.test = private unnamed_addr constant [31 x i8] c"void test(int *, unsigned int)\00", align 1
@__const.main.input = private unnamed_addr constant [4 x i32] [i32 4, i32 3, i32 2, i32 1], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bubble_sort(i32* %array, i32 %nelem) #0 !dbg !13 {
entry:
  %array.addr = alloca i32*, align 8
  %nelem.addr = alloca i32, align 4
  %done = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %array.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %nelem, i32* %nelem.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelem.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %done, metadata !23, metadata !DIExpression()), !dbg !27
  store i32 1, i32* %done, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %i, align 4, !dbg !30
  br label %for.cond1, !dbg !31

for.cond1:                                        ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !32
  %add = add i32 %0, 1, !dbg !34
  %1 = load i32, i32* %nelem.addr, align 4, !dbg !35
  %cmp = icmp ult i32 %add, %1, !dbg !36
  br i1 %cmp, label %for.body, label %for.end16, !dbg !37

for.body:                                         ; preds = %for.cond1
  %2 = load i32*, i32** %array.addr, align 8, !dbg !38
  %3 = load i32, i32* %i, align 4, !dbg !41
  %add2 = add i32 %3, 1, !dbg !42
  %idxprom = zext i32 %add2 to i64, !dbg !38
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !38
  %4 = load i32, i32* %arrayidx, align 4, !dbg !38
  %5 = load i32*, i32** %array.addr, align 8, !dbg !43
  %6 = load i32, i32* %i, align 4, !dbg !44
  %idxprom3 = zext i32 %6 to i64, !dbg !43
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3, !dbg !43
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !43
  %cmp5 = icmp slt i32 %4, %7, !dbg !45
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !46

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i32* %t, metadata !47, metadata !DIExpression()), !dbg !49
  %8 = load i32*, i32** %array.addr, align 8, !dbg !50
  %9 = load i32, i32* %i, align 4, !dbg !51
  %add6 = add i32 %9, 1, !dbg !52
  %idxprom7 = zext i32 %add6 to i64, !dbg !50
  %arrayidx8 = getelementptr inbounds i32, i32* %8, i64 %idxprom7, !dbg !50
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !50
  store i32 %10, i32* %t, align 4, !dbg !49
  %11 = load i32*, i32** %array.addr, align 8, !dbg !53
  %12 = load i32, i32* %i, align 4, !dbg !54
  %idxprom9 = zext i32 %12 to i64, !dbg !53
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom9, !dbg !53
  %13 = load i32, i32* %arrayidx10, align 4, !dbg !53
  %14 = load i32*, i32** %array.addr, align 8, !dbg !55
  %15 = load i32, i32* %i, align 4, !dbg !56
  %add11 = add i32 %15, 1, !dbg !57
  %idxprom12 = zext i32 %add11 to i64, !dbg !55
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12, !dbg !55
  store i32 %13, i32* %arrayidx13, align 4, !dbg !58
  %16 = load i32, i32* %t, align 4, !dbg !59
  %17 = load i32*, i32** %array.addr, align 8, !dbg !60
  %18 = load i32, i32* %i, align 4, !dbg !61
  %idxprom14 = zext i32 %18 to i64, !dbg !60
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 %idxprom14, !dbg !60
  store i32 %16, i32* %arrayidx15, align 4, !dbg !62
  store i32 0, i32* %done, align 4, !dbg !63
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body, %if.then
  %19 = load i32, i32* %i, align 4, !dbg !65
  %inc = add i32 %19, 1, !dbg !65
  store i32 %inc, i32* %i, align 4, !dbg !65
  br label %for.cond1, !dbg !66, !llvm.loop !67

for.end16:                                        ; preds = %for.cond1
  ret void, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertion_sort(i32* %array, i32 %nelem) #0 !dbg !71 {
entry:
  %array.addr = alloca i32*, align 8
  %nelem.addr = alloca i32, align 4
  %temp = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %array.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %nelem, i32* %nelem.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelem.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32** %temp, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i32, i32* %nelem.addr, align 4, !dbg !78
  %conv = zext i32 %0 to i64, !dbg !78
  %mul = mul i64 4, %conv, !dbg !79
  %call = call noalias align 16 i8* @malloc(i64 %mul) #6, !dbg !80
  %1 = bitcast i8* %call to i32*, !dbg !80
  store i32* %1, i32** %temp, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i, metadata !81, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !84

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, i32* %i, align 4, !dbg !85
  %3 = load i32, i32* %nelem.addr, align 4, !dbg !87
  %cmp = icmp ne i32 %2, %3, !dbg !88
  br i1 %cmp, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %temp, align 8, !dbg !90
  %5 = load i32, i32* %i, align 4, !dbg !91
  %6 = load i32*, i32** %array.addr, align 8, !dbg !92
  %7 = load i32, i32* %i, align 4, !dbg !93
  %idxprom = zext i32 %7 to i64, !dbg !92
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !92
  %8 = load i32, i32* %arrayidx, align 4, !dbg !92
  call void @insert_ordered(i32* %4, i32 %5, i32 %8), !dbg !94
  %9 = load i32, i32* %i, align 4, !dbg !95
  %inc = add i32 %9, 1, !dbg !95
  store i32 %inc, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %array.addr, align 8, !dbg !99
  %11 = bitcast i32* %10 to i8*, !dbg !100
  %12 = load i32*, i32** %temp, align 8, !dbg !101
  %13 = bitcast i32* %12 to i8*, !dbg !100
  %14 = load i32, i32* %nelem.addr, align 4, !dbg !102
  %conv2 = zext i32 %14 to i64, !dbg !102
  %mul3 = mul i64 4, %conv2, !dbg !103
  %15 = call i8* @memcpy(i8* %11, i8* %13, i64 %mul3), !dbg !100
  %16 = load i32*, i32** %temp, align 8, !dbg !104
  %17 = bitcast i32* %16 to i8*, !dbg !104
  call void @free(i8* %17) #6, !dbg !105
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @insert_ordered(i32* %array, i32 %nelem, i32 %item) #0 !dbg !107 {
entry:
  %array.addr = alloca i32*, align 8
  %nelem.addr = alloca i32, align 4
  %item.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %array.addr, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 %nelem, i32* %nelem.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelem.addr, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 %item, i32* %item.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %item.addr, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %i, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !119
  %1 = load i32, i32* %nelem.addr, align 4, !dbg !122
  %cmp = icmp ne i32 %0, %1, !dbg !123
  br i1 %cmp, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %item.addr, align 4, !dbg !125
  %3 = load i32*, i32** %array.addr, align 8, !dbg !128
  %4 = load i32, i32* %i, align 4, !dbg !129
  %idxprom = zext i32 %4 to i64, !dbg !128
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !128
  %5 = load i32, i32* %arrayidx, align 4, !dbg !128
  %cmp1 = icmp slt i32 %2, %5, !dbg !130
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !131

if.then:                                          ; preds = %for.body
  %6 = load i32*, i32** %array.addr, align 8, !dbg !132
  %7 = load i32, i32* %i, align 4, !dbg !134
  %add = add i32 %7, 1, !dbg !135
  %idxprom2 = zext i32 %add to i64, !dbg !132
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2, !dbg !132
  %8 = bitcast i32* %arrayidx3 to i8*, !dbg !136
  %9 = load i32*, i32** %array.addr, align 8, !dbg !137
  %10 = load i32, i32* %i, align 4, !dbg !138
  %idxprom4 = zext i32 %10 to i64, !dbg !137
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4, !dbg !137
  %11 = bitcast i32* %arrayidx5 to i8*, !dbg !136
  %12 = load i32, i32* %nelem.addr, align 4, !dbg !139
  %13 = load i32, i32* %i, align 4, !dbg !140
  %sub = sub i32 %12, %13, !dbg !141
  %conv = zext i32 %sub to i64, !dbg !142
  %mul = mul i64 4, %conv, !dbg !143
  %14 = call i8* @memmove(i8* %8, i8* %11, i64 %mul), !dbg !136
  br label %for.end, !dbg !144

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !145
  %inc = add i32 %15, 1, !dbg !145
  store i32 %inc, i32* %i, align 4, !dbg !145
  br label %for.cond, !dbg !146, !llvm.loop !147

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load i32, i32* %item.addr, align 4, !dbg !149
  %17 = load i32*, i32** %array.addr, align 8, !dbg !150
  %18 = load i32, i32* %i, align 4, !dbg !151
  %idxprom6 = zext i32 %18 to i64, !dbg !150
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %idxprom6, !dbg !150
  store i32 %16, i32* %arrayidx7, align 4, !dbg !152
  ret void, !dbg !153
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32* %array, i32 %nelem) #0 !dbg !154 {
entry:
  %array.addr = alloca i32*, align 8
  %nelem.addr = alloca i32, align 4
  %temp1 = alloca i32*, align 8
  %temp2 = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %array.addr, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 %nelem, i32* %nelem.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelem.addr, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32** %temp1, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i32, i32* %nelem.addr, align 4, !dbg !161
  %conv = zext i32 %0 to i64, !dbg !161
  %mul = mul i64 4, %conv, !dbg !162
  %call = call noalias align 16 i8* @malloc(i64 %mul) #6, !dbg !163
  %1 = bitcast i8* %call to i32*, !dbg !163
  store i32* %1, i32** %temp1, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i32** %temp2, metadata !164, metadata !DIExpression()), !dbg !165
  %2 = load i32, i32* %nelem.addr, align 4, !dbg !166
  %conv1 = zext i32 %2 to i64, !dbg !166
  %mul2 = mul i64 4, %conv1, !dbg !167
  %call3 = call noalias align 16 i8* @malloc(i64 %mul2) #6, !dbg !168
  %3 = bitcast i8* %call3 to i32*, !dbg !168
  store i32* %3, i32** %temp2, align 8, !dbg !165
  %4 = load i32*, i32** %array.addr, align 8, !dbg !169
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0, !dbg !169
  %5 = load i32, i32* %arrayidx, align 4, !dbg !169
  %6 = load i32*, i32** %array.addr, align 8, !dbg !170
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !170
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !170
  %8 = load i32*, i32** %array.addr, align 8, !dbg !171
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 2, !dbg !171
  %9 = load i32, i32* %arrayidx5, align 4, !dbg !171
  %10 = load i32*, i32** %array.addr, align 8, !dbg !172
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 3, !dbg !172
  %11 = load i32, i32* %arrayidx6, align 4, !dbg !172
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %9, i32 %11), !dbg !173
  %12 = load i32*, i32** %temp1, align 8, !dbg !174
  %13 = bitcast i32* %12 to i8*, !dbg !175
  %14 = load i32*, i32** %array.addr, align 8, !dbg !176
  %15 = bitcast i32* %14 to i8*, !dbg !175
  %16 = call i8* @memcpy(i8* %13, i8* %15, i64 16), !dbg !175
  %17 = load i32*, i32** %temp2, align 8, !dbg !177
  %18 = bitcast i32* %17 to i8*, !dbg !178
  %19 = load i32*, i32** %array.addr, align 8, !dbg !179
  %20 = bitcast i32* %19 to i8*, !dbg !178
  %21 = call i8* @memcpy(i8* %18, i8* %20, i64 16), !dbg !178
  %22 = load i32*, i32** %temp1, align 8, !dbg !180
  call void @insertion_sort(i32* %22, i32 4), !dbg !181
  %23 = load i32*, i32** %temp2, align 8, !dbg !182
  call void @bubble_sort(i32* %23, i32 4), !dbg !183
  %24 = load i32*, i32** %temp1, align 8, !dbg !184
  %arrayidx8 = getelementptr inbounds i32, i32* %24, i64 0, !dbg !184
  %25 = load i32, i32* %arrayidx8, align 4, !dbg !184
  %26 = load i32*, i32** %temp1, align 8, !dbg !185
  %arrayidx9 = getelementptr inbounds i32, i32* %26, i64 1, !dbg !185
  %27 = load i32, i32* %arrayidx9, align 4, !dbg !185
  %28 = load i32*, i32** %temp1, align 8, !dbg !186
  %arrayidx10 = getelementptr inbounds i32, i32* %28, i64 2, !dbg !186
  %29 = load i32, i32* %arrayidx10, align 4, !dbg !186
  %30 = load i32*, i32** %temp1, align 8, !dbg !187
  %arrayidx11 = getelementptr inbounds i32, i32* %30, i64 3, !dbg !187
  %31 = load i32, i32* %arrayidx11, align 4, !dbg !187
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27, i32 %29, i32 %31), !dbg !188
  %32 = load i32*, i32** %temp2, align 8, !dbg !189
  %arrayidx13 = getelementptr inbounds i32, i32* %32, i64 0, !dbg !189
  %33 = load i32, i32* %arrayidx13, align 4, !dbg !189
  %34 = load i32*, i32** %temp2, align 8, !dbg !190
  %arrayidx14 = getelementptr inbounds i32, i32* %34, i64 1, !dbg !190
  %35 = load i32, i32* %arrayidx14, align 4, !dbg !190
  %36 = load i32*, i32** %temp2, align 8, !dbg !191
  %arrayidx15 = getelementptr inbounds i32, i32* %36, i64 2, !dbg !191
  %37 = load i32, i32* %arrayidx15, align 4, !dbg !191
  %38 = load i32*, i32** %temp2, align 8, !dbg !192
  %arrayidx16 = getelementptr inbounds i32, i32* %38, i64 3, !dbg !192
  %39 = load i32, i32* %arrayidx16, align 4, !dbg !192
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35, i32 %37, i32 %39), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %i, metadata !194, metadata !DIExpression()), !dbg !196
  store i32 0, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %entry
  %40 = load i32, i32* %i, align 4, !dbg !198
  %41 = load i32, i32* %nelem.addr, align 4, !dbg !200
  %cmp = icmp ne i32 %40, %41, !dbg !201
  br i1 %cmp, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %42 = load i32*, i32** %temp1, align 8, !dbg !203
  %43 = load i32, i32* %i, align 4, !dbg !203
  %idxprom = zext i32 %43 to i64, !dbg !203
  %arrayidx19 = getelementptr inbounds i32, i32* %42, i64 %idxprom, !dbg !203
  %44 = load i32, i32* %arrayidx19, align 4, !dbg !203
  %45 = load i32*, i32** %temp2, align 8, !dbg !203
  %46 = load i32, i32* %i, align 4, !dbg !203
  %idxprom20 = zext i32 %46 to i64, !dbg !203
  %arrayidx21 = getelementptr inbounds i32, i32* %45, i64 %idxprom20, !dbg !203
  %47 = load i32, i32* %arrayidx21, align 4, !dbg !203
  %cmp22 = icmp eq i32 %44, %47, !dbg !203
  br i1 %cmp22, label %for.inc, label %if.else, !dbg !206

if.else:                                          ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.test, i64 0, i64 0)) #7, !dbg !203
  unreachable, !dbg !203

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !dbg !207
  %inc = add i32 %48, 1, !dbg !207
  store i32 %inc, i32* %i, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  %49 = load i32*, i32** %temp1, align 8, !dbg !211
  %50 = bitcast i32* %49 to i8*, !dbg !211
  call void @free(i8* %50) #6, !dbg !212
  %51 = load i32*, i32** %temp2, align 8, !dbg !213
  %52 = bitcast i32* %51 to i8*, !dbg !213
  call void @free(i8* %52) #6, !dbg !214
  ret void, !dbg !215
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !216 {
entry:
  %retval = alloca i32, align 4
  %input = alloca [4 x i32], align 16
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [4 x i32]* %input, metadata !219, metadata !DIExpression()), !dbg !223
  %0 = bitcast [4 x i32]* %input to i8*, !dbg !223
  %1 = call i8* @memcpy(i8* %0, i8* bitcast ([4 x i32]* @__const.main.input to i8*), i64 16), !dbg !223
  %2 = bitcast [4 x i32]* %input to i8*, !dbg !224
  call void @klee_make_symbolic(i8* %2, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !225
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %input, i64 0, i64 0, !dbg !226
  call void @test(i32* %arraydecay, i32 4), !dbg !227
  ret i32 0, !dbg !228
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #0 !dbg !229 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !239, metadata !DIExpression()), !dbg !240
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !245, metadata !DIExpression()), !dbg !248
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !249
  store i8* %0, i8** %dest, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i8** %src, metadata !250, metadata !DIExpression()), !dbg !253
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !254
  store i8* %1, i8** %src, align 8, !dbg !253
  br label %while.cond, !dbg !255

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !256
  %dec = add i64 %2, -1, !dbg !256
  store i64 %dec, i64* %len.addr, align 8, !dbg !256
  %cmp = icmp ugt i64 %2, 0, !dbg !257
  br i1 %cmp, label %while.body, label %while.end, !dbg !255

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !258
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !258
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !258
  %4 = load i8, i8* %3, align 1, !dbg !259
  %5 = load i8*, i8** %dest, align 8, !dbg !260
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !260
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !260
  store i8 %4, i8* %5, align 1, !dbg !261
  br label %while.cond, !dbg !255, !llvm.loop !262

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !263
  ret i8* %6, !dbg !264
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* %dst, i8* %src, i64 %count) #0 !dbg !265 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !267, metadata !DIExpression()), !dbg !268
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !269, metadata !DIExpression()), !dbg !270
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata i8** %a, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !275
  store i8* %0, i8** %a, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i8** %b, metadata !276, metadata !DIExpression()), !dbg !277
  %1 = load i8*, i8** %src.addr, align 8, !dbg !278
  store i8* %1, i8** %b, align 8, !dbg !277
  %2 = load i8*, i8** %src.addr, align 8, !dbg !279
  %3 = load i8*, i8** %dst.addr, align 8, !dbg !281
  %cmp = icmp eq i8* %2, %3, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !284
  store i8* %4, i8** %retval, align 8, !dbg !285
  br label %return, !dbg !285

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %src.addr, align 8, !dbg !286
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !288
  %cmp1 = icmp ugt i8* %5, %6, !dbg !289
  br i1 %cmp1, label %while.cond, label %if.else, !dbg !290

while.cond:                                       ; preds = %if.end, %while.body
  %7 = load i64, i64* %count.addr, align 8, !dbg !291
  %dec = add i64 %7, -1, !dbg !291
  store i64 %dec, i64* %count.addr, align 8, !dbg !291
  %tobool = icmp ne i64 %7, 0, !dbg !293
  br i1 %tobool, label %while.body, label %if.end13, !dbg !293

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %b, align 8, !dbg !294
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !294
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !294
  %9 = load i8, i8* %8, align 1, !dbg !295
  %10 = load i8*, i8** %a, align 8, !dbg !296
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !296
  store i8* %incdec.ptr3, i8** %a, align 8, !dbg !296
  store i8 %9, i8* %10, align 1, !dbg !297
  br label %while.cond, !dbg !293, !llvm.loop !298

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %count.addr, align 8, !dbg !299
  %sub = sub i64 %11, 1, !dbg !301
  %12 = load i8*, i8** %a, align 8, !dbg !302
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub, !dbg !302
  store i8* %add.ptr, i8** %a, align 8, !dbg !302
  %13 = load i64, i64* %count.addr, align 8, !dbg !303
  %sub4 = sub i64 %13, 1, !dbg !304
  %14 = load i8*, i8** %b, align 8, !dbg !305
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 %sub4, !dbg !305
  store i8* %add.ptr5, i8** %b, align 8, !dbg !305
  br label %while.cond6, !dbg !306

while.cond6:                                      ; preds = %while.body9, %if.else
  %15 = load i64, i64* %count.addr, align 8, !dbg !307
  %dec7 = add i64 %15, -1, !dbg !307
  store i64 %dec7, i64* %count.addr, align 8, !dbg !307
  %tobool8 = icmp ne i64 %15, 0, !dbg !306
  br i1 %tobool8, label %while.body9, label %if.end13, !dbg !306

while.body9:                                      ; preds = %while.cond6
  %16 = load i8*, i8** %b, align 8, !dbg !308
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 -1, !dbg !308
  store i8* %incdec.ptr10, i8** %b, align 8, !dbg !308
  %17 = load i8, i8* %16, align 1, !dbg !309
  %18 = load i8*, i8** %a, align 8, !dbg !310
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !310
  store i8* %incdec.ptr11, i8** %a, align 8, !dbg !310
  store i8 %17, i8* %18, align 1, !dbg !311
  br label %while.cond6, !dbg !306, !llvm.loop !312

if.end13:                                         ; preds = %while.cond6, %while.cond
  %19 = load i8*, i8** %dst.addr, align 8, !dbg !313
  store i8* %19, i8** %retval, align 8, !dbg !314
  br label %return, !dbg !314

return:                                           ; preds = %if.end13, %if.then
  %20 = load i8*, i8** %retval, align 8, !dbg !315
  ret i8* %20, !dbg !315
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12, !12, !12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "code.c", directory: "/results/sort-1/klee")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memmove.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!13 = distinct !DISubprogram(name: "bubble_sort", scope: !1, file: !1, line: 21, type: !14, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !18}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "array", arg: 1, scope: !13, file: !1, line: 21, type: !16)
!20 = !DILocation(line: 21, column: 23, scope: !13)
!21 = !DILocalVariable(name: "nelem", arg: 2, scope: !13, file: !1, line: 21, type: !18)
!22 = !DILocation(line: 21, column: 39, scope: !13)
!23 = !DILocalVariable(name: "done", scope: !24, file: !1, line: 23, type: !17)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 22, column: 12)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 22, column: 3)
!26 = distinct !DILexicalBlock(scope: !13, file: !1, line: 22, column: 3)
!27 = !DILocation(line: 23, column: 9, scope: !24)
!28 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 25, type: !18)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 25, column: 5)
!30 = !DILocation(line: 25, column: 19, scope: !29)
!31 = !DILocation(line: 25, column: 10, scope: !29)
!32 = !DILocation(line: 25, column: 26, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 25, column: 5)
!34 = !DILocation(line: 25, column: 28, scope: !33)
!35 = !DILocation(line: 25, column: 34, scope: !33)
!36 = !DILocation(line: 25, column: 32, scope: !33)
!37 = !DILocation(line: 25, column: 5, scope: !29)
!38 = !DILocation(line: 26, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 26, column: 11)
!40 = distinct !DILexicalBlock(scope: !33, file: !1, line: 25, column: 46)
!41 = !DILocation(line: 26, column: 17, scope: !39)
!42 = !DILocation(line: 26, column: 18, scope: !39)
!43 = !DILocation(line: 26, column: 24, scope: !39)
!44 = !DILocation(line: 26, column: 30, scope: !39)
!45 = !DILocation(line: 26, column: 22, scope: !39)
!46 = !DILocation(line: 26, column: 11, scope: !40)
!47 = !DILocalVariable(name: "t", scope: !48, file: !1, line: 27, type: !17)
!48 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 34)
!49 = !DILocation(line: 27, column: 13, scope: !48)
!50 = !DILocation(line: 27, column: 17, scope: !48)
!51 = !DILocation(line: 27, column: 23, scope: !48)
!52 = !DILocation(line: 27, column: 25, scope: !48)
!53 = !DILocation(line: 28, column: 24, scope: !48)
!54 = !DILocation(line: 28, column: 30, scope: !48)
!55 = !DILocation(line: 28, column: 9, scope: !48)
!56 = !DILocation(line: 28, column: 15, scope: !48)
!57 = !DILocation(line: 28, column: 17, scope: !48)
!58 = !DILocation(line: 28, column: 22, scope: !48)
!59 = !DILocation(line: 29, column: 20, scope: !48)
!60 = !DILocation(line: 29, column: 9, scope: !48)
!61 = !DILocation(line: 29, column: 15, scope: !48)
!62 = !DILocation(line: 29, column: 18, scope: !48)
!63 = !DILocation(line: 30, column: 14, scope: !48)
!64 = !DILocation(line: 31, column: 7, scope: !48)
!65 = !DILocation(line: 25, column: 41, scope: !33)
!66 = !DILocation(line: 25, column: 5, scope: !33)
!67 = distinct !{!67, !37, !68, !69}
!68 = !DILocation(line: 32, column: 5, scope: !29)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !DILocation(line: 36, column: 1, scope: !13)
!71 = distinct !DISubprogram(name: "insertion_sort", scope: !1, file: !1, line: 38, type: !14, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DILocalVariable(name: "array", arg: 1, scope: !71, file: !1, line: 38, type: !16)
!73 = !DILocation(line: 38, column: 26, scope: !71)
!74 = !DILocalVariable(name: "nelem", arg: 2, scope: !71, file: !1, line: 38, type: !18)
!75 = !DILocation(line: 38, column: 42, scope: !71)
!76 = !DILocalVariable(name: "temp", scope: !71, file: !1, line: 39, type: !16)
!77 = !DILocation(line: 39, column: 8, scope: !71)
!78 = !DILocation(line: 39, column: 38, scope: !71)
!79 = !DILocation(line: 39, column: 36, scope: !71)
!80 = !DILocation(line: 39, column: 15, scope: !71)
!81 = !DILocalVariable(name: "i", scope: !82, file: !1, line: 41, type: !18)
!82 = distinct !DILexicalBlock(scope: !71, file: !1, line: 41, column: 3)
!83 = !DILocation(line: 41, column: 17, scope: !82)
!84 = !DILocation(line: 41, column: 8, scope: !82)
!85 = !DILocation(line: 41, column: 24, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 41, column: 3)
!87 = !DILocation(line: 41, column: 29, scope: !86)
!88 = !DILocation(line: 41, column: 26, scope: !86)
!89 = !DILocation(line: 41, column: 3, scope: !82)
!90 = !DILocation(line: 42, column: 20, scope: !86)
!91 = !DILocation(line: 42, column: 26, scope: !86)
!92 = !DILocation(line: 42, column: 29, scope: !86)
!93 = !DILocation(line: 42, column: 35, scope: !86)
!94 = !DILocation(line: 42, column: 5, scope: !86)
!95 = !DILocation(line: 41, column: 36, scope: !86)
!96 = !DILocation(line: 41, column: 3, scope: !86)
!97 = distinct !{!97, !89, !98, !69}
!98 = !DILocation(line: 42, column: 37, scope: !82)
!99 = !DILocation(line: 44, column: 10, scope: !71)
!100 = !DILocation(line: 44, column: 3, scope: !71)
!101 = !DILocation(line: 44, column: 17, scope: !71)
!102 = !DILocation(line: 44, column: 40, scope: !71)
!103 = !DILocation(line: 44, column: 38, scope: !71)
!104 = !DILocation(line: 45, column: 8, scope: !71)
!105 = !DILocation(line: 45, column: 3, scope: !71)
!106 = !DILocation(line: 46, column: 1, scope: !71)
!107 = distinct !DISubprogram(name: "insert_ordered", scope: !1, file: !1, line: 8, type: !108, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !16, !18, !17}
!110 = !DILocalVariable(name: "array", arg: 1, scope: !107, file: !1, line: 8, type: !16)
!111 = !DILocation(line: 8, column: 33, scope: !107)
!112 = !DILocalVariable(name: "nelem", arg: 2, scope: !107, file: !1, line: 8, type: !18)
!113 = !DILocation(line: 8, column: 49, scope: !107)
!114 = !DILocalVariable(name: "item", arg: 3, scope: !107, file: !1, line: 8, type: !17)
!115 = !DILocation(line: 8, column: 60, scope: !107)
!116 = !DILocalVariable(name: "i", scope: !107, file: !1, line: 9, type: !18)
!117 = !DILocation(line: 9, column: 12, scope: !107)
!118 = !DILocation(line: 11, column: 3, scope: !107)
!119 = !DILocation(line: 11, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 11, column: 3)
!121 = distinct !DILexicalBlock(scope: !107, file: !1, line: 11, column: 3)
!122 = !DILocation(line: 11, column: 15, scope: !120)
!123 = !DILocation(line: 11, column: 12, scope: !120)
!124 = !DILocation(line: 11, column: 3, scope: !121)
!125 = !DILocation(line: 12, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 12, column: 9)
!127 = distinct !DILexicalBlock(scope: !120, file: !1, line: 11, column: 27)
!128 = !DILocation(line: 12, column: 16, scope: !126)
!129 = !DILocation(line: 12, column: 22, scope: !126)
!130 = !DILocation(line: 12, column: 14, scope: !126)
!131 = !DILocation(line: 12, column: 9, scope: !127)
!132 = !DILocation(line: 13, column: 16, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !1, line: 12, column: 26)
!134 = !DILocation(line: 13, column: 22, scope: !133)
!135 = !DILocation(line: 13, column: 23, scope: !133)
!136 = !DILocation(line: 13, column: 7, scope: !133)
!137 = !DILocation(line: 13, column: 29, scope: !133)
!138 = !DILocation(line: 13, column: 35, scope: !133)
!139 = !DILocation(line: 13, column: 57, scope: !133)
!140 = !DILocation(line: 13, column: 65, scope: !133)
!141 = !DILocation(line: 13, column: 63, scope: !133)
!142 = !DILocation(line: 13, column: 56, scope: !133)
!143 = !DILocation(line: 13, column: 54, scope: !133)
!144 = !DILocation(line: 14, column: 7, scope: !133)
!145 = !DILocation(line: 11, column: 22, scope: !120)
!146 = !DILocation(line: 11, column: 3, scope: !120)
!147 = distinct !{!147, !124, !148, !69}
!148 = !DILocation(line: 16, column: 3, scope: !121)
!149 = !DILocation(line: 18, column: 14, scope: !107)
!150 = !DILocation(line: 18, column: 3, scope: !107)
!151 = !DILocation(line: 18, column: 9, scope: !107)
!152 = !DILocation(line: 18, column: 12, scope: !107)
!153 = !DILocation(line: 19, column: 1, scope: !107)
!154 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 48, type: !14, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!155 = !DILocalVariable(name: "array", arg: 1, scope: !154, file: !1, line: 48, type: !16)
!156 = !DILocation(line: 48, column: 16, scope: !154)
!157 = !DILocalVariable(name: "nelem", arg: 2, scope: !154, file: !1, line: 48, type: !18)
!158 = !DILocation(line: 48, column: 32, scope: !154)
!159 = !DILocalVariable(name: "temp1", scope: !154, file: !1, line: 49, type: !16)
!160 = !DILocation(line: 49, column: 8, scope: !154)
!161 = !DILocation(line: 49, column: 40, scope: !154)
!162 = !DILocation(line: 49, column: 38, scope: !154)
!163 = !DILocation(line: 49, column: 16, scope: !154)
!164 = !DILocalVariable(name: "temp2", scope: !154, file: !1, line: 50, type: !16)
!165 = !DILocation(line: 50, column: 8, scope: !154)
!166 = !DILocation(line: 50, column: 40, scope: !154)
!167 = !DILocation(line: 50, column: 38, scope: !154)
!168 = !DILocation(line: 50, column: 16, scope: !154)
!169 = !DILocation(line: 53, column: 10, scope: !154)
!170 = !DILocation(line: 53, column: 20, scope: !154)
!171 = !DILocation(line: 53, column: 30, scope: !154)
!172 = !DILocation(line: 53, column: 40, scope: !154)
!173 = !DILocation(line: 52, column: 3, scope: !154)
!174 = !DILocation(line: 55, column: 10, scope: !154)
!175 = !DILocation(line: 55, column: 3, scope: !154)
!176 = !DILocation(line: 55, column: 17, scope: !154)
!177 = !DILocation(line: 56, column: 10, scope: !154)
!178 = !DILocation(line: 56, column: 3, scope: !154)
!179 = !DILocation(line: 56, column: 17, scope: !154)
!180 = !DILocation(line: 58, column: 18, scope: !154)
!181 = !DILocation(line: 58, column: 3, scope: !154)
!182 = !DILocation(line: 59, column: 15, scope: !154)
!183 = !DILocation(line: 59, column: 3, scope: !154)
!184 = !DILocation(line: 62, column: 10, scope: !154)
!185 = !DILocation(line: 62, column: 20, scope: !154)
!186 = !DILocation(line: 62, column: 30, scope: !154)
!187 = !DILocation(line: 62, column: 40, scope: !154)
!188 = !DILocation(line: 61, column: 3, scope: !154)
!189 = !DILocation(line: 65, column: 10, scope: !154)
!190 = !DILocation(line: 65, column: 20, scope: !154)
!191 = !DILocation(line: 65, column: 30, scope: !154)
!192 = !DILocation(line: 65, column: 40, scope: !154)
!193 = !DILocation(line: 64, column: 3, scope: !154)
!194 = !DILocalVariable(name: "i", scope: !195, file: !1, line: 67, type: !18)
!195 = distinct !DILexicalBlock(scope: !154, file: !1, line: 67, column: 3)
!196 = !DILocation(line: 67, column: 17, scope: !195)
!197 = !DILocation(line: 67, column: 8, scope: !195)
!198 = !DILocation(line: 67, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 67, column: 3)
!200 = !DILocation(line: 67, column: 29, scope: !199)
!201 = !DILocation(line: 67, column: 26, scope: !199)
!202 = !DILocation(line: 67, column: 3, scope: !195)
!203 = !DILocation(line: 68, column: 5, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 68, column: 5)
!205 = distinct !DILexicalBlock(scope: !199, file: !1, line: 68, column: 5)
!206 = !DILocation(line: 68, column: 5, scope: !205)
!207 = !DILocation(line: 67, column: 36, scope: !199)
!208 = !DILocation(line: 67, column: 3, scope: !199)
!209 = distinct !{!209, !202, !210, !69}
!210 = !DILocation(line: 68, column: 5, scope: !195)
!211 = !DILocation(line: 70, column: 8, scope: !154)
!212 = !DILocation(line: 70, column: 3, scope: !154)
!213 = !DILocation(line: 71, column: 8, scope: !154)
!214 = !DILocation(line: 71, column: 3, scope: !154)
!215 = !DILocation(line: 72, column: 1, scope: !154)
!216 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !217, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!217 = !DISubroutineType(types: !218)
!218 = !{!17}
!219 = !DILocalVariable(name: "input", scope: !216, file: !1, line: 75, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 4)
!223 = !DILocation(line: 75, column: 7, scope: !216)
!224 = !DILocation(line: 77, column: 22, scope: !216)
!225 = !DILocation(line: 77, column: 3, scope: !216)
!226 = !DILocation(line: 78, column: 8, scope: !216)
!227 = !DILocation(line: 78, column: 3, scope: !216)
!228 = !DILocation(line: 80, column: 3, scope: !216)
!229 = distinct !DISubprogram(name: "memcpy", scope: !230, file: !230, line: 12, type: !231, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!230 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !233, !234, !236}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !237, line: 46, baseType: !238)
!237 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!238 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!239 = !DILocalVariable(name: "destaddr", arg: 1, scope: !229, file: !230, line: 12, type: !233)
!240 = !DILocation(line: 12, column: 20, scope: !229)
!241 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !229, file: !230, line: 12, type: !234)
!242 = !DILocation(line: 12, column: 42, scope: !229)
!243 = !DILocalVariable(name: "len", arg: 3, scope: !229, file: !230, line: 12, type: !236)
!244 = !DILocation(line: 12, column: 58, scope: !229)
!245 = !DILocalVariable(name: "dest", scope: !229, file: !230, line: 13, type: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!248 = !DILocation(line: 13, column: 9, scope: !229)
!249 = !DILocation(line: 13, column: 16, scope: !229)
!250 = !DILocalVariable(name: "src", scope: !229, file: !230, line: 14, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!253 = !DILocation(line: 14, column: 15, scope: !229)
!254 = !DILocation(line: 14, column: 21, scope: !229)
!255 = !DILocation(line: 16, column: 3, scope: !229)
!256 = !DILocation(line: 16, column: 13, scope: !229)
!257 = !DILocation(line: 16, column: 16, scope: !229)
!258 = !DILocation(line: 17, column: 19, scope: !229)
!259 = !DILocation(line: 17, column: 15, scope: !229)
!260 = !DILocation(line: 17, column: 10, scope: !229)
!261 = !DILocation(line: 17, column: 13, scope: !229)
!262 = distinct !{!262, !255, !258, !69}
!263 = !DILocation(line: 18, column: 10, scope: !229)
!264 = !DILocation(line: 18, column: 3, scope: !229)
!265 = distinct !DISubprogram(name: "memmove", scope: !266, file: !266, line: 12, type: !231, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!266 = !DIFile(filename: "klee_src/runtime/Freestanding/memmove.c", directory: "/tmp")
!267 = !DILocalVariable(name: "dst", arg: 1, scope: !265, file: !266, line: 12, type: !233)
!268 = !DILocation(line: 12, column: 21, scope: !265)
!269 = !DILocalVariable(name: "src", arg: 2, scope: !265, file: !266, line: 12, type: !234)
!270 = !DILocation(line: 12, column: 38, scope: !265)
!271 = !DILocalVariable(name: "count", arg: 3, scope: !265, file: !266, line: 12, type: !236)
!272 = !DILocation(line: 12, column: 50, scope: !265)
!273 = !DILocalVariable(name: "a", scope: !265, file: !266, line: 13, type: !246)
!274 = !DILocation(line: 13, column: 9, scope: !265)
!275 = !DILocation(line: 13, column: 13, scope: !265)
!276 = !DILocalVariable(name: "b", scope: !265, file: !266, line: 14, type: !251)
!277 = !DILocation(line: 14, column: 15, scope: !265)
!278 = !DILocation(line: 14, column: 19, scope: !265)
!279 = !DILocation(line: 16, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !265, file: !266, line: 16, column: 7)
!281 = !DILocation(line: 16, column: 14, scope: !280)
!282 = !DILocation(line: 16, column: 11, scope: !280)
!283 = !DILocation(line: 16, column: 7, scope: !265)
!284 = !DILocation(line: 17, column: 12, scope: !280)
!285 = !DILocation(line: 17, column: 5, scope: !280)
!286 = !DILocation(line: 19, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !265, file: !266, line: 19, column: 7)
!288 = !DILocation(line: 19, column: 13, scope: !287)
!289 = !DILocation(line: 19, column: 11, scope: !287)
!290 = !DILocation(line: 19, column: 7, scope: !265)
!291 = !DILocation(line: 20, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !266, line: 19, column: 18)
!293 = !DILocation(line: 20, column: 5, scope: !292)
!294 = !DILocation(line: 21, column: 16, scope: !292)
!295 = !DILocation(line: 21, column: 14, scope: !292)
!296 = !DILocation(line: 21, column: 9, scope: !292)
!297 = !DILocation(line: 21, column: 12, scope: !292)
!298 = distinct !{!298, !293, !294, !69}
!299 = !DILocation(line: 23, column: 10, scope: !300)
!300 = distinct !DILexicalBlock(scope: !287, file: !266, line: 22, column: 10)
!301 = !DILocation(line: 23, column: 16, scope: !300)
!302 = !DILocation(line: 23, column: 7, scope: !300)
!303 = !DILocation(line: 24, column: 10, scope: !300)
!304 = !DILocation(line: 24, column: 16, scope: !300)
!305 = !DILocation(line: 24, column: 7, scope: !300)
!306 = !DILocation(line: 25, column: 5, scope: !300)
!307 = !DILocation(line: 25, column: 17, scope: !300)
!308 = !DILocation(line: 26, column: 16, scope: !300)
!309 = !DILocation(line: 26, column: 14, scope: !300)
!310 = !DILocation(line: 26, column: 9, scope: !300)
!311 = !DILocation(line: 26, column: 12, scope: !300)
!312 = distinct !{!312, !306, !308, !69}
!313 = !DILocation(line: 29, column: 10, scope: !265)
!314 = !DILocation(line: 29, column: 3, scope: !265)
!315 = !DILocation(line: 30, column: 1, scope: !265)
