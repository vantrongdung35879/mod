.class public Lcom/ihoc/mgpa/gradish/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_VendorObserver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/q1;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/ihoc/mgpa/gradish/q1;->a:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setting"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/P;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "haptic_support"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/P;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "am_support"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/P;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "support"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->c(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    const-string v0, "do not need send scene to vendor. id: "

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ihoc/mgpa/gradish/q1;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x14

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 2
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ihoc/mgpa/gradish/q1;->a:J

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->HapticMode:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 6
    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/gradish/q1;->a(Ljava/lang/String;)V

    .line 9
    :cond_1
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneTypeControlOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/K0;->b()Lcom/ihoc/mgpa/gradish/K0;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ihoc/mgpa/gradish/K0;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/gradish/q1;->b:Ljava/lang/String;

    const-string v1, "can\'t get scene type config from cloud, ple check it."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 14
    sget-object v1, Lcom/ihoc/mgpa/gradish/q1;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_4
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/G0;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 25
    :catchall_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/q1;->b:Ljava/lang/String;

    const-string p2, "VendorObserver key data run exception. "

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(I[F)V
    .locals 0

    .line 26
    sget-object p2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/G0;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 5

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ihoc/mgpa/gradish/q1;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 29
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ihoc/mgpa/gradish/q1;->a:J

    .line 33
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/G0;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/m1;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    sget-object p1, Lcom/ihoc/mgpa/gradish/q1;->b:Ljava/lang/String;

    const-string v0, "VendorObserver map data run exception. "

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
