.class Lcom/beetalk/sdk/AuthClient$1;
.super Ljava/lang/Object;
.source "AuthClient.java"

# interfaces
.implements Lcom/beetalk/sdk/ActivityLauncher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/AuthClient;->setContext(Landroidx/appcompat/app/AppCompatActivity;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/AuthClient;

.field final synthetic val$context:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/AuthClient;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$1;->this$0:Lcom/beetalk/sdk/AuthClient;

    iput-object p2, p0, Lcom/beetalk/sdk/AuthClient$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/app/Activity;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$1;->val$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
