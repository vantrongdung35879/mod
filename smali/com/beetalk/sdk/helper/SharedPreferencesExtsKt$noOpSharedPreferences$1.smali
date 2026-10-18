.class public final Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$1;
.super Ljava/lang/Object;
.source "SharedPreferencesExts.kt"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt;->noOpSharedPreferences()Landroid/content/SharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0002\u0000\u0007\u0008\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0096\u0002J\r\u0010\u0006\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nH\u0016J\u001a\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u0003H\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u0013H\u0016J\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00162\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0016H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "com/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$1",
        "Landroid/content/SharedPreferences;",
        "contains",
        "",
        "key",
        "",
        "edit",
        "com/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1",
        "()Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;",
        "getAll",
        "",
        "",
        "getBoolean",
        "defValue",
        "getFloat",
        "",
        "getInt",
        "",
        "getLong",
        "",
        "getString",
        "getStringSet",
        "",
        "defValues",
        "registerOnSharedPreferenceChangeListener",
        "",
        "listener",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "unregisterOnSharedPreferenceChangeListener",
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
.field final synthetic $noOpEditor:Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$1;->$noOpEditor:Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$1;->edit()Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public edit()Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$1;->$noOpEditor:Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt$noOpSharedPreferences$noOpEditor$1;

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method
