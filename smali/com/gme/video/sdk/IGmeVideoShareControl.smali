.class public abstract Lcom/gme/video/sdk/IGmeVideoShareControl;
.super Ljava/lang/Object;
.source "IGmeVideoShareControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelGenerateShareLink(Ljava/lang/String;)I
.end method

.method public abstract generateShareLink(Ljava/lang/String;)I
.end method

.method public abstract generateShareLink(Ljava/lang/String;Z)I
.end method

.method public abstract generateShareLink(Ljava/lang/String;ZLjava/lang/String;)I
.end method

.method public abstract setVideoShareCallback(Lcom/gme/video/sdk/IGmeVideoShareControlCallback;)V
.end method
