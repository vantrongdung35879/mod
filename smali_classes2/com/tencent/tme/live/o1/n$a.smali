.class public Lcom/tencent/tme/live/o1/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/o1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/tme/live/o1/n;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/n$a;->c:Lcom/tencent/tme/live/o1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/o1/n$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tme/live/o1/n$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/o1/n$a;->c:Lcom/tencent/tme/live/o1/n;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/o1/n;->a:Lcom/tencent/tme/live/o1/b;

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/o1/n$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/o1/n$a;->b:Ljava/lang/String;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v3, Lcom/tencent/tme/live/o1/l;

    invoke-direct {v3, v0, v1, v2}, Lcom/tencent/tme/live/o1/l;-><init>(Lcom/tencent/tme/live/o1/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/tencent/tme/live/o1/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/o1/a$a;)V

    return-void
.end method
