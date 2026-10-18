.class public final Lcom/ihoc/mgpa/vendor/utils/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/vendor/utils/p0$c;,
        Lcom/ihoc/mgpa/vendor/utils/p0$a;,
        Lcom/ihoc/mgpa/vendor/utils/p0$b;
    }
.end annotation


# instance fields
.field public a:Lcom/ihoc/mgpa/vendor/utils/o0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/p0$a;->a()Lcom/ihoc/mgpa/vendor/utils/p0$a;

    move-result-object v2

    const-string/jumbo v3, "turbo"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object v5, v6, v0

    const/4 p1, 0x2

    aput-object p2, v6, p1

    const/4 p1, 0x3

    aput-object p0, v6, p1

    invoke-virtual {v2, v3, v6}, Lcom/ihoc/mgpa/vendor/utils/p0$a;->a(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v1, p0, v4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_1
    return-object v1
.end method
