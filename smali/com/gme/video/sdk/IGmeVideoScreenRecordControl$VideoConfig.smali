.class public Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;
.super Ljava/lang/Object;
.source "IGmeVideoScreenRecordControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoConfig"
.end annotation


# instance fields
.field public bitRate:I

.field public frameRate:I

.field public recordHeight:I

.field public recordWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
