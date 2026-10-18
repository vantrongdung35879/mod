.class public Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;
.super Ljava/lang/Object;
.source "GmeVideoEditConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatConfigData"
.end annotation


# instance fields
.field public time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

.field public times:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    return-void
.end method
