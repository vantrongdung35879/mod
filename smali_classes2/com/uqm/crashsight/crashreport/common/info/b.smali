.class public final Lcom/uqm/crashsight/crashreport/common/info/b;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static A:I = 0x1


# instance fields
.field private B:Ljava/lang/String;

.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:I

.field public y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

.field public z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;)V
    .locals 4

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 35
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 36
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-wide/16 v2, 0x0

    .line 37
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->B:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 52
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 54
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 56
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 285
    sget v2, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    .line 286
    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    .line 288
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 290
    const-string v1, "[attach] upRecord.csZipFilePath is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b()V

    return-void

    .line 294
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    iget v3, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    if-eq v3, v1, :cond_2

    .line 296
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 297
    :cond_1
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 298
    iget v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "[attach] nextOperation[%d] !zipFile.exists() || !zipFile.canRead()"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b()V

    return-void

    .line 303
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/c;->i()Lcom/uqm/crashsight/proguard/r;

    move-result-object v1

    if-nez v1, :cond_3

    .line 306
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 307
    const-string p1, "[attach] CrashAttachBean failed: token is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 310
    :cond_3
    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/r;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 311
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 312
    const-string p1, "[attach] CrashAttachBean failed: token invalid"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 316
    :cond_4
    const-string v2, "[attach] init attach bean with up record"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c()V

    .line 319
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/r;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 320
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/r;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 321
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/r;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 322
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/r;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 323
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 324
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    .line 325
    iget-wide v2, v1, Lcom/uqm/crashsight/proguard/r;->h:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 326
    iget-wide v2, v1, Lcom/uqm/crashsight/proguard/r;->i:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    .line 327
    iget v2, v1, Lcom/uqm/crashsight/proguard/r;->k:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 328
    iget-wide v1, v1, Lcom/uqm/crashsight/proguard/r;->l:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 331
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 333
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 334
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 335
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 336
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    .line 337
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:[Ljava/lang/String;

    .line 338
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    .line 342
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 343
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    .line 344
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:J

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    .line 345
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget p1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    iput p1, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    const/16 v3, 0x10

    .line 3368
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 350
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uriPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 354
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 355
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 35
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 36
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-wide/16 v2, 0x0

    .line 37
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->B:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 52
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 54
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 56
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 208
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const-string p1, "[attach] cachedFilename is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->i()Lcom/uqm/crashsight/proguard/r;

    move-result-object v3

    if-nez v3, :cond_1

    .line 215
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 216
    const-string p1, "[attach] CrashAttachBean failed: token is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 219
    :cond_1
    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/r;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 220
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 221
    const-string p1, "[attach] CrashAttachBean failed: token invalid"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 224
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 226
    const-string p1, "[attach] CrashAttachBean failed: cachedFilename is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 230
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[attach] upload cached attach file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    sget v4, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    .line 232
    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    .line 233
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v1, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    .line 234
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 235
    iget-object v1, v3, Lcom/uqm/crashsight/proguard/r;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 236
    iget-object v1, v3, Lcom/uqm/crashsight/proguard/r;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 237
    iget-object v1, v3, Lcom/uqm/crashsight/proguard/r;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 238
    iget-object v1, v3, Lcom/uqm/crashsight/proguard/r;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 239
    iget-object v1, v3, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 240
    iget-object v1, v3, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    .line 241
    iget-wide v4, v3, Lcom/uqm/crashsight/proguard/r;->h:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 242
    iget-wide v4, v3, Lcom/uqm/crashsight/proguard/r;->i:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    .line 243
    iget v1, v3, Lcom/uqm/crashsight/proguard/r;->k:I

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 244
    iget-wide v3, v3, Lcom/uqm/crashsight/proguard/r;->l:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 253
    :cond_4
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    .line 258
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 259
    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[attach]cachedFilename invalid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_5
    const/4 p1, 0x2

    .line 263
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    const/16 v3, 0x20

    .line 265
    invoke-static {p1, v3}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    const/4 p1, 0x3

    .line 266
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    const/4 p1, 0x4

    .line 267
    aget-object v3, v1, p1

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uriPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 275
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    return-void

    .line 249
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[attach]cached path not exists,or can not read:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 250
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 62
    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 35
    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 36
    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-wide/16 v3, 0x0

    .line 37
    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 39
    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->B:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v2, 0x1

    .line 51
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 52
    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 54
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 56
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 64
    :try_start_0
    sget v2, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    .line 66
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 68
    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/common/info/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->B:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 71
    const-string v2, "\\|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:[Ljava/lang/String;

    .line 72
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/crashreport/common/info/b;->a([Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    .line 75
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:[Ljava/lang/String;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 76
    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "userSetFilePath contains "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    .line 79
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 81
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->m:Ljava/lang/String;

    .line 82
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->n:Ljava/lang/String;

    .line 83
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    .line 85
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 86
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    .line 87
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:[Ljava/lang/String;

    .line 88
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:[Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:[Ljava/lang/String;

    .line 89
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/c;->i()Lcom/uqm/crashsight/proguard/r;

    move-result-object p2

    if-nez p2, :cond_1

    .line 94
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 95
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p2, "token is null"

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 96
    const-string p1, "[attach] CrashAttachBean failed: token is null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/r;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 101
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p2, "token invalid"

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 102
    const-string p1, "[attach] CrashAttachBean failed: token invalid"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 105
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 107
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p2, "recordUid is empty"

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 108
    const-string p1, "[attach] CrashAttachBean failed: recordUid is empty"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 111
    :cond_3
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/r;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 112
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/r;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 113
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/r;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 114
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/r;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 115
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 116
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    .line 117
    iget-wide v2, p2, Lcom/uqm/crashsight/proguard/r;->h:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 118
    iget-wide v2, p2, Lcom/uqm/crashsight/proguard/r;->i:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    .line 119
    iget p1, p2, Lcom/uqm/crashsight/proguard/r;->k:I

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 120
    iget-wide p1, p2, Lcom/uqm/crashsight/proguard/r;->l:J

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    const/16 v2, 0x10

    .line 1368
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".zip"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "uriPath: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "https://"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 126
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 128
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 129
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 130
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 137
    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 35
    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 36
    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-wide/16 v3, 0x0

    .line 37
    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 39
    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->B:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v2, 0x1

    .line 51
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 52
    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 54
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 56
    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 139
    :try_start_0
    sget v2, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/uqm/crashsight/crashreport/common/info/b;->A:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    const/4 v2, 0x2

    .line 140
    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    .line 142
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    .line 143
    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->B:Ljava/lang/String;

    .line 145
    invoke-static {p3}, Lcom/uqm/crashsight/crashreport/common/info/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    .line 146
    const-string p2, "\\|"

    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:[Ljava/lang/String;

    .line 147
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/crashreport/common/info/b;->a([Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    .line 150
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    .line 151
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 153
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->m:Ljava/lang/String;

    .line 154
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->n:Ljava/lang/String;

    .line 155
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    .line 156
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    .line 157
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 158
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, p4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    .line 159
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:[Ljava/lang/String;

    .line 160
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:[Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:[Ljava/lang/String;

    .line 161
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object p2

    .line 164
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/c;->i()Lcom/uqm/crashsight/proguard/r;

    move-result-object p2

    if-nez p2, :cond_0

    .line 166
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 167
    const-string p1, "[attach] CrashAttachBean failed: token is null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 170
    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/r;->b()Z

    move-result p4

    if-nez p4, :cond_1

    .line 171
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 172
    const-string p1, "[attach] CrashAttachBean failed: token invalid"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 175
    :cond_1
    invoke-static {p3}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 176
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    .line 177
    const-string p1, "[attach] CrashAttachBean failed: recordUid is empty"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 180
    :cond_2
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    .line 181
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 182
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/r;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 183
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/r;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    .line 184
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    .line 185
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    .line 186
    iget-wide p3, p2, Lcom/uqm/crashsight/proguard/r;->h:J

    iput-wide p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    .line 187
    iget-wide p3, p2, Lcom/uqm/crashsight/proguard/r;->i:J

    iput-wide p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    .line 188
    iget p3, p2, Lcom/uqm/crashsight/proguard/r;->k:I

    iput p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    .line 189
    iget-wide p2, p2, Lcom/uqm/crashsight/proguard/r;->l:J

    iput-wide p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    const/16 p4, 0x10

    .line 2368
    invoke-virtual {p3, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "uriPath: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "https://"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 194
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 197
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 198
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 359
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 360
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/String;)V
    .locals 9

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cs_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    .line 381
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    .line 382
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 383
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 384
    aget-object v5, p1, v4

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 386
    aget-object v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 387
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    const-string v8, "[attach] attachment file extension:[%s]"

    invoke-static {v8, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    goto :goto_1

    .line 390
    :cond_0
    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 392
    :goto_1
    aget-object v5, p1, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 394
    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:[Ljava/lang/String;

    aget-object v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    goto :goto_2

    .line 396
    :cond_1
    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:[Ljava/lang/String;

    aget-object v6, p1, v4

    aput-object v6, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 364
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
