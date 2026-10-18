.class Lcom/ihoc/tgpatask/transceivertool/util/NetUtil$1;
.super Ljava/util/HashSet;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;
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

    .line 63
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 64
    const-string v0, "huawei"

    invoke-virtual {p0, v0}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil$1;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "honor"

    invoke-virtual {p0, v0}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
