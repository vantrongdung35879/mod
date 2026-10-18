.class Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$1;
.super Ljava/util/HashSet;
.source "GmeVideoEditControlNativeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 34
    const-string v0, "mp3"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$1;->add(Ljava/lang/Object;)Z

    .line 35
    const-string/jumbo v0, "wav"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
