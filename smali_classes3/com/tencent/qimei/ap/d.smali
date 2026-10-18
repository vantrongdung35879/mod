.class public final Lcom/tencent/qimei/ap/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ap/d;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/ap/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ap/d;->a:[Ljava/lang/String;

    sget-object v1, Lcom/tencent/qimei/an/a;->a:Lcom/tencent/qimei/an/b;

    iget-object v2, p0, Lcom/tencent/qimei/ap/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/an/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/ap/d;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/ap/d;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "SDK_INIT \uff5c LOCAL_ENC"

    const-string v1, "get the storage QM:%s (appKey: %s)"

    invoke-static {v0, v1, v3}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
