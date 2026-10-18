.class Lcom/tencent/mna/MNAPlatformImpl$a$a;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/g2$b;

.field final synthetic b:Lcom/tencent/mna/MNAPlatformImpl$a;


# direct methods
.method constructor <init>(Lcom/tencent/mna/MNAPlatformImpl$a;Lcom/tencent/mna/g2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$a$a;->b:Lcom/tencent/mna/MNAPlatformImpl$a;

    iput-object p2, p0, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/tencent/mna/MNAPlatformImpl$a$a;->b:Lcom/tencent/mna/MNAPlatformImpl$a;

    iget-object v2, v1, Lcom/tencent/mna/MNAPlatformImpl$a;->e:Lcom/tencent/mna/NetworkObserver;

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v0, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget-object v3, v1, Lcom/tencent/mna/g2$b;->a:Ljava/lang/String;

    iget v4, v1, Lcom/tencent/mna/g2$b;->b:I

    iget v5, v1, Lcom/tencent/mna/g2$b;->c:I

    iget v6, v1, Lcom/tencent/mna/g2$b;->d:I

    iget v7, v1, Lcom/tencent/mna/g2$b;->e:I

    iget v8, v1, Lcom/tencent/mna/g2$b;->f:I

    iget v9, v1, Lcom/tencent/mna/g2$b;->g:I

    iget v10, v1, Lcom/tencent/mna/g2$b;->h:I

    iget v11, v1, Lcom/tencent/mna/g2$b;->i:I

    iget v12, v1, Lcom/tencent/mna/g2$b;->j:I

    iget v13, v1, Lcom/tencent/mna/g2$b;->k:I

    iget v14, v1, Lcom/tencent/mna/g2$b;->l:I

    iget v15, v1, Lcom/tencent/mna/g2$b;->m:I

    iget v0, v1, Lcom/tencent/mna/g2$b;->n:I

    move/from16 v16, v0

    iget v0, v1, Lcom/tencent/mna/g2$b;->o:I

    move/from16 v17, v0

    iget v0, v1, Lcom/tencent/mna/g2$b;->p:I

    move/from16 v18, v0

    iget-object v0, v1, Lcom/tencent/mna/g2$b;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v1, Lcom/tencent/mna/g2$b;->r:I

    move/from16 v20, v0

    invoke-interface/range {v2 .. v20}, Lcom/tencent/mna/NetworkObserver;->OnQueryNetworkNotify(Ljava/lang/String;IIIIIIIIIIIIIIILjava/lang/String;I)V

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnQueryNetworkNotify:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget-object v2, v2, Lcom/tencent/mna/g2$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->k:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->n:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->o:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget-object v3, v3, Lcom/tencent/mna/g2$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/tencent/mna/MNAPlatformImpl$a$a;->a:Lcom/tencent/mna/g2$b;

    iget v2, v2, Lcom/tencent/mna/g2$b;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-void
.end method
