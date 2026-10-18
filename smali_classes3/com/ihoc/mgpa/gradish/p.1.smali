.class public Lcom/ihoc/mgpa/gradish/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# static fields
.field public static a:J

.field public static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v4, Lcom/ihoc/mgpa/gradish/p;->a:J

    sub-long/2addr v0, v4

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v4

    iget-object v4, v4, Lcom/ihoc/mgpa/gradish/L;->a:Ljava/lang/String;

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1e

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 12
    sget-wide v0, Lcom/ihoc/mgpa/gradish/p;->b:J

    const-wide/16 v4, 0x3

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x15180

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 25
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    sput-wide v0, Lcom/ihoc/mgpa/gradish/p;->a:J

    .line 26
    sget-wide v0, Lcom/ihoc/mgpa/gradish/p;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/ihoc/mgpa/gradish/p;->b:J

    .line 27
    new-instance v0, Lcom/ihoc/mgpa/gradish/l;

    sget-object v1, Lcom/ihoc/mgpa/gradish/l$c;->b:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-direct {v0, v1}, Lcom/ihoc/mgpa/gradish/l;-><init>(Lcom/ihoc/mgpa/gradish/l$c;)V

    .line 28
    new-instance v1, Lcom/ihoc/mgpa/gradish/p$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/p$a;-><init>(Lcom/ihoc/mgpa/gradish/p;)V

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/l;->a(Lcom/ihoc/mgpa/gradish/A;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->SCENE_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/p;->a()V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadFuncOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "updateBgPreDownloadNewTask is doing "

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->updateBgPreDownloadNewTask()V

    :cond_1
    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    return-void
.end method
