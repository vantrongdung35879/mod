.class public Lcom/tencent/tme/live/d/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/d/b;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Lcom/tencent/tme/live/d/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/d/b$c;->c:Lcom/tencent/tme/live/d/b;

    iput-object p2, p0, Lcom/tencent/tme/live/d/b$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tme/live/d/b$c;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/d/b$c;->c:Lcom/tencent/tme/live/d/b;

    iget-object v1, p0, Lcom/tencent/tme/live/d/b$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/d/b$c;->b:Ljava/io/InputStream;

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/d/b;->a(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
