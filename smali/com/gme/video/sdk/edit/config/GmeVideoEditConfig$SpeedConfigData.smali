.class public Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;
.super Ljava/lang/Object;
.source "GmeVideoEditConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedConfigData"
.end annotation


# instance fields
.field public speed:F

.field public time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    return-void
.end method
