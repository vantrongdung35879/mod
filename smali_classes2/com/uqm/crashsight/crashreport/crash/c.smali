.class public final Lcom/uqm/crashsight/crashreport/crash/c;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x5000

.field public static c:I = 0x5000

.field public static d:J = 0x240c8400L

.field public static e:Ljava/lang/String; = null

.field public static f:Z = false

.field public static g:Ljava/lang/String; = null

.field public static h:I = 0x1388

.field public static i:Z = true

.field public static j:Z = false

.field private static m:Lcom/uqm/crashsight/crashreport/crash/c;


# instance fields
.field public final k:Lcom/uqm/crashsight/crashreport/crash/b;

.field private final l:Landroid/content/Context;

.field private final n:Lcom/uqm/crashsight/crashreport/crash/e;

.field private final o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

.field private p:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private q:Lcom/uqm/crashsight/proguard/n;

.field private final r:Lcom/uqm/crashsight/proguard/y;

.field private s:Lcom/uqm/crashsight/CrashSightStrategy$a;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/lang/Boolean;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/uqm/crashsight/proguard/n;ZLcom/uqm/crashsight/CrashSightStrategy$a;)V
    .locals 8

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->t:Ljava/lang/Boolean;

    .line 82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->u:Ljava/lang/Boolean;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->v:Ljava/lang/String;

    const/16 v0, 0x3f

    .line 88
    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->x:Z

    .line 102
    sput p1, Lcom/uqm/crashsight/crashreport/crash/c;->a:I

    .line 103
    invoke-static {p2}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/c;->l:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->p:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    .line 106
    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/c;->q:Lcom/uqm/crashsight/proguard/n;

    .line 107
    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/c;->s:Lcom/uqm/crashsight/CrashSightStrategy$a;

    .line 108
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object v4

    .line 109
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v5

    .line 110
    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/c;->p:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/uqm/crashsight/proguard/l;Lcom/uqm/crashsight/proguard/d;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/CrashSightStrategy$a;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->k:Lcom/uqm/crashsight/crashreport/crash/b;

    .line 112
    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    .line 113
    new-instance p5, Lcom/uqm/crashsight/crashreport/crash/e;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/c;->p:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-direct {p5, p2, v0, v1, p1}, Lcom/uqm/crashsight/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/crashreport/common/info/a;)V

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    .line 114
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/c;->p:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-object v1, p2

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/proguard/n;Z)Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    .line 116
    iput-object p3, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->H:Lcom/uqm/crashsight/crashreport/a;

    .line 118
    const-string p5, "hw_sc.build.platform.version"

    invoke-static {p5}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 119
    const-string v1, "fail"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Harmony version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 122
    :cond_0
    invoke-static {p3, p2}, Lcom/uqm/crashsight/crashreport/common/info/f;->a(Lcom/uqm/crashsight/crashreport/a;Landroid/content/Context;)V

    .line 123
    invoke-static {p2, p1, v0}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;)Lcom/uqm/crashsight/proguard/y;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/c;->r:Lcom/uqm/crashsight/proguard/y;

    if-eqz p4, :cond_1

    const/high16 p1, 0x20000

    .line 125
    sput p1, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->z()V

    return-void
.end method

.method private A()Z
    .locals 1

    .line 3501
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/crashreport/crash/c;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/crash/c;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/c;->m:Lcom/uqm/crashsight/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/uqm/crashsight/CrashSightStrategy$a;)Lcom/uqm/crashsight/crashreport/crash/c;
    .locals 7

    const-class p0, Lcom/uqm/crashsight/crashreport/crash/c;

    monitor-enter p0

    .line 179
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/c;->m:Lcom/uqm/crashsight/crashreport/crash/c;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v4

    const/16 v2, 0x3ec

    move-object v1, v0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/uqm/crashsight/proguard/n;ZLcom/uqm/crashsight/CrashSightStrategy$a;)V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/c;->m:Lcom/uqm/crashsight/crashreport/crash/c;

    .line 183
    :cond_0
    sget-object p1, Lcom/uqm/crashsight/crashreport/crash/c;->m:Lcom/uqm/crashsight/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/c;)Lcom/uqm/crashsight/crashreport/crash/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    return-object p0
.end method

.method public static a(III)V
    .locals 0

    .line 630
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/ae;->a(III)V

    return-void
.end method

.method public static a(Landroid/content/Context;IIJJIZLjava/lang/String;)V
    .locals 0

    .line 623
    invoke-static/range {p0 .. p9}, Lcom/uqm/crashsight/proguard/ad;->a(Landroid/content/Context;IIJJIZLjava/lang/String;)V

    return-void
.end method

.method public static a(IIZ)Z
    .locals 0

    .line 637
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/ae;->a(IIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/crashreport/crash/c;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->l:Landroid/content/Context;

    return-object p0
.end method

.method public static c(I)V
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_1

    .line 606
    sget-object v1, Lcom/uqm/crashsight/proguard/z;->Y:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    shl-int/lit8 v1, p0, 0xa

    .line 607
    sput v1, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logcat Buffer Size set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 610
    :cond_0
    sget-object p0, Lcom/uqm/crashsight/proguard/z;->Y:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p0, p0, 0xa

    sput p0, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    .line 611
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Cloud Control set Logcat Buffer Size to "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/uqm/crashsight/proguard/z;->Y:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 614
    :cond_1
    const-string p0, "Logcat Buffer Size should > 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(I)Z
    .locals 6

    .line 644
    sget-boolean v0, Lcom/uqm/crashsight/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/uqm/crashsight/proguard/z;->J:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_4

    const/16 v2, 0xb

    if-eq p0, v2, :cond_4

    const/16 v2, 0xc

    if-eq p0, v2, :cond_4

    const/16 v2, 0xd

    if-eq p0, v2, :cond_4

    const/16 v2, 0xe

    if-ne p0, v2, :cond_1

    goto :goto_1

    .line 655
    :cond_1
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aJ:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 657
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 658
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p0, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method public static y()V
    .locals 6

    .line 576
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    const-string v1, "GCloudCore,GCloud,MSDK,HttpDNS,TGPA,APM,GEM,TSS,GVoice,TDM,GRobot,Apollo,MKV,PluginCrosCurl"

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 581
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 582
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getGcloudPluginVersion([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 585
    array-length v4, v3

    array-length v5, v1

    if-ne v4, v5, :cond_3

    .line 586
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 587
    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 588
    aget-object v4, v1, v2

    aget-object v5, v3, v2

    invoke-virtual {v0, v4, v5}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private z()V
    .locals 5

    .line 132
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/proguard/d;->a(I)Ljava/util/List;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/proguard/h;

    .line 138
    iget-object v4, v3, Lcom/uqm/crashsight/proguard/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/c;->t:Ljava/lang/Boolean;

    .line 141
    iget-object v4, v3, Lcom/uqm/crashsight/proguard/h;->g:[B

    if-eqz v4, :cond_0

    .line 142
    new-instance v4, Ljava/lang/String;

    iget-object v3, v3, Lcom/uqm/crashsight/proguard/h;->g:[B

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/c;->v:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/proguard/d;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 149
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/proguard/h;

    .line 151
    iget-object v4, v3, Lcom/uqm/crashsight/proguard/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/c;->u:Ljava/lang/Boolean;

    .line 154
    iget-object v4, v3, Lcom/uqm/crashsight/proguard/h;->g:[B

    if-eqz v4, :cond_2

    .line 155
    new-instance v4, Ljava/lang/String;

    iget-object v3, v3, Lcom/uqm/crashsight/proguard/h;->g:[B

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/c;->v:Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 161
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    const/4 v0, 0x0

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initLastCrashedOrAnr failed"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setCrashHandleTimeout(I)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 341
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/crash/c$2;-><init>(Lcom/uqm/crashsight/crashreport/crash/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/crash/e;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V

    .line 198
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V

    const-wide/16 v0, 0xbb8

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/c;->a(J)V

    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .locals 8

    .line 315
    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/c;->q:Lcom/uqm/crashsight/proguard/n;

    new-instance p4, Lcom/uqm/crashsight/crashreport/crash/c$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/uqm/crashsight/crashreport/crash/c$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V

    invoke-virtual {p3, p4}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/crash/c;->x:Z

    return-void
.end method

.method public final declared-synchronized a(ZZZ)V
    .locals 2

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/c;->a()Lcom/uqm/crashsight/crashreport/crash/jni/c;

    move-result-object v0

    .line 3040
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->putNativeCrashTestKeyValue(ZZZ)V

    .line 3041
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(I)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/e;->a()V

    .line 228
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    .line 2243
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/e;->b()V

    .line 236
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/e;->b()V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Lcom/uqm/crashsight/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/e;->a()V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    .line 300
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/y;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->r:Lcom/uqm/crashsight/proguard/y;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/y;->b()Z

    move-result v0

    return v0
.end method

.method public final m()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->checkUploadRecordCrash()V

    return-void
.end method

.method public final n()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->checkUploadMmkvliteRecordCrash()V

    return-void
.end method

.method public final o()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->checkUploadOomMmkvliteRecordCrash()V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 460
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/c;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->removeEmptyNativeRecordFiles()V

    :cond_0
    return-void
.end method

.method public final q()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->x:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 508
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 516
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 524
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->A()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 535
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->A()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 546
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->A()Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 557
    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/c;->w:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->A()Z

    move-result v0

    return v0
.end method
