.class public Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;
.super Ljava/lang/Object;
.source "GmeVideoGeneratorConfig.java"


# instance fields
.field private mCompressScale:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field private mOutPath:Ljava/lang/String;

.field private mSourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public getCompressScale()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->mCompressScale:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->getScale()I

    move-result v0

    return v0
.end method

.method public getOutPath()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->mOutPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->mSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public parserGenParam(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->mSourcePath:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getOutPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->mOutPath:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getCompressLevel()Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->mCompressScale:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-void
.end method
