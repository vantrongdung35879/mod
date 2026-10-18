.class public Lcom/tencent/tme/live/a1/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/a1/a$a;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/tencent/tme/live/a1/a$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/a1/a$a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/a1/a$a$a;->c:Lcom/tencent/tme/live/a1/a$a;

    iput-object p2, p0, Lcom/tencent/tme/live/a1/a$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tme/live/a1/a$a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/a1/a$a$a;->c:Lcom/tencent/tme/live/a1/a$a;

    iget-object v0, v0, Lcom/tencent/tme/live/a1/a$a;->a:Lcom/tencent/tme/live/a1/a;

    iget-object v1, p0, Lcom/tencent/tme/live/a1/a$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/a1/a$a$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/a1/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
