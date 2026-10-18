.class public Lcom/tencent/tme/live/j2/f;
.super Lcom/tencent/tme/live/j2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/tme/live/j2/g<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/j2/g;-><init>(Ljava/util/Map;)V

    return-void
.end method
