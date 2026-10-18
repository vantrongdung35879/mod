.class public Lcom/tencent/tme/live/v0/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public static b:Lcom/tencent/tme/live/v0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    return-void
.end method
