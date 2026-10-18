.class Lcom/ihoc/mgpa/gradish/b1$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field c:Ljava/lang/ref/WeakReference;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/b1;II)V
    .locals 1

    .line 1
    const-string v0, "ThreadObserve"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/b1$a;->d:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/b1$a;->c:Ljava/lang/ref/WeakReference;

    .line 7
    iput p2, p0, Lcom/ihoc/mgpa/gradish/b1$a;->a:I

    .line 8
    iput p3, p0, Lcom/ihoc/mgpa/gradish/b1$a;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/b1$a;->d:Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/b1$a;->d:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/b1$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ihoc/mgpa/gradish/b1;

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v1, p0, Lcom/ihoc/mgpa/gradish/b1$a;->a:I

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/gradish/b1;->a(Lcom/ihoc/mgpa/gradish/b1;I)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/b1;->a(Ljava/util/Map;)V

    .line 11
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/ihoc/mgpa/gradish/b1$a;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
