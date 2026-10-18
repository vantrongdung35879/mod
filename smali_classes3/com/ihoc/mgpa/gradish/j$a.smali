.class Lcom/ihoc/mgpa/gradish/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/j;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/j;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/j$a;->a:Lcom/ihoc/mgpa/gradish/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/j;->a(Z)Z

    .line 6
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q0;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q0;->g()Lcom/ihoc/mgpa/gradish/t0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/ihoc/mgpa/gradish/t0;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/j$a;->a:Lcom/ihoc/mgpa/gradish/j;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/j;->a(Lcom/ihoc/mgpa/gradish/j;)V

    .line 16
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/j$a;->a:Lcom/ihoc/mgpa/gradish/j;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/t0;->d:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/gradish/j;->a(Lcom/ihoc/mgpa/gradish/j;Ljava/util/ArrayList;)V

    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/gradish/t0$b;

    if-nez v2, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/j$a;->a:Lcom/ihoc/mgpa/gradish/j;

    invoke-virtual {v3, v2}, Lcom/ihoc/mgpa/gradish/j;->a(Lcom/ihoc/mgpa/gradish/t0$b;)V

    goto :goto_0

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/j$a;->a:Lcom/ihoc/mgpa/gradish/j;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 28
    const-string v1, "[ChannelPDProbe]"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
