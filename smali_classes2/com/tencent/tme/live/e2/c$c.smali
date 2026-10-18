.class public Lcom/tencent/tme/live/e2/c$c;
.super Lcom/tencent/tme/live/c2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/c2/e;-><init>(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method


# virtual methods
.method public final i()Ljava/lang/Exception;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
