.class public Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/apm/EngineMetaInfoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuInfo"
.end annotation


# instance fields
.field private mRender:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    iput-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->setGpuDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public setGpuDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
