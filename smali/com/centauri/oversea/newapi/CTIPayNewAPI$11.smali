.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;
.super Ljava/lang/Object;
.source "CTIPayNewAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->initCfgAsync(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Landroid/app/Activity;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iget-object v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$600(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
