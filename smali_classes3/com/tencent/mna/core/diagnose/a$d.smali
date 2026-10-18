.class Lcom/tencent/mna/core/diagnose/a$d;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/MNAObserver;

.field final synthetic b:Lcom/tencent/mna/KartinRet;


# direct methods
.method constructor <init>(Lcom/tencent/mna/MNAObserver;Lcom/tencent/mna/KartinRet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/a$d;->a:Lcom/tencent/mna/MNAObserver;

    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    const-string v1, "_"

    .line 0
    const-string v2, "OnQueryKartinNotify:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2
    iget-object v4, v0, Lcom/tencent/mna/core/diagnose/a$d;->a:Lcom/tencent/mna/MNAObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 3
    :try_start_1
    iget-object v1, v0, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v5, v1, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    iget v6, v1, Lcom/tencent/mna/KartinRet;->flag:I

    iget-object v7, v1, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    iget v8, v1, Lcom/tencent/mna/KartinRet;->jump_network:I

    iget v9, v1, Lcom/tencent/mna/KartinRet;->jump_signal:I

    iget v10, v1, Lcom/tencent/mna/KartinRet;->jump_router:I

    iget v11, v1, Lcom/tencent/mna/KartinRet;->router_status:I

    iget-object v12, v1, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    iget v13, v1, Lcom/tencent/mna/KartinRet;->jump_export:I

    iget v14, v1, Lcom/tencent/mna/KartinRet;->export_status:I

    iget-object v15, v1, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    iget v2, v1, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    iget v3, v1, Lcom/tencent/mna/KartinRet;->terminal_status:I

    iget-object v0, v1, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v1, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    move/from16 v19, v0

    iget v0, v1, Lcom/tencent/mna/KartinRet;->jump_edge:I

    move/from16 v20, v0

    iget-object v0, v1, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v1, Lcom/tencent/mna/KartinRet;->signal_status:I

    move/from16 v22, v0

    iget v0, v1, Lcom/tencent/mna/KartinRet;->jump_direct:I

    move/from16 v23, v0

    iget v0, v1, Lcom/tencent/mna/KartinRet;->direct_status:I

    move/from16 v24, v0

    iget-object v0, v1, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    move-object/from16 v25, v0

    iget v0, v1, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->wifi_num:I

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v27, v0

    move/from16 v28, v1

    invoke-interface/range {v4 .. v28}, Lcom/tencent/mna/MNAObserver;->OnQueryKartinNotify(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    :catchall_0
    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p0

    :try_start_2
    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->flag:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_network:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_signal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->router_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->export_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->terminal_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_edge:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->signal_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->direct_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/tencent/mna/core/diagnose/a$d;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->wifi_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 32
    const-string v0, "OnQueryKartinNotify not allow"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_1
    move-object v2, v0

    :catchall_2
    :goto_0
    return-void
.end method
