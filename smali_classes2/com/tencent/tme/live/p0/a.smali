.class public Lcom/tencent/tme/live/p0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/v0/g<",
        "Lcom/tencent/tme/live/framework/model/PopTVCfgBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 1
    sput-object p1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    return-void
.end method
