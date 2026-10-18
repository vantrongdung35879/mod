.class public final Lcom/uqm/crashsight/crashreport/crash/d;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/crash/d;

.field private static f:J

.field private static final g:Ljava/util/Random;

.field private static h:J

.field private static final i:Ljava/lang/Object;

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/StringBuffer;

.field private static l:Ljava/lang/String;

.field private static m:J

.field private static final n:Ljava/lang/Object;


# instance fields
.field private b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private c:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private d:Lcom/uqm/crashsight/crashreport/crash/b;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2f

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->g:Ljava/util/Random;

    const-wide/16 v0, 0x0

    .line 58
    sput-wide v0, Lcom/uqm/crashsight/crashreport/crash/d;->h:J

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->i:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->j:Ljava/util/Map;

    .line 63
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->k:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 65
    sput-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->l:Ljava/lang/String;

    .line 67
    sput-wide v0, Lcom/uqm/crashsight/crashreport/crash/d;->m:J

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->n:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    .line 92
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    .line 93
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/c;->k:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    .line 94
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->e:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object p1

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/d$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/crashreport/crash/d$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/d;)V

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->e(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 275
    iput p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    const/16 p4, 0xa

    const/4 v1, 0x0

    if-ne p2, p4, :cond_0

    .line 281
    const-string p1, "[statics] uploading log statics info, as little as possible!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 286
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    .line 287
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    .line 288
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->j()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    .line 289
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->r()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:J

    .line 290
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->q()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:J

    .line 291
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:J

    .line 292
    sget-object p4, Lcom/uqm/crashsight/proguard/z;->T:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_1

    .line 293
    sget p4, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    sget-object v2, Lcom/uqm/crashsight/crashreport/crash/c;->e:Ljava/lang/String;

    invoke-static {p4, v2}, Lcom/uqm/crashsight/proguard/v;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 296
    :cond_1
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 297
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object p4, p4, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 298
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 300
    const-string p4, ""

    if-eqz p5, :cond_2

    .line 302
    const-string v2, "\n"

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 303
    array-length v3, v2

    if-lez v3, :cond_3

    .line 304
    aget-object p4, v2, v1

    goto :goto_0

    .line 307
    :cond_2
    const-string p5, ""

    .line 310
    :cond_3
    :goto_0
    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 311
    iput-object p5, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 312
    iget-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-static {p4}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 313
    sget p4, Lcom/uqm/crashsight/crashreport/crash/c;->c:I

    .line 314
    invoke-static {p4, v1}, Lcom/uqm/crashsight/proguard/v;->a(IZ)Ljava/util/Map;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    .line 315
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object p4, p4, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    .line 316
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    .line 318
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->x()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 319
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide p4, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    .line 320
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result p1

    iput-boolean p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:Z

    .line 321
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->at:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 322
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getPthreadKeyCount()I

    move-result p1

    iput p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ah:I

    .line 326
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->r()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/uqm/crashsight/proguard/z;->aI:Lcom/uqm/crashsight/proguard/z$a;

    .line 327
    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 328
    :cond_5
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 331
    :cond_6
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ag:Ljava/lang/String;

    .line 332
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result p1

    iput p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    const/16 p1, 0x9

    if-ne p2, p1, :cond_7

    .line 334
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Ljava/util/Map;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    goto :goto_1

    .line 336
    :cond_7
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 338
    :goto_1
    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    .line 339
    sget-object p4, Lcom/uqm/crashsight/proguard/z;->aC:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    if-eqz p4, :cond_9

    .line 341
    array-length p5, p4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p5, :cond_9

    aget-object v3, p4, v2

    .line 342
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 343
    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/d;->e:Landroid/content/Context;

    invoke-static {p3}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    const/4 p3, 0x0

    if-ne p2, p1, :cond_c

    .line 350
    sget-object p2, Lcom/uqm/crashsight/proguard/z;->ao:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 351
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    .line 2338
    iget-object p2, p2, Lcom/uqm/crashsight/crashreport/common/info/a;->H:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {p2}, Lcom/uqm/crashsight/crashreport/a;->readUserLog()Ljava/lang/String;

    move-result-object p2

    .line 2339
    invoke-static {p2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    move-object p2, p3

    :cond_a
    if-eqz p2, :cond_b

    .line 352
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_b

    .line 353
    const-string p4, "com.crashsight.crashSight.oomHasLog"

    const-string p5, "1"

    invoke-interface {p6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 355
    :cond_b
    const-string p4, "com.crashsight.crashSight.oomHasLog"

    const-string p5, "0"

    invoke-interface {p6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :goto_4
    const-string p4, "crashsightlog.txt"

    invoke-static {p3, p2, p4}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    goto :goto_5

    .line 360
    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->b()[B

    move-result-object p2

    iput-object p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    .line 364
    :cond_d
    :goto_5
    iget-object p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    if-nez p2, :cond_e

    .line 365
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    :cond_e
    if-eqz p6, :cond_11

    .line 368
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p2

    const/16 p4, 0x1f4

    if-le p2, p4, :cond_10

    .line 370
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 372
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 p6, 0x0

    :goto_6
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-ge p6, p4, :cond_f

    .line 376
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p6, p6, 0x1

    goto :goto_6

    .line 379
    :cond_f
    iget-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 380
    const-string p2, "Extra info key count over limit!(500) Will upload only 500 keys."

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2, p4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 382
    :cond_10
    iget-object p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-interface {p2, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 385
    :cond_11
    :goto_7
    iput-object p7, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->af:Ljava/lang/String;

    .line 386
    sget-object p2, Lcom/uqm/crashsight/crashreport/crash/d;->n:Ljava/lang/Object;

    monitor-enter p2

    .line 387
    :try_start_0
    sget-object p4, Lcom/uqm/crashsight/proguard/z;->aB:Lcom/uqm/crashsight/proguard/z$a;

    .line 388
    invoke-virtual {p4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_13

    iget p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 p6, 0x4

    if-eq p4, p6, :cond_12

    iget p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 p6, 0x5

    if-eq p4, p6, :cond_12

    iget p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 p6, 0x6

    if-eq p4, p6, :cond_12

    iget p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 p6, 0x8

    if-eq p4, p6, :cond_12

    iget p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    .line 393
    invoke-static {p4}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b(I)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 394
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sget-wide v2, Lcom/uqm/crashsight/crashreport/crash/d;->m:J

    sub-long/2addr p6, v2

    const-wide/16 v2, 0x1388

    cmp-long p4, p6, v2

    if-lez p4, :cond_13

    const/4 p4, 0x1

    goto :goto_8

    :cond_13
    const/4 p4, 0x0

    .line 396
    :goto_8
    iget p6, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 p7, 0xc

    if-ne p6, p7, :cond_14

    .line 397
    invoke-static {}, Lcom/uqm/crashsight/proguard/ae;->b()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->al:Ljava/lang/String;

    goto :goto_9

    :cond_14
    if-eqz p4, :cond_15

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/uqm/crashsight/crashreport/crash/d;->m:J

    .line 400
    invoke-static {}, Lcom/uqm/crashsight/proguard/ae;->b()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->al:Ljava/lang/String;

    .line 402
    :cond_15
    :goto_9
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    iget p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eq p2, p1, :cond_1c

    iget p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_1c

    iget p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eq p1, p7, :cond_1c

    .line 2666
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object p1

    if-eqz p1, :cond_16

    const/16 p2, 0x3ec

    .line 2668
    invoke-virtual {p1, p2, p3, p5}, Lcom/uqm/crashsight/proguard/d;->a(ILcom/uqm/crashsight/proguard/c;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2672
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ERROR_STACK_ADD_UUID_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2676
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ERROR_STACK_ADD_UUID_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string p2, "enable"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    :goto_a
    if-eqz p1, :cond_1c

    .line 410
    :try_start_1
    sget-object p1, Lcom/uqm/crashsight/crashreport/crash/d;->k:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_17

    .line 411
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/d;->c()V

    .line 413
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "System SO infos:\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/uqm/crashsight/crashreport/crash/d;->k:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ak:Ljava/lang/String;

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    iget-object p2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_b
    if-ge p4, p3, :cond_1b

    aget-object p6, p2, p4

    .line 416
    const-string p7, " "

    invoke-virtual {p6, p7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p7

    add-int/2addr p7, p5

    invoke-virtual {p6, p7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p7

    .line 417
    const-string v2, ".so"

    invoke-virtual {p7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->j:Ljava/util/Map;

    invoke-interface {v2, p7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 418
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v2

    const-string v3, "%s [%s::%s]"

    invoke-virtual {v2, p7, v3, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getUuid(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 420
    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/d;->j:Ljava/util/Map;

    invoke-interface {v3, p7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_18
    sget-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->j:Ljava/util/Map;

    invoke-interface {v2, p7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/uqm/crashsight/crashreport/crash/d;->j:Ljava/util/Map;

    invoke-interface {v2, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_c

    .line 426
    :cond_19
    const-string v2, " "

    invoke-virtual {p6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p6, Lcom/uqm/crashsight/crashreport/crash/d;->j:Ljava/util/Map;

    invoke-interface {p6, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "\n"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 424
    :cond_1a
    :goto_c
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "\n"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 p4, p4, 0x1

    goto :goto_b

    .line 429
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 430
    iget-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception p1

    .line 432
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "get UUID failed! Message:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1c
    :goto_e
    return-object v0

    :catchall_1
    move-exception p1

    .line 402
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public static a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/crash/d;
    .locals 1

    .line 112
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/d;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/crashreport/crash/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    .line 115
    :cond_0
    sget-object p0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 528
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v5, p0

    .line 531
    iget-object v6, v5, Lcom/uqm/crashsight/crashreport/crash/d;->e:Landroid/content/Context;

    const-string v7, "crashSight"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 532
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 535
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 536
    array-length v7, v6

    if-nez v7, :cond_1

    goto :goto_2

    .line 539
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 540
    array-length v9, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_5

    aget-object v11, v6, v10

    .line 541
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 542
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_3

    .line 544
    :try_start_1
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_3

    .line 546
    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v15, v3, v13

    const-wide/16 v17, 0x3e8

    .line 547
    div-long v15, v15, v17

    .line 548
    const-string v2, "current time %d trace time is %d s"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v18, v14, v8

    const/4 v8, 0x1

    aput-object v13, v14, v8

    invoke-static {v2, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 549
    const-string v2, "current time minus trace time is %d s"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v8, v14

    invoke-static {v2, v8}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v18, 0x1e

    cmp-long v2, v15, v18

    if-ltz v2, :cond_2

    .line 552
    const-string v2, "current time minus trace time > 30s"

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v2, v8}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    return-object v11

    .line 558
    :catchall_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Trace file that has invalid format: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v2, v11}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 563
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_6
    :goto_4
    move-object/from16 v5, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 843
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 846
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v0

    const-string v1, "%3$s"

    const/4 v2, 0x0

    const-string v3, "libil2cpp.so"

    invoke-virtual {v0, v3, v1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getUuid(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 847
    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 848
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 240
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v0, p0, p1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/d;)V
    .locals 3

    const/4 p0, 0x0

    .line 3245
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "[ExtraCrashManager] Trying to notify CrashSight agents."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3248
    :try_start_0
    const-string v0, "com.uqm.crashsight.agent.GameAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3249
    const-string v1, "com.uqm.crashsight"

    .line 3250
    const-string v2, "sdkPackageName"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4192
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 4193
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 4194
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3251
    :catch_0
    :try_start_2
    const-string v0, "[ExtraCrashManager] CrashSight game agent has been notified."

    new-array v1, p0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 3253
    :catchall_0
    const-string v0, "[ExtraCrashManager] no game agent"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/d;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 37
    const-string v11, "[ExtraCrashManager] Successfully handled."

    const-string v12, "\n"

    if-nez p1, :cond_0

    .line 4454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    :goto_0
    const/4 v14, 0x0

    .line 4458
    :try_start_0
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4459
    const-string v1, "[ExtraCrashManager] There is no remote strategy, but still store it."

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    const/16 v1, 0x8

    move/from16 v2, p2

    if-ne v2, v1, :cond_2

    const/4 v1, 0x5

    const/4 v15, 0x5

    goto :goto_1

    :cond_2
    move v15, v2

    :goto_1
    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v15

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    .line 4466
    invoke-direct/range {v1 .. v8}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xa

    if-eq v15, v2, :cond_a

    if-eqz v9, :cond_9

    .line 4472
    const-string v2, ".txt"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v9, v7, :cond_3

    .line 4473
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "jni_mannual_error_trace_"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-ne v9, v6, :cond_4

    .line 4476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "crashSight_error_minidump_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4477
    const-string v2, ".dmp"

    goto :goto_2

    :cond_4
    if-ne v9, v5, :cond_5

    .line 4479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashSight_StackTrace_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 4482
    :cond_5
    const-string v2, "[traverseAndFindValidTraces] invalid nativeStackType [%d]"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v14

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move-object v3, v2

    .line 4484
    :goto_2
    invoke-direct {v0, v3, v2}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4485
    const-string v3, "traceFile is %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v14

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v2, :cond_9

    if-ne v9, v5, :cond_6

    .line 4488
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 4489
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "System SO infos:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/crashreport/crash/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ak:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-ne v9, v6, :cond_7

    .line 4491
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    goto :goto_3

    .line 4493
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    :goto_3
    const/16 v3, 0xb

    if-ne v15, v3, :cond_9

    if-eqz v10, :cond_9

    .line 4496
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4497
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    .line 4498
    new-array v2, v2, [B

    .line 4500
    :goto_4
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_8

    .line 4501
    invoke-virtual {v4, v2, v14, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 4503
    :cond_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4504
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 4508
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->aj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->al:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->aa:Ljava/lang/String;

    .line 5115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 4509
    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 4510
    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 p1, p3

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v1

    .line 4509
    invoke-static/range {p1 .. p6}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 4511
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const v3, -0x75bcd15

    .line 5212
    invoke-virtual {v2, v1, v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4512
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    goto :goto_5

    .line 4515
    :cond_a
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4520
    :cond_b
    :goto_5
    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 4518
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4520
    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4521
    throw v1
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/d;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7

    .line 37
    const-string v0, "\n"

    const-string v1, "[ExtraCrashManager] Successfully handled."

    if-nez p1, :cond_0

    .line 5734
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    :cond_0
    const/4 v2, 0x0

    .line 5738
    :try_start_0
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5739
    const-string v3, "[ExtraCrashManager] There is no remote strategy, but still store it."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5770
    :cond_1
    new-instance v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v3}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    .line 5771
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v4, v3}, Lcom/uqm/crashsight/crashreport/crash/b;->e(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    const/16 v4, 0xd

    .line 5773
    iput v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    .line 5774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 5775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 5776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 5779
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    .line 5780
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->f()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    .line 5781
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->j()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    .line 5782
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->r()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:J

    .line 5783
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->q()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:J

    .line 5784
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:J

    .line 5785
    sget-object v4, Lcom/uqm/crashsight/proguard/z;->T:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_2

    .line 5786
    sget v4, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    sget-object v5, Lcom/uqm/crashsight/crashreport/crash/c;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/v;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 5789
    :cond_2
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 5790
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 5791
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 5792
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5793
    const-string v4, ""

    if-nez p4, :cond_3

    move-object v5, v4

    goto :goto_0

    :cond_3
    move-object v5, p4

    .line 5796
    :goto_0
    :try_start_1
    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 5797
    iput-object v5, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 5798
    iget-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    and-int/lit8 v4, p6, 0x20

    if-eqz v4, :cond_4

    .line 5800
    sget v4, Lcom/uqm/crashsight/crashreport/crash/c;->c:I

    .line 5801
    invoke-static {v4, v2}, Lcom/uqm/crashsight/proguard/v;->a(IZ)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    .line 5803
    :cond_4
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    .line 5804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    .line 5805
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    .line 5806
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->x()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 5807
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v4, v4, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    .line 5808
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result v4

    iput-boolean v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:Z

    .line 5809
    sget-object v4, Lcom/uqm/crashsight/proguard/z;->at:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5810
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getPthreadKeyCount()I

    move-result v4

    iput v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ah:I

    .line 5814
    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/c;->r()Z

    move-result v4

    if-nez v4, :cond_6

    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_6

    .line 5815
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v4, v3}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 5818
    :cond_6
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ag:Ljava/lang/String;

    .line 5819
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result v4

    iput v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_7

    .line 5821
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 5823
    :cond_7
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_8

    .line 5826
    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->b()[B

    move-result-object p6

    iput-object p6, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    .line 5830
    :cond_8
    iget-object p6, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    if-nez p6, :cond_9

    .line 5831
    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    :cond_9
    if-eqz p5, :cond_a

    .line 5834
    iget-object p6, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-interface {p6, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5744
    :cond_a
    const-string p5, "Jank"

    .line 6115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object p6

    .line 5744
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 5745
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, p5

    move-object p2, p6

    move-object p3, v4

    move-object p4, v5

    move-object p5, v0

    move-object p6, v3

    .line 5744
    invoke-static/range {p1 .. p6}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 5746
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const p2, -0x75bcd15

    .line 6212
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 5747
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, v3, p1, p2, v2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5752
    :cond_b
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 5750
    :try_start_2
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5752
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5753
    throw p0
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    move-object/from16 v0, p5

    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 220
    invoke-static/range {p5 .. p5}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 222
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v4, 0x100000

    if-ge v3, v4, :cond_0

    .line 223
    invoke-static/range {p5 .. p5}, Lcom/uqm/crashsight/proguard/v;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 225
    :cond_0
    const-string v3, "Extra info over limit! (1MB) Will not upload it."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid extra info str: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    move-object v8, v1

    const/4 v10, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v11, p7

    .line 231
    invoke-static/range {v3 .. v11}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v9, p6

    .line 125
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    const/4 v12, 0x0

    if-nez v1, :cond_0

    .line 126
    const-string v0, "[ExtraCrashManager] Extra crash manager has not been initialized."

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/16 v3, 0xe

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1603
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1604
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CUSTOM_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1606
    :cond_1
    const-string v3, "[ExtraCrashManager] Unknown extra crash type: %d"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v12

    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_1

    .line 1597
    :pswitch_0
    const-string v3, "FD_Report"

    goto :goto_0

    .line 1594
    :pswitch_1
    const-string v3, "DUMP"

    goto :goto_0

    .line 1591
    :pswitch_2
    const-string v3, "LOG_STATICS"

    goto :goto_0

    .line 1585
    :pswitch_3
    const-string v3, "OOM"

    goto :goto_0

    .line 1582
    :pswitch_4
    const-string v3, "H5"

    goto :goto_0

    .line 1588
    :cond_2
    const-string v3, "EnterSubMap"

    goto :goto_0

    .line 1600
    :cond_3
    const-string v3, "STUCK"

    goto :goto_0

    .line 1576
    :cond_4
    const-string v3, "LUA"

    goto :goto_0

    .line 1573
    :cond_5
    const-string v3, "JS"

    goto :goto_0

    .line 1579
    :cond_6
    const-string v3, "Unity"

    .line 1610
    :goto_0
    const-string v4, "[ExtraCrashManager] %s Crash Happen"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    move-object v4, v3

    if-nez v4, :cond_7

    return-void

    .line 1615
    :cond_7
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->I:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_8

    .line 1616
    const-string v1, "[ExtraCrashManager] %s(category=%d) report is disabled."

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v4, v3, v12

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 1619
    :cond_8
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->M:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/uqm/crashsight/proguard/v;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1620
    const-string v1, "[ExtraCrashManager] %d,%s report is disabled."

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v12

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_9
    const/16 v3, 0xa

    if-ne v0, v3, :cond_a

    .line 139
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->G:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    .line 140
    const-string v0, "[statics] log statics is closed by cloud"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 145
    :cond_a
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->K:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_b

    .line 146
    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/d;->g:Ljava/util/Random;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 147
    sget-object v6, Lcom/uqm/crashsight/proguard/z;->K:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v6}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v3, v6, :cond_b

    .line 148
    const-string v0, "Do not upload this error,dropped,random=%d,threshold=%d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->K:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v12

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 153
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/crashreport/crash/c;->d(I)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    move-object/from16 v7, p4

    invoke-virtual {v3, v7}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    return-void

    :cond_c
    move-object/from16 v7, p4

    .line 157
    :cond_d
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->U:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 159
    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/d;->i:Ljava/lang/Object;

    monitor-enter v3

    .line 160
    :try_start_0
    sget-wide v10, Lcom/uqm/crashsight/crashreport/crash/d;->h:J

    sub-long v10, v5, v10

    sget-object v8, Lcom/uqm/crashsight/proguard/z;->V:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v8}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v13, v8

    const-wide/16 v15, 0x3e8

    mul-long v13, v13, v15

    cmp-long v8, v10, v13

    if-gez v8, :cond_e

    .line 161
    const-string v0, "[report] Too many errors in %d second(s), dropped."

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->V:Lcom/uqm/crashsight/proguard/z$a;

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 162
    monitor-exit v3

    return-void

    .line 164
    :cond_e
    sput-wide v5, Lcom/uqm/crashsight/crashreport/crash/d;->h:J

    .line 166
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 169
    :cond_f
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v10, 0x1e

    if-ne v9, v2, :cond_10

    .line 170
    sget-wide v2, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    sub-long v2, v5, v2

    cmp-long v8, v2, v10

    if-lez v8, :cond_10

    .line 171
    sput-wide v5, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    .line 172
    const-string v2, "[report] get native stack."

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 173
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->dumpNativeStack()V

    :cond_10
    const/4 v2, 0x3

    if-ne v9, v2, :cond_11

    .line 175
    sget-wide v2, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    sub-long v2, v5, v2

    cmp-long v8, v2, v10

    if-lez v8, :cond_11

    .line 176
    sput-wide v5, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    .line 177
    const-string v2, "[report] get native stack."

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->generateMinidump()V

    :cond_11
    if-ne v9, v1, :cond_12

    .line 180
    sget-wide v1, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    sub-long v1, v5, v1

    cmp-long v3, v1, v10

    if-lez v3, :cond_12

    .line 181
    sput-wide v5, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    .line 182
    const-string v1, "[report] get native stack."

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 183
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->generateStackTrace()V

    .line 186
    :cond_12
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v13

    new-instance v14, Lcom/uqm/crashsight/crashreport/crash/d$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/uqm/crashsight/crashreport/crash/d$2;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/uqm/crashsight/proguard/n;->b(Ljava/lang/Runnable;)Z

    .line 206
    const-string v0, "[report] postCrash end"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 688
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 689
    const-string p0, "[ExtraCrashManager] Extra crash manager has not been initialized."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 692
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 693
    invoke-static {p4}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    :try_start_0
    invoke-static {p4}, Lcom/uqm/crashsight/proguard/v;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 697
    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid extra info str: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p4, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    move-object v8, v0

    .line 702
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object p4

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/d$3;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/uqm/crashsight/crashreport/crash/d$3;-><init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/proguard/n;->b(Ljava/lang/Runnable;)Z

    .line 717
    const-string p0, "[report] postJank end"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Lcom/uqm/crashsight/crashreport/crash/d;
    .locals 1

    .line 37
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 6

    monitor-enter p0

    .line 627
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-lez v0, :cond_0

    .line 628
    monitor-exit p0

    return-void

    .line 630
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/maps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 636
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    .line 639
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 640
    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 643
    const-string v4, "rwx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "r-x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "--x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 644
    :cond_3
    sget-object v4, Lcom/uqm/crashsight/crashreport/crash/d;->k:Ljava/lang/StringBuffer;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const/16 v2, 0x7d0

    if-le v0, v2, :cond_2

    .line 648
    const-string v0, "[getMaps]Error! More than 2000 lines, stop parsing!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 657
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 660
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 662
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 653
    :goto_0
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_6

    .line 657
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 660
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 662
    monitor-exit p0

    return-void

    .line 661
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    if-eqz v2, :cond_7

    .line 657
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v2

    .line 660
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 662
    :cond_7
    :goto_2
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 632
    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CrashSight_StackTrace_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".maps"

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_5

    .line 860
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 865
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    .line 883
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 886
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v1

    .line 870
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 871
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 875
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 883
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 886
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-object v1

    :catchall_0
    move-exception v2

    .line 878
    :try_start_4
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_6

    .line 883
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 886
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_7

    .line 883
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 886
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    .line 889
    :cond_7
    :goto_4
    throw v1

    :cond_8
    :goto_5
    return-object v1
.end method
