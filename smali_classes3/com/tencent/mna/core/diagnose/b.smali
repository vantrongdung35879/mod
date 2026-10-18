.class Lcom/tencent/mna/core/diagnose/b;
.super Ljava/lang/Object;
.source "DiagnoseRecord.java"


# instance fields
.field protected A:J

.field protected B:J

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:Lcom/tencent/mna/KartinRet;

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field final a:Ljava/lang/String;

.field a0:J

.field private b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field private f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field protected n:I

.field private o:I

.field private p:I

.field private q:I

.field protected r:J

.field private s:J

.field protected t:J

.field private u:J

.field protected v:J

.field protected w:J

.field protected x:J

.field protected y:J

.field protected z:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->h:I

    .line 16
    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->n:I

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->r:J

    .line 29
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    .line 30
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->t:J

    .line 31
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    .line 34
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    .line 35
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    .line 36
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    .line 37
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    .line 40
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->z:J

    .line 41
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->A:J

    .line 44
    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->B:J

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->E:I

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->F:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->G:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->H:Ljava/lang/String;

    .line 60
    iput-boolean v0, p0, Lcom/tencent/mna/core/diagnose/b;->J:Z

    .line 73
    const-string v0, "-1"

    iput-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->U:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/b;->I:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    .line 88
    new-instance p1, Lcom/tencent/mna/KartinRet;

    invoke-direct {p1, p2}, Lcom/tencent/mna/KartinRet;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/mna/core/diagnose/b;->a0:J

    return-void
.end method

.method private a()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 363
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 364
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 365
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 366
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 367
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    .line 369
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 370
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 371
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne p1, v0, :cond_5

    .line 241
    iget p1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->W:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    .line 242
    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->Y:I

    .line 245
    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    if-lt v0, p1, :cond_1

    if-lez p1, :cond_1

    .line 246
    invoke-static {v1, v2}, Lcom/tencent/mna/v;->a(II)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    if-gez p1, :cond_0

    .line 248
    iget p1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    .line 250
    :cond_0
    iput v3, p0, Lcom/tencent/mna/core/diagnose/b;->E:I

    .line 253
    :cond_1
    iget p1, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    const/16 v1, 0xa

    if-lt p1, v0, :cond_3

    if-lez v0, :cond_3

    .line 254
    invoke-static {v3, v1}, Lcom/tencent/mna/v;->a(II)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    if-gez v0, :cond_2

    .line 256
    iput v3, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    .line 258
    :cond_2
    iput v3, p0, Lcom/tencent/mna/core/diagnose/b;->E:I

    .line 261
    :cond_3
    iget p1, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    if-lt p1, v0, :cond_7

    if-lez v0, :cond_7

    .line 262
    invoke-static {v1, v2}, Lcom/tencent/mna/v;->a(II)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    if-gez v0, :cond_4

    .line 264
    iput v3, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    .line 266
    :cond_4
    iput v3, p0, Lcom/tencent/mna/core/diagnose/b;->E:I

    goto :goto_0

    .line 271
    :cond_5
    iget p1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->X:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    .line 272
    iput v0, p0, Lcom/tencent/mna/core/diagnose/b;->Y:I

    .line 275
    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    if-lt v0, p1, :cond_7

    if-lez p1, :cond_7

    .line 276
    invoke-static {v1, v2}, Lcom/tencent/mna/v;->a(II)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    if-gez p1, :cond_6

    .line 278
    iget p1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    .line 280
    :cond_6
    iput v3, p0, Lcom/tencent/mna/core/diagnose/b;->E:I

    .line 283
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DiagnoseRecord correctDiagnoseResultStats mJumpRouter:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string v0, ", mJumpEdge:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v0, ", mJumpDirect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string v0, ", mOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/mna/core/diagnose/b;->Y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(IIILcom/tencent/mna/base/utils/WifiUtil$b;Lcom/tencent/mna/w1$c;IILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 161
    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    if-lez p3, :cond_0

    if-le p3, p2, :cond_0

    .line 163
    iput p3, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    .line 165
    :cond_0
    iput p3, p0, Lcom/tencent/mna/core/diagnose/b;->R:I

    .line 166
    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->S:I

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DiagnoseRecord updateDiagnoseResultStats ping: mJumpRouter:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 170
    iget p2, p4, Lcom/tencent/mna/base/utils/WifiUtil$b;->a:I

    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->n:I

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DiagnoseRecord updateDiagnoseResultStats terminal: mJumpTerminal:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/tencent/mna/core/diagnose/b;->n:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 176
    iget p2, p5, Lcom/tencent/mna/w1$c;->d:I

    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->D:I

    .line 177
    iget-object p2, p5, Lcom/tencent/mna/w1$c;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/b;->G:Ljava/lang/String;

    .line 178
    iget-object p2, p5, Lcom/tencent/mna/w1$c;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/b;->H:Ljava/lang/String;

    .line 179
    iget-wide p2, p5, Lcom/tencent/mna/w1$c;->a:J

    iput-wide p2, p0, Lcom/tencent/mna/core/diagnose/b;->z:J

    .line 180
    iget-wide p2, p5, Lcom/tencent/mna/w1$c;->b:J

    iput-wide p2, p0, Lcom/tencent/mna/core/diagnose/b;->A:J

    .line 181
    iget-wide p2, p5, Lcom/tencent/mna/w1$c;->c:J

    iput-wide p2, p0, Lcom/tencent/mna/core/diagnose/b;->B:J

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DiagnoseRecord updateDiagnoseResultStats direct: mRealDirect:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget p3, p0, Lcom/tencent/mna/core/diagnose/b;->D:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string p3, ", mDirectDelayStat:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/mna/core/diagnose/b;->G:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string p3, ", mPushLossStat:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/mna/core/diagnose/b;->H:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string p3, ", mDirectSndDrops:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/tencent/mna/core/diagnose/b;->z:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string p3, ", mDirectSndJumps:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/tencent/mna/core/diagnose/b;->A:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    const-string p3, ", mDirectPushDrops:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/tencent/mna/core/diagnose/b;->B:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {p2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 200
    :cond_2
    iput p9, p0, Lcom/tencent/mna/core/diagnose/b;->T:I

    .line 201
    iput-object p10, p0, Lcom/tencent/mna/core/diagnose/b;->U:Ljava/lang/String;

    if-gtz p6, :cond_3

    const/4 p2, -0x2

    .line 205
    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->C:I

    goto :goto_0

    .line 207
    :cond_3
    iput p7, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    iput p7, p0, Lcom/tencent/mna/core/diagnose/b;->C:I

    .line 209
    :goto_0
    iput-object p8, p0, Lcom/tencent/mna/core/diagnose/b;->F:Ljava/lang/String;

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DiagnoseRecord updateDiagnoseResultStats export: mRealExport:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/tencent/mna/core/diagnose/b;->C:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mWlanNextHopIp:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/mna/core/diagnose/b;->U:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/tencent/mna/core/diagnose/b;->a(I)V

    return-void
.end method

.method private a(ILcom/tencent/mna/base/utils/WifiUtil$b;III)V
    .locals 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 216
    iget p1, p2, Lcom/tencent/mna/base/utils/WifiUtil$b;->a:I

    if-lez p1, :cond_0

    .line 217
    iget p2, p2, Lcom/tencent/mna/base/utils/WifiUtil$b;->b:I

    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 220
    :goto_0
    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    int-to-long v2, p2

    sub-long/2addr v0, v2

    int-to-long v2, p3

    sub-long/2addr v0, v2

    int-to-long v2, p5

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->t:J

    .line 221
    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    int-to-long v4, p1

    sub-long/2addr v0, v4

    int-to-long v4, p4

    sub-long/2addr v0, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->r:J

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseRecord correctSndRcvPkStats mSndPk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", getRouterInfoSndPk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string p2, ", directSndCount:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string p2, ", exportCount:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 228
    invoke-static {p3}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 234
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "DiagnoseRecord correctSndRcvPkStats mRcvPk:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->r:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, ", getRouterInfoRcvPk:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string p1, ", directRcvCount:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(ILcom/tencent/mna/c2$b;Lcom/tencent/mna/base/utils/WifiUtil$b;III)V
    .locals 6

    if-eqz p2, :cond_3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseRecord updateSndRcvPkStats "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p2}, Lcom/tencent/mna/c2;->b(Lcom/tencent/mna/c2$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lcom/tencent/mna/c2$b;->a()Lcom/tencent/mna/c2$a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 119
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->i:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    .line 121
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->j:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    .line 122
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->e:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    .line 123
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->f:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    .line 124
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->h:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    .line 125
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->d:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->q:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    .line 128
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->r:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    .line 129
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->m:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    .line 130
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->n:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    .line 131
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->p:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    .line 132
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->l:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->y:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    .line 135
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->z:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    .line 136
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->u:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    .line 137
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->v:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    .line 138
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->x:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    .line 139
    iget-wide v0, p2, Lcom/tencent/mna/c2$a;->t:J

    iput-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    .line 142
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "DiagnoseRecord updateSndRcvPkStats mSndErrs:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    const-string v0, ", mSndDrops:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, ", mRcvErrs:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    const-string v0, ", mRcvDrops:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, ", mOrigSndPk:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const-string v0, ", mOrigRcvPk:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-static {p2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/core/diagnose/b;->a(ILcom/tencent/mna/base/utils/WifiUtil$b;III)V

    :cond_3
    return-void
.end method

.method private a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget p1, p1, Lcom/tencent/mna/KartinRet;->network_star:I

    if-ge p1, p2, :cond_0

    .line 352
    invoke-static {}, Lcom/tencent/mna/o3;->a()V

    const-wide/16 p1, 0xbb8

    .line 355
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :catch_0
    invoke-static {}, Lcom/tencent/mna/o3;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    .line 361
    :goto_0
    iget-object p2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iput p1, p2, Lcom/tencent/mna/KartinRet;->wifi_num:I

    return-void
.end method

.method private a([Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 290
    new-instance v8, Lcom/tencent/mna/core/diagnose/e;

    invoke-direct/range {p0 .. p0}, Lcom/tencent/mna/core/diagnose/b;->f()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/tencent/mna/core/diagnose/e;-><init>(Ljava/util/Map;)V

    .line 292
    array-length v9, v1

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0x1

    if-ge v11, v9, :cond_1

    aget-object v14, v1, v11

    .line 293
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, "KartinRule routerRule:"

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 294
    iget-object v10, v14, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v10, v16, v12

    if-nez v10, :cond_0

    .line 295
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v9, v14, Lcom/tencent/mna/p1;->d:I

    iput v9, v1, Lcom/tencent/mna/KartinRet;->router_status:I

    .line 296
    iget-object v9, v14, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    iput-object v9, v1, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 301
    :cond_1
    :goto_1
    array-length v1, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_3

    aget-object v10, v2, v9

    .line 302
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "KartinRule terminalRule:"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 303
    iget-object v11, v10, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-nez v11, :cond_2

    .line 304
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v10, Lcom/tencent/mna/p1;->d:I

    iput v2, v1, Lcom/tencent/mna/KartinRet;->terminal_status:I

    .line 305
    iget-object v2, v10, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 310
    :cond_3
    :goto_3
    array-length v1, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v9, v3, v2

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "KartinRule directRule:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 312
    iget-object v10, v9, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-nez v14, :cond_4

    .line 313
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v9, Lcom/tencent/mna/p1;->d:I

    iput v2, v1, Lcom/tencent/mna/KartinRet;->direct_status:I

    .line 314
    iget-object v2, v9, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 319
    :cond_5
    :goto_5
    array-length v1, v4

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_7

    aget-object v3, v4, v2

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "KartinRule exportRule:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 321
    iget-object v9, v3, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v9, v12

    if-nez v11, :cond_6

    .line 322
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/p1;->d:I

    iput v2, v1, Lcom/tencent/mna/KartinRet;->export_status:I

    .line 323
    iget-object v2, v3, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 328
    :cond_7
    :goto_7
    array-length v1, v5

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_9

    aget-object v3, v5, v2

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "KartinRule networkRule:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 330
    iget-object v4, v3, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v4, v9, v12

    if-nez v4, :cond_8

    .line 331
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/p1;->d:I

    iput v2, v1, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    .line 332
    iget-object v2, v3, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    goto :goto_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 337
    :cond_9
    :goto_9
    array-length v1, v6

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_b

    aget-object v3, v6, v2

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KartinRule signalRule:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 339
    iget-object v4, v3, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v9, v4, v12

    if-nez v9, :cond_a

    .line 340
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/p1;->d:I

    iput v2, v1, Lcom/tencent/mna/KartinRet;->signal_status:I

    .line 341
    iget-object v2, v3, Lcom/tencent/mna/p1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 346
    :cond_b
    :goto_b
    array-length v1, v7

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v1, :cond_d

    aget-object v2, v7, v10

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KartinRule queryRule:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 348
    iget-object v3, v2, Lcom/tencent/mna/p1;->b:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/tencent/mna/core/diagnose/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-nez v5, :cond_c

    .line 349
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/p1;->d:I

    iput v2, v1, Lcom/tencent/mna/KartinRet;->network_star:I

    goto :goto_d

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    return-void
.end method

.method private f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 3
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "A"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "B"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "C"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "D"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->f:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "E"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "F"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->h:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "G"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "H"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->j:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "I"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->k:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "J"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->l:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "K"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->m:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "L"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->n:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "M"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->o:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "N"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->p:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "O"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->q:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "P"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "R"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->t:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "S"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "T"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "U"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "V"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "W"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->z:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "X"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->A:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-wide v1, p0, Lcom/tencent/mna/core/diagnose/b;->B:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Z"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method a(Z)Lcom/tencent/mna/KartinRet;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x2

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    if-eqz p1, :cond_0

    .line 16
    const-string p1, "Request Master Fail"

    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "Request Control Fail"

    :goto_0
    iput-object p1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    return-object v0
.end method

.method a(ZI[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;)Lcom/tencent/mna/KartinRet;
    .locals 9

    move-object v8, p0

    .line 18
    iget-object v0, v8, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 19
    const-string v1, "Success"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 20
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->c:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 21
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->d:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 22
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->g:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 23
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->h:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    .line 24
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->i:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_edge:I

    .line 25
    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 26
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->n:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 27
    iget v1, v8, Lcom/tencent/mna/core/diagnose/b;->e:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/core/diagnose/b;->a([Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/core/diagnose/b;->a(ZI)V

    .line 33
    invoke-direct {p0}, Lcom/tencent/mna/core/diagnose/b;->a()V

    .line 35
    iget-object v0, v8, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method a(II)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->c:I

    .line 14
    iput p2, p0, Lcom/tencent/mna/core/diagnose/b;->d:I

    return-void
.end method

.method a(ILcom/tencent/mna/c2$b;IILcom/tencent/mna/base/utils/WifiUtil$b;Lcom/tencent/mna/w1$c;IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/core/diagnose/b;->a(ILcom/tencent/mna/c2$b;Lcom/tencent/mna/base/utils/WifiUtil$b;III)V

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    move-object/from16 v10, p13

    .line 12
    invoke-direct/range {v0 .. v10}, Lcom/tencent/mna/core/diagnose/b;->a(IIILcom/tencent/mna/base/utils/WifiUtil$b;Lcom/tencent/mna/w1$c;IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 36
    sget-object v0, Lcom/tencent/mna/base/report/d;->DIAGNOSE:Lcom/tencent/mna/base/report/d;

    invoke-static {v0}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->I:Ljava/lang/String;

    const-string v2, "openid"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 42
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->K:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errno"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 43
    iget-boolean v1, p0, Lcom/tencent/mna/core/diagnose/b;->J:Z

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->L:Ljava/lang/String;

    const-string v2, "config"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->M:Ljava/lang/String;

    .line 45
    const-string/jumbo v3, "vipsvr"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->N:Ljava/lang/String;

    .line 46
    const-string v3, "speedip"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->O:Ljava/lang/String;

    .line 47
    const-string v3, "cdnproxy"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->P:I

    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "plat_flag"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->Q:I

    .line 49
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rproxy_flag"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->Z:I

    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arp"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->Y:I

    .line 51
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dOffset"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 55
    :cond_0
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mnaver"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    .line 56
    const-string/jumbo v3, "tag"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->flag:I

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flag"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 58
    const-string v3, "desc"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "net"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sig"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    .line 61
    const-string v3, "sc"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 62
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "router"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->router_status:I

    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rs"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    .line 64
    const-string v3, "rd"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tencent/mna/core/diagnose/b;->C:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v4, v4, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 65
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "out"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->export_status:I

    .line 66
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "es"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    .line 67
    const-string v4, "ed"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 68
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "terminal"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->terminal_status:I

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ts"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    .line 70
    const-string/jumbo v4, "td"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    .line 71
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "tproxy"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_edge:I

    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "tedge"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/core/diagnose/b;->D:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v4, v4, Lcom/tencent/mna/KartinRet;->jump_direct:I

    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "direct"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->direct_status:I

    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ds"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    .line 75
    const-string v4, "dd"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    .line 76
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "nets"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    .line 77
    const-string v4, "netd"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->network_star:I

    .line 78
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "network_star"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->wifi_num:I

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "wifinum"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 82
    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->E:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "modified"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->G:Ljava/lang/String;

    .line 83
    const-string v4, "speeddetail"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->F:Ljava/lang/String;

    .line 84
    const-string v4, "edgedetail"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->H:Ljava/lang/String;

    .line 85
    const-string v4, "pushlose"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/core/diagnose/b;->R:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/mna/core/diagnose/b;->S:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v4, "routenext"

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/core/diagnose/b;->T:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/mna/core/diagnose/b;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string/jumbo v3, "useping"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tencent/mna/core/diagnose/b;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->s:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->v:J

    .line 89
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->w:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->t:J

    .line 90
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->u:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->x:J

    .line 91
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->y:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v3, "netinfo"

    invoke-interface {v0, v3, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->z:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/mna/core/diagnose/b;->A:J

    .line 95
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/mna/core/diagnose/b;->B:J

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "directvalue"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 101
    const-string/jumbo v1, "wmac"

    invoke-interface {v0, v1, p1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 102
    const-string v1, "pcell"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "timestamp"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 110
    invoke-interface {v0}, Lcom/tencent/mna/y2;->c()V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/b;->L:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/b;->M:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/tencent/mna/core/diagnose/b;->N:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/tencent/mna/core/diagnose/b;->O:Ljava/lang/String;

    .line 5
    iput p7, p0, Lcom/tencent/mna/core/diagnose/b;->Q:I

    .line 6
    iput p6, p0, Lcom/tencent/mna/core/diagnose/b;->P:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/tencent/mna/core/diagnose/b;->J:Z

    .line 8
    iput p8, p0, Lcom/tencent/mna/core/diagnose/b;->W:I

    .line 9
    iput p9, p0, Lcom/tencent/mna/core/diagnose/b;->X:I

    .line 10
    iput p10, p0, Lcom/tencent/mna/core/diagnose/b;->Z:I

    return-void
.end method

.method b()Lcom/tencent/mna/KartinRet;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x6

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 6
    const-string v1, "Fail"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    return-object v0
.end method

.method b(I)Lcom/tencent/mna/KartinRet;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x5

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 2
    const-string v1, "2G Network"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 4
    iput p1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    return-object v0
.end method

.method c()Lcom/tencent/mna/KartinRet;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/16 v1, -0x1f5

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 3
    const-string v1, "Get DgnSpeedTester Fail"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    return-object v0
.end method

.method c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/mna/core/diagnose/b;->K:I

    return-void
.end method

.method d()Lcom/tencent/mna/KartinRet;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x4

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 2
    const-string v1, "Network Changed"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    return-object v0
.end method

.method e()Lcom/tencent/mna/KartinRet;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 2
    const-string v1, "No Network"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseRecord("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/core/diagnose/b;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/core/diagnose/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
