.class final Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;
.super Ljava/lang/Object;
.source "CryptoSharedPreferenceV2.kt"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncryptingEditor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00010\u0001H\u0096\u0001J\t\u0010\u0008\u001a\u00020\tH\u0096\u0001J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u001a\u0010\u000e\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u001c\u0010\u0010\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u001a\u0010\u0011\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\"\u0010\u0018\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;",
        "Landroid/content/SharedPreferences$Editor;",
        "delegate",
        "(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Landroid/content/SharedPreferences$Editor;)V",
        "apply",
        "",
        "clear",
        "kotlin.jvm.PlatformType",
        "commit",
        "",
        "encryptValue",
        "",
        "value",
        "",
        "putBoolean",
        "key",
        "putEncryptedValue",
        "putFloat",
        "",
        "putInt",
        "",
        "putLong",
        "",
        "putString",
        "putStringSet",
        "values",
        "",
        "remove",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->this$0:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private final encryptValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->this$0:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->access$encode(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->access$encrypt(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->this$0:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->access$encryptKey(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 247
    iget-object p2, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->encryptValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p1, p0

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    return-object p1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method


# virtual methods
.method public apply()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 273
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 270
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 267
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->putEncryptedValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->this$0:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->access$encryptKey(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    return-object p1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    move-object p1, p0

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method
