.class Lcom/centauri/api/UnityPayHelper$1;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$env:Ljava/lang/String;

.field final synthetic val$idc:Ljava/lang/String;

.field final synthetic val$idcInfo:Ljava/lang/String;

.field final synthetic val$req:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$1;->val$idc:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/api/UnityPayHelper$1;->val$env:Ljava/lang/String;

    iput-object p3, p0, Lcom/centauri/api/UnityPayHelper$1;->val$idcInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/centauri/api/UnityPayHelper$1;->val$req:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$1;->val$idc:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/api/UnityPayHelper$1;->val$env:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/api/UnityPayHelper$1;->val$idcInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/centauri/api/UnityPayHelper$1;->val$req:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/centauri/api/UnityPayHelper;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
