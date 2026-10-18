.class public Lcom/tencent/tme/live/z0/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/z0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/b1/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/z0/a$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/b1/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/z0/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/z0/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/z0/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/tme/live/z0/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/z0/a$a;->b:Ljava/lang/String;

    return-object p0
.end method
