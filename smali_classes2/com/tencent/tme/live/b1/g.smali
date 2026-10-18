.class public Lcom/tencent/tme/live/b1/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/b1/g$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/b1/g$a;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/b1/g;->a:Ljava/util/HashMap;

    return-void
.end method
